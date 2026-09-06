#requires -Version 7.0
[CmdletBinding()]
param(
    [string]$IndexPath = (Join-Path $PSScriptRoot '../file-index.json')
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Test-NonemptyString($Value) {
    return $Value -is [string] -and -not [string]::IsNullOrWhiteSpace($Value)
}

function Test-RelativePath($Value) {
    if (-not (Test-NonemptyString $Value) -or $Value -match '[\\:*?"<>|]') {
        return $false
    }
    foreach ($segment in $Value.Split('/')) {
        if ($segment -in @('', '.', '..') -or $segment -match '[. ]$') {
            return $false
        }
    }
    return $true
}

try {
    $indexFile = Get-Item -LiteralPath $IndexPath
    $index = Get-Content -LiteralPath $indexFile.FullName -Raw -Encoding utf8 |
        ConvertFrom-Json -AsHashtable

    if ($index -isnot [System.Collections.IDictionary]) {
        throw 'The index must be a JSON object.'
    }
    if ($index['schema_version'] -cne 1) {
        throw 'schema_version must be 1.'
    }
    if (-not (Test-RelativePath $index['pack_root'])) {
        throw 'pack_root must be a relative directory path using forward slashes, without . or .. segments.'
    }
    if ($index['sources'] -isnot [System.Collections.IDictionary] -or $index['sources'].Count -eq 0) {
        throw 'sources must be a nonempty object of source IDs and metadata.'
    }
    if ($index['files'] -isnot [array]) {
        throw 'files must be an array of objects with path and source fields.'
    }

    $packRoot = Join-Path $indexFile.DirectoryName $index['pack_root']
    if (-not (Test-Path -LiteralPath $packRoot -PathType Container)) {
        throw "Pack directory does not exist: $packRoot"
    }
    $packRoot = (Get-Item -LiteralPath $packRoot).FullName

    $problems = [System.Collections.Generic.List[string]]::new()
    $sourceIds = [System.Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
    foreach ($sourceId in $index['sources'].Keys) {
        [void]$sourceIds.Add($sourceId)
        if (-not (Test-NonemptyString $sourceId)) {
            $problems.Add('Source IDs must not be blank.')
        }
        $source = $index['sources'][$sourceId]
        if ($source -isnot [System.Collections.IDictionary]) {
            $problems.Add("Source '$sourceId' must be an object.")
            continue
        }
        foreach ($field in @('archive', 'project_url', 'version')) {
            if (-not (Test-NonemptyString $source[$field])) {
                $problems.Add("Source '$sourceId' requires a nonempty string for '$field'.")
            }
        }
        if (Test-NonemptyString $source['archive']) {
            if ($source['archive'] -match '[/\\:*?"<>|]' -or $source['archive'] -notmatch '(?i)\.zip$') {
                $problems.Add("Source '$sourceId': archive must be an exact ZIP filename, without a directory path.")
            }
        }
        # N/A is an explicit user-supplied absence, not a missing metadata field.
        if ((Test-NonemptyString $source['project_url']) -and $source['project_url'] -cne 'N/A') {
            $projectUri = $null
            if (-not [Uri]::TryCreate($source['project_url'], [UriKind]::Absolute, [ref]$projectUri) -or
                $projectUri.Scheme -notin @('http', 'https') -or
                [string]::IsNullOrWhiteSpace($projectUri.Host)) {
                $problems.Add("Source '$sourceId': project_url must be an absolute HTTP or HTTPS link, or N/A when explicitly supplied by the user.")
            }
        }
    }

    $tracked = [System.Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
    $caseInsensitivePaths = [System.Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
    $entryNumber = 0
    foreach ($entry in $index['files']) {
        $entryNumber++
        if ($entry -isnot [System.Collections.IDictionary]) {
            $problems.Add("File entry $entryNumber must be an object.")
            continue
        }
        $path = $entry['path']
        if (-not (Test-RelativePath $path)) {
            $problems.Add("File entry ${entryNumber}: path must be a relative file path using forward slashes, without . or .. segments.")
            continue
        }
        # Files directly in the pack root are outside provenance tracking.
        if (-not $path.Contains('/')) {
            continue
        }
        if (-not $tracked.Add($path)) {
            $problems.Add("Duplicate file entry: $path")
        }
        elseif (-not $caseInsensitivePaths.Add($path)) {
            $problems.Add("File paths differ only by case: $path")
        }
        if (-not (Test-NonemptyString $entry['source']) -or -not $sourceIds.Contains($entry['source'])) {
            $problems.Add("Unknown or missing source for: $path")
        }
    }

    # Include hidden and Git-ignored files in all subdirectories of the pack.
    $actual = [System.Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
    foreach ($file in Get-ChildItem -LiteralPath $packRoot -File -Recurse -Force) {
        $relativePath = [IO.Path]::GetRelativePath($packRoot, $file.FullName).Replace('\', '/')
        if (-not $relativePath.Contains('/')) {
            continue
        }
        [void]$actual.Add($relativePath)
    }
    foreach ($path in $actual | Sort-Object -CaseSensitive) {
        if (-not $tracked.Contains($path)) {
            $problems.Add("Untracked file: $path")
        }
    }
    foreach ($path in $tracked | Sort-Object -CaseSensitive) {
        if (-not $actual.Contains($path)) {
            $problems.Add("Indexed file is missing: $path")
        }
    }

    if ($problems.Count -gt 0) {
        foreach ($problem in $problems) {
            Write-Output "ERROR: $problem"
        }
        Write-Output "File index validation failed: $($problems.Count) problem(s)."
        exit 1
    }
    Write-Output "File index valid: $($actual.Count) pack files tracked across $($sourceIds.Count) source(s)."
    exit 0
}
catch {
    Write-Output "ERROR: $($_.Exception.Message)"
    exit 1
}

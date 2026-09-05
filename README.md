# Muhsthetic

A Minecraft Java 1.21.1 resource pack compilation. The pack is in
`Muhsthetic 1.21.1 v1.0/`.

## File provenance

[`file-index.json`](file-index.json) tracks every file in the pack's subdirectories.
Files directly in the pack root, such as `pack.mcmeta` and `pack.png`, are excluded
from the index and validation. Paths are relative to `pack_root` and use forward slashes.
Each file refers to a source ID whose entry records the exact ZIP filename,
project page URL, and source pack version. Source details are shared to avoid
repeating them for every file.

All current files originate from **Wild Vanilla 1.0**, distributed as
`Wild_Vanilla v1.0 - 1.21.4.zip`:
[Wild Vanilla project page](https://modrinth.com/resourcepack/wildvanilla).
The index records origin, not a guarantee that a file is still identical to its
source. Optional file `notes` describe local changes to tracked assets.

## Validate the index

Run with PowerShell 7 from the repository root; no additional dependencies are
required:

```powershell
pwsh -NoProfile -File ./scripts/validate-file-index.ps1
```

The script reports untracked pack files, indexed files missing from disk,
duplicate paths, case mismatches, invalid paths, unknown source IDs, and missing
or malformed source details. It includes hidden and Git-ignored files in all
pack subdirectories. Files directly in the pack root are ignored, even if an
old index entry still references them. Exit code `0` means success; `1` means
validation failed. The default
index is resolved relative to the script, so the script also works when invoked
from another directory. Use `-IndexPath` to check a different index; its
`pack_root` is resolved relative to that index file.

Validation is read-only and offline. It checks tracking completeness and
metadata structure, not source archive contents, link availability, or Minecraft
resource dependencies. Keep the index, scripts, and documentation outside the
pack directory.

## Maintaining the index

1. For each new source release, add a distinct entry to `sources` with its exact
   `archive` filename, `project_url`, and `version` as strings. Ask the user for
   any missing project link or version; do not infer them from the ZIP filename.
2. Add a `files` entry for each copied file in the pack's subdirectories, such as
   `{ "path": "assets/minecraft/textures/block/example.png", "source": "example_1_0" }`.
   Keep entries sorted by path. When replacing a file with one from another
   release, update its source ID rather than adding a duplicate path. Preserve
   older source entries while any files still refer to them.
3. Update paths when renaming files and remove entries when deleting files.
   Retain the original source for locally edited files and add `notes` when
   useful. If an asset has no source ZIP or combines multiple sources, agree on
   an index format extension instead of inventing provenance.
4. Run the validator after changing pack files or the index. New files in pack
   subdirectories must be assigned a source explicitly; the validator never
   auto-registers them.

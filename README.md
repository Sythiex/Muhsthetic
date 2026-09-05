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

Current source releases:

| Project | Version | Source ZIP |
| --- | --- | --- |
| [Wild Vanilla](https://modrinth.com/resourcepack/wildvanilla) | `1.0` | `Wild_Vanilla v1.0 - 1.21.4.zip` |
| [Better 3D](https://www.curseforge.com/minecraft/texture-packs/better-3d) | `8.1` | `Better 3D - v8.1.zip` |
| [Hellim's 3D Functional Blocks](https://www.curseforge.com/minecraft/texture-packs/hellims-3d-functional-blocks) | `1.0` | `Hellim's 3D Functional Blocks v1.0.zip` |
| [Vervada's enhanced plants](https://modrinth.com/resourcepack/3d-plants) | `1.0.6` | `Vervada-s-enhanced-plants.zip` |
| [YoJos-LushPacc!](https://www.planetminecraft.com/texture-pack/3d-cave-vines-3d-hanging-roots/) | `10` | `A-YoJos-LushPacc!V10.zip` |
| [xksp lush plants](https://www.planetminecraft.com/texture-pack/xksp-lush-plants/) | `3.2` | `xksp-lush-plants-v3-2-e3480.zip` |

The Better 3D selection covers cake, composter, End Portal Frame, hay bale, loom,
and TNT, including their block state variants and item models. These models use
vanilla textures. The source hay model is also copied to
`assets/minecraft/models/block/hay_block_horizontal.json` so horizontal bales use
the 3D geometry; its index entry records the original source path.

The Hellim's 3D Functional Blocks selection covers anvil (including chipped and
damaged), barrel (closed and open), beacon, crafting table, respawn anchor (charges
0–4), smithing table, and stonecutter. All 14 model files are copied unchanged from the
source and differ from vanilla 1.21.1. They use vanilla blockstates, item models,
textures, and texture animations, so those files are not bundled.

The Vervada's enhanced plants selection contains 54 unchanged source files for
big and small dripleaves, all five living and five dead coral plants, mangrove
propagules, oak/spruce/birch/jungle/acacia/dark oak/cherry saplings, weeping vines,
and potted saplings and propagules (including randomized rotations). Azaleas and
young bamboo are excluded by choice; pale oak is absent from Minecraft 1.21.1.
The source has no replacements for coral blocks or fans, hanging propagules,
dripleaf stems/lower halves, or weeping vine tips; these use vanilla assets.
Existing item models continue to provide inventory appearances. All imported
files differ from vanilla 1.21.1, and none replaced existing compilation files.

Vervada's `flower_pot_cross.json` is omitted: every rendering change in that
shared parent is already overridden by the selected potted models. Their resolved
model data is identical using the vanilla parent, avoiding changes to other
potted plants. The new potted models use the compilation's existing flower-pot
texture. `crimson_fungus_block.png` is included as a weeping-vine dependency.

The YoJos-LushPacc! selection covers azalea, flowering azalea, and both potted
variants: four block models, two item models, and eleven textures. All 17 files
are copied unchanged, differ from vanilla 1.21.1, and were added without file
collisions. Vanilla blockstates select the new models. The potted variants have
their own pot geometry and use `flower_pots.png`, `soil.png`, and `chain_pot.png`;
they do not need a shared flower-pot model replacement. Azalea leaf blocks are
outside this selection.

The xksp lush plants selection covers bamboo, cactus, ordinary vines, and potted
bamboo/cactus, including randomized models and rotations: four blockstates,
31 block models, and 16 textures. All 51 files are copied unchanged, differ from
vanilla 1.21.1, and were added without collisions. The source's bamboo blockstate
is byte-for-byte identical to vanilla and is omitted. Vanilla item models use
the new cactus geometry and vine texture; the bamboo item and young bamboo
shoot keep their vanilla appearances. Vanilla 1.21.1 has no potted vine block.
The potted models inherit vanilla's `flower_pot_cross` but supply their own
geometry and pot textures. Reference checks found no effects on other blocks
or items.

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

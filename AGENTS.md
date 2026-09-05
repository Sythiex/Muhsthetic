# Muhsthetic

## Project context

This repository contains a Minecraft Java resource pack compilation targeting
**1.21.1**. The current selection from Wild Vanilla includes plants, fungi,
cobwebs, lily pads, potted variants, and the menu panorama. Better 3D 8.1 supplies
cake, composter, End Portal Frame, hay bale, loom, and TNT models. Source packs
target different Minecraft versions; use vanilla 1.21.1 when checking
compatibility and dependencies.

## Repository directories

Workspace: `B:\Minecraft Modding\resourcepacks\Muhsthetic`

Pack root: `Muhsthetic 1.21.1 v1.0/` relative to the workspace.
The following paths are relative to the pack root:

| Path | Purpose |
| --- | --- |
| `pack.mcmeta` | Pack description and format metadata. |
| `assets/minecraft/blockstates/` | Block state variants and model selection. |
| `assets/minecraft/models/block/` | Placed block models, including potted plants. |
| `assets/minecraft/models/item/` | Inventory and held item models. |
| `assets/minecraft/textures/block/` | Block textures and textures shared with item models. |
| `assets/minecraft/textures/item/` | Dedicated item textures. |
| `assets/minecraft/textures/gui/title/background/` | Six menu panorama textures, `panorama_0.png` through `panorama_5.png`. |

## Local reference directories

These paths are specific to Sythiex's Windows installation. Check that they
exist before using them on another machine.

- PrismLauncher instance:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base`
- Instance resource packs:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks`
- Wild Vanilla source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Wild_Vanilla v1.0 - 1.21.4.zip`
- Better 3D source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Better 3D - v8.1.zip`
- Vanilla 1.21.1 client archive, containing default assets under `assets/minecraft/`:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\libraries\com\mojang\minecraft\1.21.1\minecraft-1.21.1-client.jar`
- Instance version and loader configuration:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\mmc-pack.json`
- Instance logs, including `latest.log` for resource loading errors:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\logs`

## Working with assets

- Maintain `file-index.json` whenever files in the pack's subdirectories are
  added, replaced, renamed, or removed. It maps these files to a source release
  with the exact ZIP filename, project URL, and source pack version. Files
  directly in the pack root, including `pack.mcmeta` and `pack.png`, are excluded
  from provenance tracking and validation. See `README.md` for the format.
- For future sources, ask the user for any missing project page link or pack
  version before assigning provenance. Do not guess these from archive names.
- Run `pwsh -NoProfile -File ./scripts/validate-file-index.ps1` after changing
  pack files or the index. Resolve untracked files and other validation errors.
- Make compilation edits in the repository pack root. Treat the source ZIP and
  vanilla client JAR as reference archives.
- Before importing files from a new source pack, compare each candidate's
  uncompressed bytes with the vanilla 1.21.1 file at the same resource path in
  the client JAR listed above. Do not copy files that are byte-for-byte identical
  to vanilla or add them to `file-index.json`; rely on vanilla's existing files.
  Apply this check to dependencies as well as selected assets, so vanilla files
  bundled unnecessarily by source pack authors are not carried into this pack.
- Check dependencies against the compilation layered over vanilla 1.21.1.
  Vanilla blockstates and item models can reference replacement assets even
  when the compilation has no corresponding blockstate or item model file.
- Before removing a file, trace blockstate references, model parents, texture
  aliases, particle textures, and item models. Item models may use block textures.
- Preserve referenced filenames, including unusual spellings. Empty models and
  transparent textures may be intentional dependencies.
- There is no build system. Validate edited JSON and resource references;
  distinguish static checks from appearance verified in-game.
- When packaging, place `pack.mcmeta` and `assets/` directly at the ZIP root.
  Repository documentation such as this file belongs outside the pack.

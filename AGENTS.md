# Muhsthetic

## Project context

This repository contains a Minecraft Java resource pack compilation targeting
**1.21.1**. The current selection from Wild Vanilla includes plants, fungi,
cobwebs, lily pads, potted variants, and the menu panorama. Better 3D 8.1 supplies
cake, composter, End Portal Frame, hay bale, loom, and TNT models. Hellim's 3D
Functional Blocks 1.0 supplies anvil, barrel, beacon, crafting table, respawn anchor,
smithing table, and stonecutter models, including damage, open, and charge
variants. Vervada's enhanced plants 1.0.6 supplies big and small dripleaves,
living and dead coral plants, mangrove propagules, the seven named tree saplings,
weeping vines, and the corresponding potted saplings and propagules. Azaleas and
young bamboo are outside the Vervada selection. YoJos-LushPacc! 10 supplies azalea
and flowering azalea models and textures, including their item and potted
variants. xksp lush plants 3.2 supplies bamboo, cactus, ordinary vines, and potted
bamboo/cactus models and textures. Tables 3D (Aug 10, 2026) supplies enchanting
table and fletching table models and the enchanting table's side/top textures.
3D Amethysts 1 supplies the budding amethyst model and the textures for block of
amethyst and budding amethyst. Actually 3D Plants 1.1 supplies Nether Sprouts and
potted warped roots models, plus the dedicated potted warped roots texture.
Regular warped roots are reserved for a later source.
Refined Redstone 1.2 supplies observer models and textures, normal/sticky piston
head models, and piston textures. Its short piston heads remain vanilla, and its
observer glow uses `light_emission`, which vanilla 1.21.1 does not support.
Radiant Redstone 1.4 supplies the redstone wire blockstate, three models, and
their shared texture. Its models omit particle textures; this source issue is
preserved and recorded in the index.
3D crops Revamped 3 supplies Nether Wart models for all growth stages and their
five textures. Vanilla selects the models; the mature model retains one
undefined texture reference on a stem face enclosed by its cap.
Actually 3D Workbenches 1.0 supplies Crafter models and three textures, covering
all orientations and crafting/triggered states through vanilla's blockstate and
model inheritance. Its crafting table and other workbenches are outside this
selection.
Better Seagrass 1.0.1 supplies seagrass and both tall seagrass models, plus their
shared base texture. They use vanilla animations and retain eight undefined
texture references on zero-area faces, recorded in the index.
Better stations (May 8, 2022) supplies the Cartography Table model and its main
and particle textures. The source's unreferenced globe texture is omitted.
Bushy pink petals, wildflowers & leaf litter 1.0.1 supplies four Pink Petals
models and their shared texture. Vanilla selects all amounts and orientations;
the source's optional Respackopts toggles are omitted.
Cave Vines 16x 1 supplies cave vine tip/body models with randomized berries,
their blockstates and textures, and the glow berries item model and textures.
Its OptiFine emissive setting currently matches only glow berries; the extra
glow requires compatible emissive-texture support. Cave Vines 16x Complementary
Shaders Fix 1 supplies only five replacement textures. The other fourteen assets
remain attributed to `cave_vines_16x_1`, including both blockstates and the glow
berries item model. Keep `"credit": "Made by Ensis"` inside those three JSON
objects. Their index notes record moving the original source's trailing credits
into valid JSON fields without changing rendering data.
3D Amethyst 1.0 supplies small, medium, and large amethyst bud and cluster block
and item models, the calibrated sculk sensor block model, and their shared
amethyst texture. Vanilla selects all facing directions and sensor phases.
This is a separate source from `3d-amethysts.zip`, which supplies the solid
amethyst blocks above.
Cuter Cocoa 1.2 supplies the cocoa blockstate, fifteen models across all three
growth stages, and six textures. Six models have their unsupported +30/-30 degree
element rotations adjusted to +22.5/-22.5 for vanilla 1.21.1; index notes record
these changes. The cocoa beans item uses vanilla assets.
Flora Formae 1.4 supplies the chorus plant blockstate, randomized chorus leaf
models, living/dead chorus flower models, and four leaf/petal textures. All
fourteen files are copied unchanged; remaining dependencies use vanilla assets.
Montana's Bushier Kelp 2.0.1 supplies the kelp plant blockstate, six kelp/tip
models, and an animated side texture. Nine files are copied unchanged; the five
plant models retain 124 undefined texture references on zero-area faces,
recorded in the index. The kelp item uses vanilla assets.
Nature rework V2 supplies pointed dripstone models and textures, its item
texture, and all four sweet berry bush growth stages with their shared model.
All 27 files are copied unchanged. Vanilla blockstates select the models;
the source has no replacement for the Sweet Berries item.
Rad's Lush Foliage 1.0.4 supplies the Crimson Roots model and its shared
`cross_foliage` parent, both copied unchanged. Only placed Crimson Roots are
affected; its texture, item, and potted variant continue using existing assets.
Source packs target different Minecraft versions; use vanilla 1.21.1 when
checking compatibility and dependencies.

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
- Hellim's 3D Functional Blocks source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Hellim's 3D Functional Blocks v1.0.zip`
- Vervada's enhanced plants source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Vervada-s-enhanced-plants.zip`
- YoJos-LushPacc! source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\A-YoJos-LushPacc!V10.zip`
- xksp lush plants source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\xksp-lush-plants-v3-2-e3480.zip`
- Tables 3D source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\3D Tables.zip`
- 3D Amethysts source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\3d-amethysts.zip`
- Actually 3D Plants source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\§f§lActually §6§l3D §r§aPlants§7.zip`
- Refined Redstone source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Refined Redstone v1.2.zip`
- Radiant Redstone source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\radiant-redstone.zip`
- 3D crops Revamped source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\3D crops Revamped.zip`
- Actually 3D Workbenches source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\§f§lActually §6§l3D §r§2Workbenches§7.zip`
- Better Seagrass source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Better seagrass.zip`
- Better stations source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Better stations.zip`
- Bushy pink petals, wildflowers & leaf litter source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Bushy pink petals, wildflowers  leaf litter.zip`
- Cave Vines 16x source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\cave-vines-16x.zip`
- Cave Vines 16x Complementary Shaders Fix source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Cave Vines 16x Complementary Shaders Fix v1.zip`
- 3D Amethyst source archive (buds, cluster, and calibrated sculk sensor):
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\3D Amethyst - MC1.21.x.zip`
- Cuter Cocoa source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Cuter Cocoa v1.2.zip`
- Flora Formae source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Flora Formae 1.4.zip`
- Montana's Bushier Kelp source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\bushy_kelp.zip`
- Nature rework V2 source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\nature-rework-v2.zip`
- Vanilla 1.21.1 client archive, containing default assets under `assets/minecraft/`:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\libraries\com\mojang\minecraft\1.21.1\minecraft-1.21.1-client.jar`
- Rad's Lush Foliage source archive:
  `C:\Users\Sythiex\AppData\Roaming\PrismLauncher\instances\1.21.1 Base\minecraft\resourcepacks\Rad's Lush Foliage.zip`
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
  If the user explicitly supplies `N/A` for the link, record `project_url` as
  `"N/A"`; do not use it as a substitute for asking about missing metadata.
- Run `pwsh -NoProfile -File ./scripts/validate-file-index.ps1` after changing
  pack files or the index. Resolve untracked files and other validation errors.
- Make compilation edits in the repository pack root. Treat the source ZIP and
  vanilla client JAR as reference archives.
- Ask the user about file collisions before replacing existing compilation
  assets with files from another source pack.
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

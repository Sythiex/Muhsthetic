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
| [Tables 3D - Heycronus](https://www.curseforge.com/minecraft/texture-packs/tables-3d-heycronus) | `Aug 10, 2026` | `3D Tables.zip` |
| [3D Amethysts](https://www.planetminecraft.com/texture-pack/3d-amethysts/) | `1` | `3d-amethysts.zip` |
| [Actually 3D Plants](https://modrinth.com/resourcepack/actually-3d-plants) | `1.1` | `§f§lActually §6§l3D §r§aPlants§7.zip` |
| [Refined Redstone](https://www.curseforge.com/minecraft/texture-packs/refined-redstone) | `1.2` | `Refined Redstone v1.2.zip` |
| [Radiant Redstone](https://www.curseforge.com/minecraft/texture-packs/radiant-redstone) | `1.4` | `radiant-redstone.zip` |
| [3D crops Revamped](https://modrinth.com/resourcepack/3d-crops) | `3` | `3D crops Revamped.zip` |
| [Actually 3D Workbenches](https://www.curseforge.com/minecraft/texture-packs/actually-3d-workbenches) | `1.0` | `§f§lActually §6§l3D §r§2Workbenches§7.zip` |

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

The Tables 3D selection contains four unchanged source files: enchanting table
and fletching table block models, plus the enchanting table's side and top
textures. All four differ from vanilla 1.21.1 and were added without collisions.
The three source fletching-table textures are byte-for-byte identical to vanilla
and are omitted. Vanilla blockstates and item models select both new models;
the enchanting table's animated book uses vanilla assets. Reference checks found
no effects on other blocks or items.

The source enchanting-table model retains 41 faces using the undefined texture
alias `#missing`. Static geometry checks place all of those faces inside adjoining
model parts; they are not missing source image files. This upstream issue is
recorded in the index, and the model is preserved unchanged. All other selected
texture references resolve. Appearance has not been verified in-game.

The 3D Amethysts selection contains three unchanged source files: the budding
amethyst block model and textures for block of amethyst and budding amethyst.
All three differ from vanilla 1.21.1 and were added without collisions. Vanilla
blockstates and item models select these assets; block of amethyst retains its
vanilla cube geometry. The source's separate amethyst buds and cluster assets
are outside this selection and are not dependencies. Static checks found no
missing references, incompatible model geometry, or effects on other blocks or
items. Appearance has not been verified in-game.

The Actually 3D Plants selection contains three unchanged source files: Nether
Sprouts and potted warped roots block models, plus `warped_roots_pot.png`. All
three differ from vanilla 1.21.1 and were added without collisions. Vanilla
blockstates select both models. The models use vanilla Nether Sprouts and dirt
textures and the compilation's existing flower-pot texture. Item appearances
and regular warped roots remain unchanged; regular warped roots are reserved
for a later source. Static checks found no missing references,
incompatible model geometry, or effects on other blocks or items. Appearance
has not been verified in-game.

The Refined Redstone selection contains 19 unchanged source files: observer
off/on models, normal and sticky piston head models, 12 observer textures, and
three piston textures (`piston_arm.png`, `piston_bottom.png`, and
`piston_side_sticky.png`). All 19 differ from vanilla 1.21.1 and were added without
collisions. Vanilla blockstates and item models select the replacements. Piston
bases and inventory models use the new bottom texture; the source supplies no
replacement base geometry or short piston heads, so the short heads used during
movement retain their vanilla appearance. Static checks covered all 60 block
state variants and found no effects on other blocks or items.

The powered observer uses `light_emission` on 13 overlay elements. This field was
introduced in [Minecraft 1.21.2](https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21-2),
so these overlays do not become full-bright in vanilla 1.21.1. The source ZIP has
no OptiFine emissive configuration to import. The same model contains 10 faces
using undefined `#missing`: eight have zero area, and two are inward-facing
backs of the eye overlays immediately in front of the solid body. These source
limitations are recorded in the index; all other selected texture references
resolve, and the geometry passes 1.21.1 static checks. Appearance and piston
movement have not been verified in-game.

The Radiant Redstone selection contains five unchanged source files: the redstone
wire blockstate, three models (`redstone/doct`, `redstone/wire`, and
`redstone/wall`), and `redwire.png`. All five differ from vanilla 1.21.1 and were
added without collisions. Static checks covered all 1,296 combinations of the
four connection properties and power levels 0–15, including rotated connections
and upward runs. All model faces retain power tinting. The redstone dust item
uses vanilla assets, and reference checks found no effects on other blocks or
items. The source's emissive textures and OptiFine configuration belong to other
redstone components and are not dependencies of the wire.

All three wire models omit a `particle` texture and have no parent supplying one.
Vanilla 1.21.1 resolves their particle sprite to the missing texture, so breaking
particles are expected to show that texture. This source issue is preserved and
recorded in the index. All face texture references resolve, and the geometry
passes 1.21.1 static checks. Appearance has not been verified in-game.

The 3D crops Revamped selection contains eight unchanged source files for Nether
Wart: three growth-stage models and five textures. All eight differ from vanilla
1.21.1 and were added without collisions. Vanilla's blockstate selects stage 0
at age 0, stage 1 at ages 1–2, and stage 2 at age 3. The source blockstate is
omitted because it differs only in formatting and omitted `minecraft:` model
namespaces. The Nether Wart item uses vanilla assets. Static checks covered all
four ages and found no effects on other blocks or items.

The mature model retains one face referencing undefined `#missing`: the upward
face of its ninth element, a stem, is fully enclosed by the adjoining cap in
static geometry checks. This source issue is recorded in the index. All other
face and particle texture references resolve, and the geometry passes 1.21.1
static checks. Appearance has not been verified in-game.

The Actually 3D Workbenches selection contains six unchanged source files for
the Crafter: `crafter`, `crafter_crafting`, and `crafter_crafting_triggered` block
models, plus `crafter_top_triggered.png`, `crafter_west.png`, and
`crafter_west_triggered.png`. All six differ from vanilla 1.21.1 and were added
without collisions. Vanilla's blockstate and item model select these assets;
the vanilla `crafter_triggered` model inherits the new base geometry and applies
its triggered textures. Static checks covered all 48 combinations of the 12
orientations and crafting/triggered states, plus the inventory model. All face
and particle texture references resolve, and the geometry passes 1.21.1 checks.
Reference checks found effects only on the Crafter block and item; the existing
crafting table is unaffected. Appearance has not been verified in-game.

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

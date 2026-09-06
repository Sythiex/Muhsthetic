# Muhsthetic

A Minecraft Java 1.21.1 resource pack compilation. The pack is in
`Muhsthetic 1.21.1 v1.0/`.

## File provenance

[`file-index.json`](file-index.json) tracks every file in the pack's subdirectories.
Files directly in the pack root, such as `pack.mcmeta` and `pack.png`, are excluded
from the index and validation. Paths are relative to `pack_root` and use forward slashes.
Each file refers to a source ID whose entry records the exact ZIP filename,
project page URL, and source pack version. If the user explicitly supplies
`N/A` for the link, `project_url` stores that exact string. Source details are
shared to avoid repeating them for every file.

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
| [Better Seagrass](https://modrinth.com/resourcepack/better-seagrass) | `1.0.1` | `Better seagrass.zip` |
| [Better stations](https://www.curseforge.com/minecraft/texture-packs/better-stations) | `May 8, 2022` | `Better stations.zip` |
| [Bushy pink petals, wildflowers & leaf litter](https://www.curseforge.com/minecraft/texture-packs/bushy-pink-petals-wildflowers-leaf-litter) | `1.0.1` | `Bushy pink petals, wildflowers  leaf litter.zip` |
| [Cave Vines 16x](https://www.planetminecraft.com/texture-pack/cave-vines-16x/) | `1` | `cave-vines-16x.zip` |
| Cave Vines 16x Complementary Shaders Fix (project link: `N/A`) | `1` | `Cave Vines 16x Complementary Shaders Fix v1.zip` |
| [3D Amethyst](https://modrinth.com/resourcepack/3d-amethyst) | `1.0` | `3D Amethyst - MC1.21.x.zip` |
| [Cuter Cocoa](https://www.curseforge.com/minecraft/texture-packs/cuter-cocoa) | `1.2` | `Cuter Cocoa v1.2.zip` |
| [Flora Formae](https://modrinth.com/resourcepack/flora-formae) | `1.4` | `Flora Formae 1.4.zip` |
| [Montana's Bushier Kelp](https://modrinth.com/resourcepack/montanas-bushier-kelp) | `2.0.1` | `bushy_kelp.zip` |
| [Nature rework V2](https://www.planetminecraft.com/texture-pack/nature-rework-v2/) | `2` | `nature-rework-v2.zip` |
| [Rad's Lush Foliage](https://modrinth.com/resourcepack/rads-lush-foliage) | `1.0.4` | `Rad's Lush Foliage.zip` |
| Wild Vanilla Glow Lichen Complementary Shaders Fix (project link: `N/A`) | `1` | `Wild Vanilla Glow Lichen Complementary Shaders Fix v1.zip` |
| [XeKr flowers leaves model pack](https://www.curseforge.com/minecraft/texture-packs/xekr-flowers-leaves-model-pack) | `1.1` | `XeKr flowers leaves model pack19plus1.1.zip` |
| [Improved bamboo](https://modrinth.com/resourcepack/improved-bamboo) | `1.0 full pack` | `better bamboo.zip` |
| [Better Crops 3D 16x With tall wheat](https://www.planetminecraft.com/texture-pack/better-crops-3d-16x-with-tall-wheat/) | `Update #3` | `better-crops-3d-16x-with-tall-wheat.zip` |

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
bamboo/cactus/Crimson Roots, including randomized models and rotations: four
blockstates, 32 block models, and 18 textures. All 54 files are copied unchanged, differ from
vanilla 1.21.1, and were added without collisions. The source's bamboo blockstate
is byte-for-byte identical to vanilla and is omitted. Vanilla item models use
the new cactus geometry and vine texture; the bamboo item and young bamboo
shoot keep their vanilla appearances. Vanilla 1.21.1 has no potted vine block.
The potted models inherit vanilla's `flower_pot_cross` but supply their own
geometry and pot textures. Reference checks found no effects on other blocks
or items.

Potted Crimson Roots adds its model, `crimson_roots_pot.png`, and `pot_3d7.png`
under the existing xksp source entry. Both textures are 16-by-16. Vanilla's
blockstate selects the model, and its inherited dependencies resolve through
the existing compilation and vanilla 1.21.1. Static geometry, face/particle
texture, PNG integrity, and reverse dependency checks passed; only Potted
Crimson Roots is affected. Appearance has not been verified in-game.

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

The Better Seagrass selection contains four unchanged source files: seagrass,
tall seagrass bottom, and tall seagrass top models, plus their shared
`seagrass_bottom.png` base texture. All four differ from vanilla 1.21.1 and were
added without collisions. Vanilla blockstates select the models, which use
vanilla animated seagrass textures alongside the new static base texture. The
seagrass item uses vanilla assets. The source's axolotl-bucket models and
`desktop.ini` are unrelated and are excluded. Static checks covered ordinary
seagrass and both tall halves and found no effects on other blocks or items.

The seagrass and tall seagrass bottom models each retain four faces referencing
undefined `#missing`. All eight are zero-area side faces of their horizontal
base planes. This source issue is recorded in the index; all other face and
particle texture references resolve, and the geometry passes 1.21.1 static
checks. Appearance has not been verified in-game.

The Better stations selection contains three unchanged source files: the
Cartography Table block model, `cartography_table.png`, and
`cartography_table_particle.png`. All three differ from vanilla 1.21.1 and were
added without collisions. Vanilla's blockstate and item model select the new
geometry and textures. The source's `cartography_globe.png` is unreferenced by
any source model and is omitted. Static checks found no missing face or particle
texture references, incompatible model geometry, or effects on other blocks or
items. Appearance has not been verified in-game.

The Bushy pink petals, wildflowers & leaf litter selection contains five unchanged
source files: `pink_petals_1` through `pink_petals_4` block models and their shared
`pink_petals.png` block texture. All five differ from vanilla 1.21.1 and were added
without collisions. Vanilla's multipart blockstate adds the appropriate model
parts for all 16 combinations of flower amounts 1–4 and the four facing directions.
The Pink Petals item uses vanilla assets. Wildflowers and leaf litter are outside
this selection and are not dependencies. The four `.json.rpo` sidecars and
`respackopts.json5` only provide optional model toggles and are omitted from this
fixed selection. Static checks found no missing face or particle texture
references, incompatible model geometry, or effects on other blocks or items.
Appearance has not been verified in-game.

The Cave Vines 16x selection includes all 19 resource files related to cave vines
and glow berries: two blockstates, eight block models, one item model, seven
textures, and an OptiFine emissive configuration. The only omitted source files
are `desktop.ini`, `pack.mcmeta`, and `pack.png`. All imported files differ from
vanilla 1.21.1. Each vine section has three
equally weighted models when bearing berries and one model without berries.
The glow berries item uses a separate berry-only particle texture.

The Complementary Shaders Fix supplies five replacement textures: the four
`cave_vines`/`cave_vines_plant` block textures (including their `_lit` variants)
and the glow berries item texture. All five differ from the original ZIP and
match the fix ZIP exactly. The other fourteen assets retain their original
`cave_vines_16x_1` provenance, including both blockstates and the glow berries
item model, which match the compilation's original import with its JSON repairs.
These three files keep `"credit": "Made by Ensis"` inside their JSON objects;
their index notes record moving the original ZIP's trailing attribution into
valid JSON fields. The fix's root metadata is excluded, and its project link is
recorded as the user-supplied `N/A`.

The included `optifine/emissive.properties` uses the `_e` suffix, which matches
only the new glow berries item texture in the current compilation. This extra
glow requires OptiFine or compatible emissive-texture support; it is separate
from the berry-bearing blocks' normal light emission. See the
[OptiFine emissive specification](https://github.com/sp614x/optifine/blob/master/OptiFineDoc/doc/emissive.properties).
Static checks covered all eight block model choices and the item model, with
no missing face or particle texture references, incompatible model geometry,
or effects on unrelated block/item models. Appearance and emissive rendering
have not been verified in-game, including the Complementary Shaders fix.

The 3D Amethyst 1.0 selection includes all ten asset files in its source ZIP:
five block models for small/medium/large amethyst buds, amethyst cluster, and
calibrated sculk sensor; four bud/cluster item models; and the shared 16-by-16
`amethyst_cluster_dfx.png` texture. Only `pack.mcmeta`, `pack.png`, and
`Selected Packs.txt` are omitted. All ten files are copied unchanged, including
their model credits, differ from vanilla 1.21.1, and were added without collisions.
This source is separate from the earlier `3d-amethysts.zip` selection for solid
amethyst blocks.

Vanilla blockstates select all six bud/cluster facing directions and all four
sensor orientations across inactive, active, and cooldown phases. Vanilla's
sensor child models inherit the new geometry and retain their appropriate
tendril textures; its item model also inherits the replacement. Static checks
covered all 36 model selections and the five item models, with no missing face
or particle texture references, incompatible geometry, or effects on unrelated
blocks or items. Appearance has not been verified in-game.

The Cuter Cocoa selection includes all 22 asset files in its source ZIP: one
blockstate, fifteen block models, and six 16-by-16 textures. Only `pack.mcmeta`
and `pack.png` are omitted. All source assets differ from vanilla 1.21.1, and
none collided with existing compilation files. Each of the three growth stages
has five randomized appearances with weights 1, 1, 2, 2, and 2, covering all four
facing directions. The cocoa beans item uses vanilla assets.

The base and `_alt1` models for each stage contain unsupported +30/-30 degree
Y rotations on their first two elements. These twelve angles are adjusted to
+22.5/-22.5 degrees, the nearest values accepted by vanilla 1.21.1; see the
[1.21.1 model specification](https://docs.neoforged.net/docs/1.21.1/resources/client/models/).
The six index entries record this compatibility adjustment. Every other source
byte is preserved, including model credits; the remaining sixteen files are
copied unchanged. Static checks covered all twelve age/facing combinations and
60 model choices, with no missing face or particle textures, remaining
incompatible geometry, or effects on unrelated blocks or items. Appearance,
including the adjusted rotations, has not been verified in-game.

The Flora Formae selection contains fourteen unchanged source files for Chorus
Plant and Chorus Flower: one plant blockstate, nine block models, and four
16-by-16 leaf/petal textures. The models include a shared bushy flower parent,
living/dead flower variants, and horizontal/vertical chorus leaves with their
parents. All fourteen differ from vanilla 1.21.1 and were added without collisions.

The plant's multipart blockstate retains vanilla branch geometry and adds
randomized leaves where the relevant sides are unconnected. Vanilla's flower
blockstate selects the living model at ages 0–4 and the dead model at age 5;
the flower item inherits the living model. Other textures and the plant item
use vanilla assets. The source's other plants, optional Respackopts configuration,
and sunflower-only version overlay are outside this selection.

Static checks covered all 64 plant connection combinations, all six flower ages,
and the flower item model. No missing face or particle textures, incompatible geometry,
or effects on unrelated blocks or items were found. Appearance has not been
verified in-game.

The Montana's Bushier Kelp selection includes nine unchanged source files: the
kelp plant blockstate, one kelp tip model, five plant models, and a shared side
texture with animation metadata. The 32-by-1056 texture contains 33 square frames
displayed for two ticks each. The plant blockstate selects seventeen weighted
model/rotation choices; vanilla's kelp blockstate selects the new tip model for
every age. The core kelp textures and animations, and the kelp item, use vanilla
assets. All nine imported files differ from vanilla 1.21.1, with no collisions.

The five plant models retain 124 undefined `#missing` references, all on
zero-area faces; individual counts are recorded in the index. Visible faces and
block particle textures resolve correctly, and model geometry uses supported
1.21.1 coordinates and rotations. The source's five unrelated axolotl bucket
models, `desktop.ini`, and root metadata/icon are omitted. Static dependency,
model selection, PNG integrity, and animation checks passed, with no effects on
unrelated blocks or items. Appearance has not been verified in-game.

The Nature rework V2 selection includes 27 unchanged source files: seven pointed
dripstone models, ten dripstone block textures, the dripstone item texture,
four sweet berry bush stage models, their shared `berry_cross.json` parent,
and four bush textures. All differ from vanilla 1.21.1, with no collisions.
The dripstone block textures are 64-by-32, the bush textures are 16-by-26,
and the item texture is 16-by-16; none has animation metadata.

Vanilla's blockstates select all five dripstone thicknesses in both vertical
directions, for both waterlogged states, and all four bush ages. Vanilla's
dripstone base/frustum/middle models inherit the replacement shared parent;
the imported tip and merged-tip models use dedicated parents. The dripstone
item uses its new texture through vanilla's item model. This source provides
no replacement for the Sweet Berries item, which retains vanilla assets.
Other source assets and its unrelated OptiFine emissive configuration are omitted.

Static checks covered all twenty dripstone states, four bush ages, both item
models, and all fifteen PNGs. No missing face or particle textures, incompatible
geometry, or effects on unrelated blocks or items were found. Appearance has
not been verified in-game.

The Rad's Lush Foliage selection includes two unchanged source models:
`crimson_roots.json` and its shared `cross_foliage.json` parent. Both differ from
vanilla 1.21.1 and were added without collisions. The parent adds four angled
planes around the central crossed planes, using the existing Crimson Roots
texture. Vanilla's blockstate selects the replacement model.

Rad's source has no replacement for the Crimson Roots item or potted variant;
the item uses existing assets, and xksp supplies the potted variant. Although other plants in Rad's source use
the shared parent, none of those models is imported, and a reverse dependency
check confirms that only placed Crimson Roots are affected. Static checks found
no missing face or particle textures or incompatible geometry. The source's
model credit is preserved. Appearance has not been verified in-game.

Wild Vanilla Glow Lichen Complementary Shaders Fix 1 replaces only
`assets/minecraft/textures/block/glow_lichen.png`, copied unchanged from the fix
ZIP and attributed to its source entry with project URL `N/A`. Comparing the
archives found that the blockstate and block/item models are byte-for-byte
identical to Wild Vanilla 1.0; they retain their original files, credits, and
provenance. The fix pack's root metadata and icon are omitted.

The replacement texture differs from vanilla 1.21.1 and retains its original
32-by-32 dimensions. PNG integrity and model texture-reference checks passed;
all other compilation asset bytes are preserved. The Complementary shader
appearance has not been verified in-game.

The XeKr flowers leaves model pack selection contains twenty unchanged files
for oak, spruce, birch, jungle, acacia, and dark oak logs: six blockstates,
twelve branch variant models, and two shared parent models. These are all the
source's log assets, differ from vanilla 1.21.1, and were added without collisions.
They use vanilla log textures. The source has no replacements for stripped logs,
all-bark wood, mangrove/cherry logs, or Nether stems/hyphae.

Each upright log has nine weighted choices: the vanilla model at weight 40,
and two branch models at four rotations each with weight 1. Branch variants
therefore account for one sixth of the selection weight. Horizontal logs and
item models retain their vanilla appearances. Static checks covered all eighteen
axis states, 66 model choices, and six item models, with no effects on unrelated
blocks or items and no incompatible geometry.

Both shared parents incorrectly set `particle` to the nonexistent `block/end`
texture instead of the `#end` alias. This source issue is preserved and noted in
their index entries; all twelve branch models inherit it. Their `end` and `side`
texture placeholders are overridden by the species models, and all visible
faces resolve correctly. Appearance has not been verified in-game.

The Improved bamboo selection contains two unchanged files for Bamboo Shoots:
`models/block/bamboo_sapling.json` and `textures/block/bamboo_stage0.png`.
Both differ from vanilla 1.21.1 and were added without collisions. The source's
`bamboo_singleleaf.png` dependency is byte-for-byte identical to vanilla and is
omitted. Vanilla's bamboo sapling blockstate selects the model. Dependency checks
confirm that only Bamboo Shoots are affected; mature bamboo, potted bamboo, and
the bamboo item keep their existing assets. Other source files are outside the
selection and were not imported.

Static checks passed for the model's ten elements, sixty faces, supported
rotations, particle texture, and the 16-by-16 PNG's integrity. The source model
retains fifteen undefined `#missing` references: six on zero-area leaf edges,
six on an enclosed stem cuboid, two on internal stem bottoms, and one on the
base underside against its supporting block. These are recorded in the index;
visible outer faces resolve correctly. Appearance has not been verified in-game.

The Better Crops 3D 16x With tall wheat selection contains 21 files: the wheat
blockstate, eight growth-stage models, two shared parent models, eight crop
textures, and wheat and wheat seed item textures. Stages zero through four use
the normal parent and 16-by-16 textures; stages five through seven use the tall
parent and 32-by-32 textures. Vanilla item models use the replacement item
textures. No selected files match vanilla 1.21.1 byte-for-byte, and no collisions
were found. The source's other crops, farmland, hay bale textures, and unrelated
files are outside this selection.

The blockstate and stage-zero through stage-six models contain invalid trailing
`Made by Ensis` text. These eight files are repaired to keep the credit inside
valid JSON fields, retaining existing credits and all rendering data. Their index
entries document the repairs. The other thirteen files are copied unchanged.
Static checks covered all eight ages, both item models, 640 resolved model faces,
particle textures, supported geometry and rotations, and all ten PNGs. No missing
references or effects on unrelated blocks/items were found. Appearance has not
been verified in-game.

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
   Use the exact string `N/A` for `project_url` only when the user explicitly
   supplies it. Missing, blank, or otherwise invalid links still fail validation.
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

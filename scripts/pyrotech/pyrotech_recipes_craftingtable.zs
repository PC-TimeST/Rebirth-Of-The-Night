import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.item.IItemTransformer;

recipes.removeByMod("pyrotech");
recipes.remove(<pyrotech:stone_hammer>);
recipes.remove(<pyrotech:crude_hammer>);
recipes.remove(<pyrotech:bone_hammer>);
recipes.remove(<pyrotech:flint_hammer>);
recipes.remove(<pyrotech:gold_hammer>);
recipes.remove(<pyrotech:obsidian_hammer>);
recipes.remove(<pyrotech:bag_durable>);
recipes.remove(<pyrotech:drying_rack>);
recipes.remove(<pyrotech:mechanical_hopper>);
recipes.remove(<pyrotech:mechanical_bellows>);
recipes.remove(<pyrotech:mechanical_compacting_bin>);
recipes.remove(<pyrotech:mechanical_mulch_spreader>);
recipes.remove(<pyrotech:bellows>);
recipes.remove(<pyrotech:rock:*>);
recipes.remove(<pyrotech:sawmill_blade_stone>);
recipes.remove(<pyrotech:sawmill_blade_flint>);
recipes.remove(<pyrotech:sawmill_blade_bone>);
recipes.remove(<pyrotech:sawmill_blade_iron>);
recipes.remove(<pyrotech:sawmill_blade_gold>);
recipes.remove(<pyrotech:sawmill_blade_diamond>);
recipes.remove(<pyrotech:sawmill_blade_obsidian>);
recipes.remove(<pyrotech:cog_wood>);
recipes.remove(<pyrotech:cog_stone>);
recipes.remove(<pyrotech:wood_tar_block>);
recipes.remove(<pyrotech:living_tar>);
recipes.remove(<pyrotech:mushroom_brown_roasted>);
recipes.remove(<pyrotech:mushroom_red_roasted>);
recipes.remove(<pyrotech:apple_baked>);
recipes.remove(<pyrotech:burned_food>);
recipes.remove(<pyrotech:iron_hammer>);
recipes.remove(<pyrotech:shelf_stone>);
recipes.remove(<pyrotech:crate>);
recipes.remove(<pyrotech:crate_stone>);
recipes.remove(<pyrotech:chopping_block>);
recipes.remove(<pyrotech:worktable>);
recipes.remove(<pyrotech:tinder>);
recipes.remove(<pyrotech:campfire>);
recipes.remove(<pyrotech:kiln_pit>);
recipes.remove(<pyrotech:bucket_clay_unfired>);
recipes.remove(<pyrotech:bucket_clay>);
recipes.remove(<pyrotech:stash_stone>);
recipes.remove(<pyrotech:wood_rack>);
recipes.remove(<pyrotech:cog_obsidian>);
recipes.remove(<pyrotech:cog_diamond>);
recipes.remove(<pyrotech:cog_gold>);
recipes.remove(<pyrotech:cog_iron>);
recipes.remove(<pyrotech:cog_bone>);
recipes.remove(<pyrotech:cog_flint>);
recipes.remove(<pyrotech:thatch>);
recipes.remove(<pyrotech:refractory_glass>);
recipes.remove(<pyrotech:slag_glass>);
recipes.remove(<pyrotech:limestone>);
recipes.remove(<pyrotech:planks_tarred>);
recipes.remove(<pyrotech:wool_tarred>);
recipes.remove(<pyrotech:charcoal_block>);
recipes.remove(<pyrotech:coal_coke_block>);
recipes.remove(<pyrotech:worktable_stone>);
recipes.remove(<pyrotech:beetroot_roasted>);
recipes.remove(<pyrotech:egg_roasted>);
recipes.remove(<pyrotech:carrot_roasted>);
recipes.remove(<pyrotech:pile_ash>);
recipes.remove(<pyrotech:cobblestone:*>);
recipes.remove(<pyrotech:rock_grass>);
recipes.remove(<pyrotech:stone_crucible>);
recipes.remove(<pyrotech:stone_sawmill>);
recipes.remove(<pyrotech:brick_crucible>);
recipes.remove(<pyrotech:brick_sawmill>);
recipes.remove(<pyrotech:compacting_bin>);
recipes.remove(<pyrotech:brick_oven>);
mods.jei.JEI.hideCategory("pyrotech.campfire");
mods.jei.JEI.hideCategory("pyrotech.worktable");
mods.jei.JEI.hideCategory("pyrotech.stone.oven");
mods.jei.JEI.hideCategory("pyrotech.stone.crucible");
mods.jei.JEI.hideCategory("pyrotech.brick.mill");
mods.jei.JEI.hideCategory("pyrotech.brick.oven");
mods.jei.JEI.hideCategory("pyrotech.brick.crucible");
mods.jei.JEI.hideCategory("pyrotech.mechanical.compacting.bin");

furnace.remove(<pyrotech:mushroom_red_roasted>);
furnace.remove(<pyrotech:mushroom_brown_roasted>);
furnace.remove(<pyrotech:apple_baked>);
furnace.remove(<pyrotech:carrot_roasted>);
furnace.remove(<pyrotech:egg_roasted>);
furnace.remove(<pyrotech:material:24>);
furnace.remove(<pyrotech:cobblestone:2>);
furnace.remove(<pyrotech:cobblestone:1>);
furnace.remove(<pyrotech:cobblestone:0>);
furnace.remove(<pyrotech:beetroot_roasted>);
furnace.remove(<pyrotech:material:15>);

//Simplified recipes
val stone = <ore:stone>;
val stoneBrick = <pyrotech:material:16>;
val clayBrick = <ore:ingotBrick>;
val dry = <pyrotech:material:13>;
val twine = <pyrotech:material:14>;

recipes.addShaped("dryToTwine", twine*3,
[[dry,dry,dry]]);
recipes.addShaped("twineToString", <minecraft:string>*3,
[[twine,twine,twine]]);
recipes.addShaped("pyro stone brick", stoneBrick*2,
[[<ore:stone>],
[<ore:stone>]]);
recipes.addShaped("pyro stone kiln", <pyrotech:stone_kiln>,
 [[stoneBrick,stoneBrick,stoneBrick],
  [stoneBrick,<minecraft:furnace>,stoneBrick],
  [stoneBrick,<ore:StoneHugeBrick>,stoneBrick]]);
recipes.addShaped("pyro stone anvil", <pyrotech:anvil_granite>,
 [[<ore:stoneSlab>],
  [<ore:stone>]]);
<pyrotech:anvil_granite>.displayName = "Multipurpose Stone Anvil";
recipes.addShaped("pyro steel anvil", <pyrotech:anvil_iron_plated>,
 [[<ore:plateSoulforgedSteel>],
  [<pyrotech:anvil_granite>]]);
<pyrotech:anvil_iron_plated>.displayName = "Refined Plating Anvil";
recipes.addShaped("pyro brick kiln", <pyrotech:brick_kiln>,
 [[clayBrick,clayBrick,clayBrick],
  [clayBrick,<minecraft:furnace>,clayBrick],
  [clayBrick,<minecraft:brick_block>,clayBrick]]);
recipes.addShaped("pyro log pile", <pyrotech:log_pile>,
 [[<ore:logWood>,<ore:logWood>,<ore:logWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);
recipes.addShaped("compacting_bin", <pyrotech:compacting_bin>,
 [[null,<minecraftfuture:composter>,null],
  [<ore:stoneSlab>,<minecraftfuture:composter>,<ore:stoneSlab>],
  [<ore:stoneSlab>,<ore:slabWood>,<ore:stoneSlab>]]);
recipes.addShaped("potash_mulch1", <pyrotech:mulch>*4,
 [[<pyrotech:rock:7>,<biomesoplenty:ash>,<pyrotech:rock:7>],
  [<biomesoplenty:ash>,<ore:mulchNitrogen>,<biomesoplenty:ash>],
  [<pyrotech:rock:7>,<biomesoplenty:ash>,<pyrotech:rock:7>]]);
recipes.addShaped("potash_mulch2", <pyrotech:mulch>*12,
 [[<ore:dustPotash>,<ore:dustPotash>,<ore:dustPotash>],
  [<ore:dustPotash>,<ore:mulchNitrogen>,<ore:dustPotash>],
  [<ore:dustPotash>,<ore:dustPotash>,<ore:dustPotash>]]);  
recipes.addShaped("pyro wooden bucket", <pyrotech:bucket_wood>,
 [[<ore:plankWood>,<ore:twine>,<ore:plankWood>],
  [null,<ore:logWood>,null]]);
recipes.addShaped("pyro stone door", <pyrotech:stone_door>,
 [[<pyrotech:material:16>,<pyrotech:material:16>],
  [<pyrotech:material:16>,<pyrotech:material:16>],
  [<pyrotech:material:16>,<pyrotech:material:16>]]);
recipes.addShaped("pyro shelf", <pyrotech:shelf>,
 [[<ore:plankWood>,<ore:slabWood>,<ore:plankWood>],
  [<ore:plankWood>,<ore:slabWood>,<ore:plankWood>],
  [<ore:plankWood>,<ore:slabWood>,<ore:plankWood>]]);
recipes.addShaped("pyro stash", <pyrotech:stash>,
 [[<ore:plankWood>,null,<ore:plankWood>],
  [<ore:plankWood>,null,<ore:plankWood>],
  [<ore:plankWood>,<ore:chestWood>,<ore:plankWood>]]);
recipes.addShaped("pyro stone tank", <pyrotech:tank>,
 [[<pyrotech:material:16>,<minecraft:glass>,<pyrotech:material:16>],
  [<minecraft:glass>,<ore:slimeball>,<minecraft:glass>],
  [<pyrotech:material:16>,<pyrotech:material:16>,<pyrotech:material:16>]]);
recipes.addShaped("pyro stone faucet", <pyrotech:faucet_stone>*2,
 [[stoneBrick,null,stoneBrick],
  [<ore:twine>,stoneBrick,<ore:twine>]]);
recipes.addShaped("pyro clay bucket", <pyrotech:bucket_clay_unfired>,
 [[<minecraft:clay_ball>,null,<minecraft:clay_ball>],
  [null,<minecraft:clay_ball>,null]]);
recipes.addShapeless("pyro bow_drill", <pyrotech:bow_drill>,[<minecraft:bow>,<ore:stickWood>]);
recipes.addShapeless("pyro flint_and_tinder", <pyrotech:flint_and_tinder>,[<ore:cobblestone>,<pyrotech:material:13>,<minecraft:flint>]);
furnace.addRecipe(<minecraft:stonebrick>, <minecraft:stonebrick:2>, 0.0);
recipes.addShaped("masonry_stoneBricks", <minecraft:stonebrick:2>, 
[[<pyrotech:material:16>, <pyrotech:material:16>],
[<pyrotech:material:16>, <pyrotech:material:16>]]);
recipes.addShaped("drying_rack", <pyrotech:drying_rack:1>,
 [[<ore:stickWood>,<ore:twine>,<ore:stickWood>],
  [<ore:twine>,<minecraft:ladder>,<ore:twine>],
  [<ore:stickWood>,<ore:twine>,<ore:stickWood>]]);
recipes.remove(<pyrotech:soaking_pot>);
recipes.addShaped("soaking_pot", <pyrotech:soaking_pot>,
 [[stoneBrick,null,stoneBrick],
  [<ore:twine>,stoneBrick,<ore:twine>],
  [<ore:plankWood>,twine,<ore:plankWood>]]);
recipes.addShaped("pyro_chopping_block", <pyrotech:chopping_block>,
 [[<ore:toolAxe>.transformDamage()],
  [<ore:logWood>]]);  
recipes.addShaped("pyro_stone_sawmill", <pyrotech:stone_sawmill>,
 [[stoneBrick,stoneBrick,stoneBrick],
  [stoneBrick,<pyrotech:chopping_block>,stoneBrick],
  [stoneBrick,<ore:StoneHugeBrick>,stoneBrick]]);
recipes.addShaped("crude_fishing_pole", <pyrotech:crude_fishing_rod>,
 [[null,<ore:stickWood>],
  [<ore:stickWood>,<ore:twine>]]);
recipes.addShaped("quilting_sail", <betterwithmods:material:4>,
 [[<pyrotech:material:26>,<minecraft:carpet:*>,<pyrotech:material:26>],
  [<minecraft:carpet:*>,<pyrotech:material:26>,<minecraft:carpet:*>],
  [<pyrotech:material:26>,<minecraft:carpet:*>,<pyrotech:material:26>]]);
recipes.addShaped("iron_sawblade", <pyrotech:sawmill_blade_iron>,
 [[<minecraft:iron_nugget>,<minecraft:iron_ingot>,<minecraft:iron_nugget>],
  [<minecraft:iron_ingot>,null,<minecraft:iron_ingot>],
  [<minecraft:iron_nugget>,<minecraft:iron_ingot>,<minecraft:iron_nugget>]]);
recipes.addShaped("tar_collector", <pyrotech:tar_collector>,
 [[stoneBrick,null,stoneBrick],
  [stoneBrick,null,stoneBrick],
  [stoneBrick,stoneBrick,stoneBrick]]);
recipes.addShaped("tar_drain", <pyrotech:tar_drain>,
 [[stoneBrick,stoneBrick,stoneBrick],
  [null, null, null],
  [stoneBrick,stoneBrick,stoneBrick]]);
  
//hammers
recipes.addShaped("stone_sledgehammer", <pyrotech:stone_hammer>,
 [[<ore:cobblestone>,<ore:stickWood>,<ore:cobblestone>],
  [<ore:cobblestone>,<ore:stickWood>,<ore:cobblestone>],
  [null,<ore:stickWood>,null]]);
recipes.addShaped("iron_sledgehammer", <pyrotech:iron_hammer>,
 [[<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
  [<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
  [null,<ore:stickWood>,null]]);
recipes.addShaped("onyx_sledgehammer", <pyrotech:obsidian_hammer>,
 [[<simpleores:onyx_rod>,<pyrotech:diamond_hammer>,<simpleores:onyx_rod>]]);

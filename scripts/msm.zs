import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;


//mods.ltt.LootTable.removeGlobalItem("minecraft:enchanted_book.withTag({StoredEnchantments: [{lvl: 1 as short, id: 99 as short}]})");

mods.jei.JEI.removeAndHide(<msmlegacy:relic_infinity>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_keyblade>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_master>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_molten>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_pie>);

/////////////////////        Vampire Blade        /////////////////////

var silver = <ore:ingotSilver>;
var obsidian = <minecraft:obsidian>;
var heartcrystal = <scalinghealth:crystalshard>;
var handle = <spartanweaponry:material:0>;

recipes.remove(<msmlegacy:vampiric_blade>);
recipes.addShaped("Vampiric Blade", <msmlegacy:vampiric_blade>,[
	[null, silver, heartcrystal],
    [obsidian, heartcrystal, silver],
    [handle, obsidian, null]
]);

/////////////////////        Draconic Blade        /////////////////////

var iron = <minecraft:iron_ingot>;
var redstone = <minecraft:redstone>;
var diamond = <minecraft:diamond>;
var lapis = <minecraft:dye:4>;

recipes.remove(<msmlegacy:draconic_blade>);
recipes.addShaped("Draconic Blade", <msmlegacy:draconic_blade>,[
	[null, iron, redstone],
    [lapis, diamond, iron],
    [handle, lapis, null]
]);




////////////////////////////////////////    Relics        ///////////////////////////////////
/////////////////////        Red Hot Chili Pepper Sword        /////////////////////

var ruby = <biomesoplenty:gem:1>;
var chili = <harvestcraft:chilipepperitem>;
var blaze = <betterwithmods:material:27>;

val enchantments1 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:scorn>, <enchantment:minecraft:fire_aspect>];

var enchantmentMap1 as IData = {};

enchantmentMap1 += enchantments1[0].makeEnchantment(1).makeTag();
enchantmentMap1 += enchantments1[1].makeEnchantment(1).makeTag();

recipes.remove(<msmlegacy:relic_aqueous>);
recipes.addShaped("Red Hot Chili Pepper Sword", <msmlegacy:relic_aqueous>.withTag(enchantmentMap1),[
	[null, blaze, ruby],
    [chili, ruby, blaze],
    [handle, chili, null]
]);



/////////////////////        Burning Super Death Sword        /////////////////////

var sfs = <betterwithmods:material:14>;
var fiery = <twilightforest:fiery_ingot>;
var onyxrod = <simpleores:onyx_rod>;

val enchantmentsRelic2 as IEnchantmentDefinition[] = [<enchantment:minecraft:fire_aspect>];
var enchantmentRelicMap2 as IData = {};

enchantmentRelicMap2 += enchantmentsRelic2[0].makeEnchantment(2).makeTag();


recipes.remove(<msmlegacy:relic_candy>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:relic_candy>.withTag(enchantmentRelicMap2), 
[
   [null, ruby, ruby, onyxrod],
   [null, fiery, sfs, ruby],
   [fiery, sfs, fiery, ruby],
   [sfs, fiery, null, null]
]);

////////////////////////////////////////        Legendaries        ///////////////////////////////////
/////////////////////        Dark's Edge        /////////////////////

var onyx_sword = <simpleores:onyx_sword>;
var mythril_sword = <simpleores:mythril_sword>;
var viridium_sword = <simpleores:adamantium_sword>;
var diamond_sword = <minecraft:diamond_sword>;
var biotite = <quark:biotite>;


val enchantments3 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:consuming_shadows>];
var enchantmentMap3 as IData = {};

enchantmentMap3 += enchantments3[0].makeEnchantment(1).makeTag();


recipes.remove(<msmlegacy:wither_bane>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:wither_bane>.withTag(({"Quark:RuneColor": 14, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap3), 
[
   [biotite, biotite, biotite, biotite],
   [biotite, onyx_sword, mythril_sword, biotite],
   [biotite, viridium_sword, diamond_sword, biotite],
   [biotite, biotite, biotite, biotite]
]);




/////////////////////        Lights's Edge        /////////////////////

var lightessence = <biomesoplenty:biome_essence>;

val enchantments4 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:sparks>];
var enchantmentMap4 as IData = {};

enchantmentMap4 += enchantments4[0].makeEnchantment(1).makeTag();


recipes.remove(<msmlegacy:crystaline_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:crystaline_blade>.withTag(({"Quark:RuneColor": 4, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap4), 
[
   [lightessence, lightessence, lightessence, lightessence],
   [lightessence, onyx_sword, mythril_sword, lightessence],
   [lightessence, viridium_sword, diamond_sword, lightessence],
   [lightessence, lightessence, lightessence, lightessence]
]);




////////////////////////////////////////        Godly        ///////////////////////////////////
/////////////////////        True Dark's Edge        /////////////////////

var undyingheart = <mod_lavacow:undyingheart>;
var witherrose = <minecraftfuture:flowerblack>;
var shulkerheart = <bountifulbaubles:trinketshulkerheart>;
var trollskull = <iceandfire:troll_skull>;
var brokenheart = <bountifulbaubles:trinketbrokenheart>;
var hirschgeistskull = <betteranimalsplus:hirschgeistskull_1>;
var darksedge = <msmlegacy:wither_bane>;
var heartofthefallen = <contenttweaker:heartofthefallen>;
var onyx = <simpleores:onyx_gem>;
var cometshard = <nyx:comet_shard>;
var ravenfeather = <twilightforest:raven_feather>;

mods.betterwithmods.Anvil.addShaped(<contenttweaker:heartofthefallen>, 
[
   [shulkerheart, witherrose, witherrose, trollskull],
   [witherrose, undyingheart, undyingheart, witherrose],
   [witherrose, undyingheart, undyingheart, witherrose],
   [hirschgeistskull, witherrose, witherrose, brokenheart]
]);


val enchantments5 as IEnchantmentDefinition[] = [<enchantment:livingenchantment:enchantment.living>, <enchantment:msmlegacy:consuming_shadows>, <enchantment:msmlegacy:decay>, <enchantment:randomenchantments:paralysis>, <enchantment:randomenchantments:eternal>];
var enchantmentMap5 as IData = {};


var enchTag1 = enchantments5[0].makeEnchantment(1).makeTag().ench[0];
enchTag1 += {personalityName: "Unholy", personality: 0.13866483 as float, kills: 0, effectiveness: 1.00 as float, xp: 1};


enchantmentMap5 += {ench: [enchTag1]};
enchantmentMap5 += enchantments5[1].makeEnchantment(1).makeTag();
enchantmentMap5 += enchantments5[2].makeEnchantment(3).makeTag();
enchantmentMap5 += enchantments5[3].makeEnchantment(1).makeTag();
enchantmentMap5 += enchantments5[4].makeEnchantment(1).makeTag();

furnace.remove(<dungeontactics:silver_nugget>, <dungeontactics:silver_sword>);
recipes.remove(<dungeontactics:silver_sword>);
mods.betterwithmods.Anvil.addShaped(<dungeontactics:silver_sword>.withTag(({"Quark:RuneColor": 14, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap5),
[
   [cometshard, onyx, onyx, cometshard],
   [onyx, ravenfeather, darksedge, onyx],
   [onyx, heartofthefallen, ravenfeather, onyx],
   [cometshard, onyx, onyx, cometshard]
]);




/////////////////////        True Lights's Edge        /////////////////////


var heartofdiamond = <quark:diamond_heart>;
var victorymedal = <aether_legacy:victory_medal>;
var healingstone = <aether_legacy:healing_stone>;
var fallenstar = <nyx:fallen_star>;
var fierytears = <twilightforest:fiery_tears>;
var heavensheart = <contenttweaker:heavensheart>;
var lightsedge = <msmlegacy:crystaline_blade>;

mods.betterwithmods.Anvil.addShaped(<contenttweaker:heavensheart>, 
[
   [healingstone, victorymedal, victorymedal, healingstone],
   [victorymedal, heartofdiamond, heartofdiamond, victorymedal],
   [victorymedal, heartofdiamond, heartofdiamond, victorymedal],
   [healingstone, victorymedal, victorymedal, healingstone]
]);


val enchantments6 as IEnchantmentDefinition[] = [<enchantment:livingenchantment:enchantment.living>, <enchantment:msmlegacy:sparks>, <enchantment:msmlegacy:ignite>];
var enchantmentMap6 as IData = {};


var enchTag2 = enchantments6[0].makeEnchantment(1).makeTag().ench[0];
enchTag2 += {personalityName: "Divine", personality: 0.9898941 as float, kills: 0, effectiveness: 1.00 as float, xp: 1};


enchantmentMap6 += {ench: [enchTag2]};
enchantmentMap6 += enchantments6[1].makeEnchantment(1).makeTag();
enchantmentMap6 += enchantments6[2].makeEnchantment(3).makeTag();

recipes.remove(<msmlegacy:dawn_star>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:dawn_star>.withTag(({"Quark:RuneColor": 4, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap6),
[
   [fallenstar, fallenstar, fallenstar, fallenstar],
   [fallenstar, fierytears, lightsedge, fallenstar],
   [fallenstar, heavensheart, fierytears, fallenstar],
   [fallenstar, fallenstar, fallenstar, fallenstar]
]);

// repair
mods.rockytweaks.Anvil.addRecipe(<msmlegacy:dawn_star>.anyDamage(), lightessence, <msmlegacy:crystaline_blade>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 999999));
});



/////////////////////        Sky Blade        /////////////////////

var vampire_blade = <aether_legacy:vampire_blade>;
var zanite_sword = <aether_legacy:zanite_sword>;
var flaming_sword = <aether_legacy:flaming_sword>;
var lightning_sword = <aether_legacy:lightning_sword>;
var holy_sword = <aether_legacy:holy_sword>;
var gravitite_sword = <aether_legacy:gravitite_sword>;
var skyroot_sword = <aether_legacy:skyroot_sword>;
var holystone_sword = <aether_legacy:holystone_sword>;

recipes.remove(<msmlegacy:aethers_guard>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:aethers_guard>, 
[
   [null, null, holy_sword, vampire_blade],
   [null, null, gravitite_sword, zanite_sword],
   [null, null, skyroot_sword, flaming_sword],
   [null, null, holystone_sword, lightning_sword]
]);


/////////////////////        Interdimensional Blade        /////////////////////

var amedian_sword = <netherex:frosted_amedian_sword>;
var end_sword = <endreborn:ender_sword>;
var aethers_guard = <msmlegacy:aethers_guard>;
var glass_sword = <twilightforest:glass_sword>;
var mythrilsword = <simpleores:mythril_sword>;
var diamondsword = <minecraft:diamond_sword>;
var worldmirror = <endreborn:item_world_mirror>;
var beingofentropy = <endreborn:death_essence>;
var advenderpearl = <endreborn:item_advanced_ender_pearl>;
var wormholepotion = <bountifulbaubles:potionwormhole>;
var respawnpotion = <bountifulbaubles:potionrecall>;


val enchantments7 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:decay>, <enchantment:msmlegacy:ender_pulse>, <enchantment:msmlegacy:ascension>, <enchantment:msmlegacy:descension>];

var enchantmentMap7 as IData = {};

enchantmentMap7 += enchantments7[0].makeEnchantment(1).makeTag();
enchantmentMap7 += enchantments7[1].makeEnchantment(1).makeTag();
enchantmentMap7 += enchantments7[2].makeEnchantment(1).makeTag();
enchantmentMap7 += enchantments7[3].makeEnchantment(1).makeTag();


recipes.remove(<msmlegacy:eye_end_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:eye_end_blade>.withTag(({"Quark:RuneColor": 5, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap7),
[
   [end_sword, worldmirror, aethers_guard, diamondsword],
   [wormholepotion, advenderpearl, advenderpearl, respawnpotion],
   [wormholepotion, advenderpearl, advenderpearl, respawnpotion],
   [amedian_sword, mythrilsword, beingofentropy, glass_sword]
]);










var ice_dragonsteel_sword = <iceandfire:dragonsteel_ice_sword>;
var fire_dragonsteel_sword = <iceandfire:dragonsteel_fire_sword>;
var dragonsteel_fire = <iceandfire:dragonsteel_fire_ingot>;
var dragonsteel_ice = <iceandfire:dragonsteel_ice_ingot>;

val enchantments8 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:frozen_aspect>, <enchantment:minecraft:fire_aspect>, <enchantment:minecraft:knockback>, <enchantment:msmlegacy:frost_wave>];

var enchantmentMap8 as IData = {};

enchantmentMap8 += enchantments8[0].makeEnchantment(3).makeTag();
enchantmentMap8 += enchantments8[1].makeEnchantment(2).makeTag();
enchantmentMap8 += enchantments8[2].makeEnchantment(2).makeTag();
enchantmentMap8 += enchantments8[3].makeEnchantment(1).makeTag();

recipes.remove(<msmlegacy:glacial_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:glacial_blade>.withTag(({"Quark:RuneColor": 0, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap8), 
[
   [dragonsteel_fire, dragonsteel_fire, dragonsteel_ice, dragonsteel_ice],
   [dragonsteel_fire, ice_dragonsteel_sword, dragonsteel_ice, dragonsteel_ice],
   [dragonsteel_fire, dragonsteel_fire, fire_dragonsteel_sword, dragonsteel_ice],
   [dragonsteel_fire, dragonsteel_fire, dragonsteel_ice, dragonsteel_ice]
]);
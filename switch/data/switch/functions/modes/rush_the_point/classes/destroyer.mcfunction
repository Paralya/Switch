
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot stardust:i/reinforced_stardust_sword
loot insert 0 0 0 loot stardust:i/original_stardust_pickaxe
loot insert 0 0 0 loot stardust:i/reinforced_stardust_helmet
loot insert 0 0 0 loot stardust:i/reinforced_stardust_chestplate
loot insert 0 0 0 loot stardust:i/reinforced_stardust_leggings
loot insert 0 0 0 loot stardust:i/reinforced_stardust_boots
loot insert 0 0 0 loot crazy_adventure:i/fireball_stick
loot insert 0 0 0 loot crazy_adventure:i/banana
data modify block 0 0 0 Items[0].tag.CanDestroy set value ["minecraft:cut_sandstone","minecraft:smooth_sandstone_stairs","minecraft:obsidian","minecraft:fire","minecraft:tnt"]
data modify block 0 0 0 Items[0].tag.Enchantments set value [{id:"minecraft:knockback",lvl:1s}]
data remove block 0 0 0 Items[0].tag.display
data remove block 0 0 0 Items[1].tag.Enchantments
data remove block 0 0 0 Items[1].tag.display
data modify block 0 0 0 Items[1].tag.CanDestroy set value ["minecraft:cut_sandstone","minecraft:smooth_sandstone_stairs","minecraft:obsidian","minecraft:fire","minecraft:tnt"]
data remove block 0 0 0 Items[2].tag.AttributeModifiers[{AttributeName:"generic.max_health"}]
data remove block 0 0 0 Items[3].tag.AttributeModifiers[{AttributeName:"generic.knockback_resistance"}]
data remove block 0 0 0 Items[4].tag.AttributeModifiers[{AttributeName:"generic.movement_speed"}]
data remove block 0 0 0 Items[6].tag.ctc
data remove block 0 0 0 Items[6].tag.crazy_adventure
data modify block 0 0 0 Items[6].tag.display.Lore set value []
data modify block 0 0 0 Items[6].tag.switch set value {fireball_stick:1b}
data modify block 0 0 0 Items[7].Count set value 42b
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[2].tag.display.color set value 16731469
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[3].tag.display.color set value 16731469
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[4].tag.display.color set value 16731469
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[5].tag.display.color set value 16731469

clear @s
effect clear @s
item replace entity @s weapon.offhand with cut_sandstone{CanPlaceOn:["#switch:rush_the_point/can_place_on"]} 64
item replace entity @s armor.head from block 0 0 0 container.2 switch:enchant_protection_2
item replace entity @s armor.chest from block 0 0 0 container.3 switch:enchant_protection_2
item replace entity @s armor.legs from block 0 0 0 container.4 switch:enchant_protection_2
item replace entity @s armor.feet from block 0 0 0 container.5 switch:enchant_protection_2
item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 from block 0 0 0 container.1
item replace entity @s hotbar.2 from block 0 0 0 container.6
item replace entity @s hotbar.3 with cut_sandstone{CanPlaceOn:["#switch:rush_the_point/can_place_on"]} 64
item replace entity @s hotbar.5 with potion{Potion:"minecraft:strong_healing"}
item replace entity @s hotbar.6 with potion{Potion:"minecraft:strong_healing"}
item replace entity @s hotbar.8 from block 0 0 0 container.7
attribute @s generic.attack_speed base set 2048

scoreboard players set @s crazy_adventure.cooldown 0

setblock 0 0 0 air


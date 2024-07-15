
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot stardust:i/original_stardust_sword
loot insert 0 0 0 loot stardust:i/original_stardust_pickaxe
loot insert 0 0 0 loot stardust:i/original_stardust_helmet
loot insert 0 0 0 loot stardust:i/original_stardust_chestplate
loot insert 0 0 0 loot stardust:i/original_stardust_leggings
loot insert 0 0 0 loot stardust:i/original_stardust_boots
loot insert 0 0 0 loot crazy_adventure:i/banana
data modify block 0 0 0 Items[0].components."minecraft:can_break".blocks set value ["minecraft:cut_sandstone","minecraft:smooth_sandstone_stairs","minecraft:obsidian","minecraft:fire","minecraft:tnt"]
data modify block 0 0 0 Items[0].components."minecraft:enchantments" set value {"levels":{"minecraft:knockback":1}}
data remove block 0 0 0 Items[1].components."minecraft:enchantments"
data modify block 0 0 0 Items[1].components."minecraft:can_break".blocks set value ["minecraft:cut_sandstone","minecraft:smooth_sandstone_stairs","minecraft:obsidian","minecraft:fire","minecraft:tnt"]
data remove block 0 0 0 Items[2].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.max_health"}]
data remove block 0 0 0 Items[3].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.knockback_resistance"}]
data remove block 0 0 0 Items[4].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.movement_speed"}]
data modify block 0 0 0 Items[6].count set value 42b
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[2].components."minecraft:dyed_color" set value 16731469
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[3].components."minecraft:dyed_color" set value 13369344
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[4].components."minecraft:dyed_color" set value 16731469
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[5].components."minecraft:dyed_color" set value 13369344

clear @s
effect clear @s
item replace entity @s weapon.offhand with cut_sandstone{CanPlaceOn:["#switch:rush_the_point/can_place_on"]} 64
item replace entity @s armor.head from block 0 0 0 container.2 switch:enchant_protection_2
item replace entity @s armor.chest from block 0 0 0 container.3 switch:enchant_protection_2
item replace entity @s armor.legs from block 0 0 0 container.4 switch:enchant_protection_2
item replace entity @s armor.feet from block 0 0 0 container.5 switch:enchant_protection_2
item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 from block 0 0 0 container.1
item replace entity @s hotbar.2 with cut_sandstone{CanPlaceOn:["#switch:rush_the_point/can_place_on"]} 64
item replace entity @s hotbar.4 with potion{Potion:"minecraft:strong_healing"}
item replace entity @s hotbar.5 with potion{Potion:"minecraft:strong_healing"}
item replace entity @s hotbar.8 from block 0 0 0 container.6
attribute @s generic.attack_speed base set 2048

setblock 0 0 0 air


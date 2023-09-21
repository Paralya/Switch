
# Starter kit
scoreboard players set #armor switch.data 0
scoreboard players set #sword switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #armor switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players set #sword switch.data 1
execute if score #armor switch.data matches 0 run item replace entity @s armor.head with iron_helmet{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if score #armor switch.data matches 0 run item replace entity @s armor.chest with diamond_chestplate
execute if score #armor switch.data matches 0 run item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if score #armor switch.data matches 0 run item replace entity @s armor.feet with diamond_boots
execute if score #armor switch.data matches 1 run item replace entity @s armor.head with diamond_helmet
execute if score #armor switch.data matches 1 run item replace entity @s armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
execute if score #armor switch.data matches 1 run item replace entity @s armor.legs with diamond_leggings
execute if score #armor switch.data matches 1 run item replace entity @s armor.feet with iron_boots{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if score #sword switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}
execute if score #sword switch.data matches 0 run item replace entity @s hotbar.0 with iron_sword{Enchantments:[{id:"minecraft:sharpness",lvl:2s}]}
item replace entity @s hotbar.1 with bow{Enchantments:[{id:"minecraft:power",lvl:1s}]}
item replace entity @s[tag=switch.murder_uhc.detective] hotbar.1 with bow{Enchantments:[{id:"minecraft:power",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Amount:0.16,Operation:2,UUID:[I;4096,4096,4096,4096]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"offhand",Amount:0.16,Operation:2,UUID:[I;4096,4096,4096,4096]}]}
item replace entity @s hotbar.3 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s hotbar.4 with golden_apple 6
item replace entity @s hotbar.6 with arrow 28
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with apple 16
loot give @s loot switch:murder_uhc/all_starter
give @s oak_planks 100
give @s anvil

# Random items (0 or 1 or 2)
execute if predicate switch:chance/0.5 run function switch:modes/murder_uhc/random_items
execute if predicate switch:chance/0.5 run function switch:modes/murder_uhc/random_items

scoreboard players set @s crazy_adventure.radiation 0

attribute @s generic.attack_speed base set 1024
xp set @s 100 levels
xp set @s 0 points


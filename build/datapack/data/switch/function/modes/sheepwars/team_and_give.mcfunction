
#> switch:modes/sheepwars/team_and_give
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/start [ as @a[tag=!detached,sort=random] & at @s ]
#

# Team selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Teleport to team spawn
execute if data storage switch:main {map:"sheepwars_dirigeables"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_dirigeables/tp_red_player
execute if data storage switch:main {map:"sheepwars_dirigeables"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_dirigeables/tp_blue_player
execute if data storage switch:main {map:"survival_boat"} if entity @s[team=switch.temp.red] run function switch:maps/survival/survival_boat/tp_red_player
execute if data storage switch:main {map:"survival_boat"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/survival_boat/tp_blue_player
execute if data storage switch:main {map:"sheepwars_bonbons"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_bonbons/tp_blue_player
execute if data storage switch:main {map:"sheepwars_bonbons"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_bonbons/tp_red_player
execute if data storage switch:main {map:"sheepwars_plateforme"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_plateforme/tp_blue_player
execute if data storage switch:main {map:"sheepwars_plateforme"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_plateforme/tp_red_player
execute if data storage switch:main {map:"sheepwars_ilots"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_ilots/tp_blue_player
execute if data storage switch:main {map:"sheepwars_ilots"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_ilots/tp_red_player
execute if data storage switch:main {map:"sheepwars_colored_sheeps"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_colored_sheeps/tp_blue_player
execute if data storage switch:main {map:"sheepwars_colored_sheeps"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_colored_sheeps/tp_red_player

# Starter kit
clear @s
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=16711680]
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=16711680]
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.feet with leather_boots[unbreakable={},dyed_color=16711680]
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=255]
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=255]
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.feet with leather_boots[unbreakable={},dyed_color=255]
item replace entity @s inventory.0 with arrow
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"ranged",claim:1,canon:2,sibling:0},{i:2,role:"blocks",claim:1,canon:3,sibling:0},{i:3,role:"explosive",claim:1,canon:4,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/sheepwars/team_and_give/items with storage switch:layout out
attribute @s armor base set 3.0

## Shop things
# Kit More Health
execute if score @s switch.sheepwars.chosen_kit matches 1 run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=16514816]
execute if score @s switch.sheepwars.chosen_kit matches 1 run item replace entity @s armor.chest with leather_chestplate[unbreakable={},equippable={slot:"chest",asset_id:"minecraft:chainmail"},item_model="minecraft:chainmail_chestplate"]
execute if score @s switch.sheepwars.chosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 0 run attribute @s max_health base set 21
execute if score @s switch.sheepwars.chosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 1 run attribute @s max_health base set 22
execute if score @s switch.sheepwars.chosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 2 run attribute @s max_health base set 23
execute if score @s switch.sheepwars.chosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 3 run attribute @s max_health base set 24
execute if score @s switch.sheepwars.chosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 4 run attribute @s max_health base set 25

# Kit leggings colors (Better Bow, Better Sword, Builder)
execute if score @s switch.sheepwars.chosen_kit matches 2 run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=6225664]
execute if score @s switch.sheepwars.chosen_kit matches 3 run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=65480]
execute if score @s switch.sheepwars.chosen_kit matches 5 run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=16187647]

# Kit Mobility
execute if score @s switch.sheepwars.chosen_kit matches 6 run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=16777215]
execute if score @s switch.sheepwars.chosen_kit matches 6 unless score @s switch.sheepwars.kit_mobility matches 1.. run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:1},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.01,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 unless score @s switch.sheepwars.kit_mobility matches 1.. run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:1},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.01,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:1},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.015,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:1},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.015,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 2 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:2},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.02,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 2 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:2},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.02,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:2},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.025,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:2},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.025,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 4 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:3},dyed_color=16711680,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.03,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 4 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:3},dyed_color=255,attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"switch.movement_speed",amount:0.03,operation:"add_value"}]]
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1..2 run effect give @s jump_boost infinite 0 true
execute if score @s switch.sheepwars.chosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3.. run effect give @s jump_boost infinite 1 true

## Not an Item based kit
# Kit More Sheep (chosen_kit = 4) / Kit Armored Sheep (chosen_kit = 7)
execute if score @s switch.sheepwars.chosen_kit matches 4 run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=7274751]
execute if score @s switch.sheepwars.chosen_kit matches 7 run item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=3552822]

# Set attack speed
attribute @s attack_speed base set 1024


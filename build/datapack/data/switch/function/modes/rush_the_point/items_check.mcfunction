
#> switch:modes/rush_the_point/items_check
#
# @executed	as @e[type=item,tag=!switch.checked]
#
# @within	switch:modes/rush_the_point/tick_common [ as @e[type=item,tag=!switch.checked] ]
#

tag @s add switch.checked

execute if data entity @s Item{id:"smooth_sandstone_stairs"} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#switch:rush_the_point/can_place_on"
execute if data entity @s Item{id:"cut_sandstone"} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#switch:rush_the_point/can_place_on"
execute if data entity @s Item{id:"tnt"} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#switch:rush_the_point/can_place_on"
execute if data entity @s Item{id:"glass_bottle"} run kill @s
execute if data entity @s Item{id:"obsidian"} run kill @s
execute if data entity @s Item.components."minecraft:custom_data".switch.class_item run kill @s


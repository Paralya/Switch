
#> switch:modes/spectres_game/death/inventory_filter
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/spectres_game/death/for_global
#

function switch:modes/_common/death/keep_combat_items
execute store result storage switch:main Inventory[{id:"minecraft:golden_apple"}].count int 0.25 run data get entity @s Inventory[{id:"minecraft:golden_apple"}].count
data modify entity @s data.Inventory set from storage switch:main Inventory


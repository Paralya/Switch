
#> switch:modes/beat_the_kings/death/inventory_filter
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/beat_the_kings/death/for_global
#

data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:golden_apple"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:arrow"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:tnt"}]
data modify entity @s data.Inventory set from storage switch:main Inventory


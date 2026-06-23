
#> switch:modes/_common/death/keep_combat_items
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/beat_the_kings/death/inventory_filter
#			switch:modes/spectres_game/death/inventory_filter
#

data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:golden_apple"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:arrow"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:tnt"}]



#> switch:modes/spectres_game/death/inventory_filter
#
# @within	switch:modes/spectres_game/death/for_global
#

data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:golden_apple"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:arrow"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:tnt"}]
execute store result storage switch:main Inventory[{id:"minecraft:golden_apple"}].count int 0.25 run data get entity @s Inventory[{id:"minecraft:golden_apple"}].count
data modify entity @s data.Inventory set from storage switch:main Inventory


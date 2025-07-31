
#> switch:modes/rush_the_point/death/inventory_filter
#
# @executed	as @e[type=marker,tag=...]
#
# @within	switch:modes/rush_the_point/death/for_global
#

data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:potion"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:cut_sandstone"}]
data modify entity @s data.Inventory set from storage switch:main Inventory


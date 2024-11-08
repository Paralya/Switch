
#> switch:modes/capture_the_flag/death/inventory_filter
#
# @within	switch:modes/capture_the_flag/death/for_global
#

data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}}]
data modify entity @s data.Inventory set from storage switch:main Inventory


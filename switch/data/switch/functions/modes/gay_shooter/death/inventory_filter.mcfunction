
data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:golden_apple"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:arrow"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:tnt"}]
execute store result storage switch:main Inventory[{id:"minecraft:golden_apple"}].Count byte 0.25 run data get entity @s Inventory[{id:"minecraft:golden_apple"}].Count
data modify entity @s data.Inventory set from storage switch:main Inventory


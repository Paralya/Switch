
data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:potion"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:golden_apple"}]
data modify entity @s data.Inventory set from storage switch:main Inventory

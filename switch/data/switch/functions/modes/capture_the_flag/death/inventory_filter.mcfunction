
data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{tag:{Potion:"minecraft:strong_healing"}}]
data modify entity @s data.Inventory set from storage switch:main Inventory


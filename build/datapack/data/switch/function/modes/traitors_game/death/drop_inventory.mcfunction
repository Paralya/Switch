
#> switch:modes/traitors_game/death/drop_inventory
#
# @within	switch:modes/traitors_game/death/drop_inventory
#			switch:modes/traitors_game/death/for_global
#

loot spawn ~ ~ ~ loot switch:temp_item
data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{switch:{"temp_item":true}}}}},limit=1] Item set from entity @s data.Inventory[0]
data remove entity @s data.Inventory[0]

execute if data entity @s data.Inventory[0] run function switch:modes/traitors_game/death/drop_inventory


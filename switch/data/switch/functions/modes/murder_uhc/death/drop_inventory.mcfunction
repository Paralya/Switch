
loot spawn ~ ~ ~ loot switch:temp_item
data modify entity @e[type=item,nbt={Item:{tag:{switch.temp_item:1b}}},limit=1] Item set from entity @s data.Inventory[0]
data remove entity @s data.Inventory[0]

execute if data entity @s data.Inventory[0] run function switch:modes/traitors_game/death/drop_inventory

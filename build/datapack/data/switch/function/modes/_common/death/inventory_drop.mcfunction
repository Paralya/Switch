
#> switch:modes/_common/death/inventory_drop
#
# @within	switch:modes/_common/death/inventory_drop
#			switch:modes/beat_the_kings/death/for_global [ at @s ]
#			switch:modes/capture_the_flag/death/for_global [ at @s ]
#			switch:modes/rush_the_point/death/for_global [ at @s ]
#			switch:modes/spectres_game/death/for_global [ at @s ]
#			switch:modes/traitors_game/death/for_global [ at @s ]
#

loot spawn ~ ~ ~ loot switch:temp_item
data modify entity @n[type=item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{switch:{"temp_item":true}}}}}] Item set from entity @s data.Inventory[0]
data remove entity @s data.Inventory[0]

execute if data entity @s data.Inventory[0] run function switch:modes/_common/death/inventory_drop


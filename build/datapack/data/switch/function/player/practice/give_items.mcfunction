
#> switch:player/practice/give_items
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/check_inventory
#			switch:player/practice/toggle
#			switch:player/setup_lobby_inventory
#

# Kill the practice items dropped on the ground nearby, then clear the ones in the inventory
kill @e[type=item,distance=..16,nbt={Item:{components:{"minecraft:custom_data":{switch:{practice_item:true}}}}}]
clear @s stone[custom_data~{"switch":{"practice_item":true}}]
clear @s warped_fungus_on_a_stick[custom_data~{"switch":{"practice_item":true}}]

# Give the items in the player's language, and remember they were given at least once (see check_inventory)
function switch:player/translations/practice_give_items
tag @s add switch.practice_given


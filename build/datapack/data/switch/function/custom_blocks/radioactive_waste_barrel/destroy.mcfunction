
#> switch:custom_blocks/radioactive_waste_barrel/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/_groups/minecraft_emerald_block
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..1] run function switch:custom_blocks/radioactive_waste_barrel/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_emerald_block switch.data 1
scoreboard players remove #total_radioactive_waste_barrel switch.data 1

# Kill the custom block entity
kill @s


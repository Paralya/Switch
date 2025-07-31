
#> switch:custom_blocks/awakened_stardust_block/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/_groups/minecraft_stone
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:stone"}},distance=..1] run function switch:custom_blocks/awakened_stardust_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_stone switch.data 1
scoreboard players remove #total_awakened_stardust_block switch.data 1

# Kill the custom block entity
kill @s


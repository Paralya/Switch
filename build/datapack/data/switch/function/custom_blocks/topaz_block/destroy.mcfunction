
#> switch:custom_blocks/topaz_block/destroy
#
# @within	switch:custom_blocks/_groups/minecraft_diamond_block
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:diamond_block"}},distance=..1] run function switch:custom_blocks/topaz_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_diamond_block switch.data 1
scoreboard players remove #total_topaz_block switch.data 1

# Kill the custom block entity
kill @s



#> switch:custom_blocks/californium_block/destroy
#
# @within	switch:custom_blocks/_groups/minecraft_iron_block
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1] run function switch:custom_blocks/californium_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_iron_block switch.data 1
scoreboard players remove #total_californium_block switch.data 1

# Kill the custom block entity
kill @s


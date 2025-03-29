
#> switch:custom_blocks/solarium_block/destroy
#
# @within	switch:custom_blocks/_groups/minecraft_orange_concrete
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:orange_concrete"}},distance=..1] run function switch:custom_blocks/solarium_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_orange_concrete switch.data 1
scoreboard players remove #total_solarium_block switch.data 1

# Kill the custom block entity
kill @s


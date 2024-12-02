
#> switch:custom_blocks/legendarium_block/destroy
#
# @within	switch:custom_blocks/_groups/minecraft_lime_concrete
#

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete"}},limit=1,sort=nearest,distance=..1] run function switch:custom_blocks/legendarium_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_lime_concrete switch.data 1
scoreboard players remove #total_legendarium_block switch.data 1

# Kill the custom block entity
kill @s


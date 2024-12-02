
#> switch:custom_blocks/darkium_block/destroy
#
# @within	switch:custom_blocks/_groups/minecraft_black_concrete
#

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:black_concrete"}},limit=1,sort=nearest,distance=..1] run function switch:custom_blocks/darkium_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_black_concrete switch.data 1
scoreboard players remove #total_darkium_block switch.data 1

# Kill the custom block entity
kill @s


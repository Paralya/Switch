
#> switch:custom_blocks/adamantium_block/destroy
#
# @within	switch:custom_blocks/_groups/minecraft_netherite_block
#

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_block"}},limit=1,sort=nearest,distance=..1] run function switch:custom_blocks/adamantium_block/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_netherite_block switch.data 1
scoreboard players remove #total_adamantium_block switch.data 1

# Kill the custom block entity
kill @s


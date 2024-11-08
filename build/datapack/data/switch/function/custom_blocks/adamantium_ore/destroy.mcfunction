
#> switch:custom_blocks/adamantium_ore/destroy
#
# @within	switch:custom_blocks/_groups/minecraft_polished_deepslate
#

# Replace the item with the custom one
execute as @e[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},limit=1,sort=nearest,distance=..1] run function switch:custom_blocks/adamantium_ore/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_polished_deepslate switch.data 1
scoreboard players remove #total_adamantium_ore switch.data 1

# Kill the custom block entity
kill @s


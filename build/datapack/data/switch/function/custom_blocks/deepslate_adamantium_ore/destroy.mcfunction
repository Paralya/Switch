
#> switch:custom_blocks/deepslate_adamantium_ore/destroy
#
# @within	switch:custom_blocks/_groups/minecraft_polished_deepslate
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},distance=..1] run function switch:custom_blocks/deepslate_adamantium_ore/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_polished_deepslate switch.data 1
scoreboard players remove #total_deepslate_adamantium_ore switch.data 1

# Kill the custom block entity
kill @s


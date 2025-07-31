
#> switch:custom_blocks/ender_stardust_ore/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/_groups/minecraft_polished_deepslate
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:polished_deepslate"}},distance=..1] run function switch:custom_blocks/ender_stardust_ore/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks switch.data 1
scoreboard players remove #total_vanilla_polished_deepslate switch.data 1
scoreboard players remove #total_ender_stardust_ore switch.data 1

# Kill the custom block entity
kill @s


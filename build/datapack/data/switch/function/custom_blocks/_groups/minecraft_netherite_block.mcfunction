
#> switch:custom_blocks/_groups/minecraft_netherite_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_adamantium_block switch.data matches 1.. if entity @s[tag=switch.adamantium_block] run function switch:custom_blocks/adamantium_block/destroy


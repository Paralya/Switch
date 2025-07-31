
#> switch:custom_blocks/_groups/minecraft_black_concrete
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_darkium_block switch.data matches 1.. if entity @s[tag=switch.darkium_block] run function switch:custom_blocks/darkium_block/destroy


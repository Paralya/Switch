
#> switch:custom_blocks/_groups/minecraft_orange_concrete
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_solarium_block switch.data matches 1.. if entity @s[tag=switch.solarium_block] run function switch:custom_blocks/solarium_block/destroy


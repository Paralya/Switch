
#> switch:custom_blocks/_groups/minecraft_iron_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_steel_block switch.data matches 1.. if entity @s[tag=switch.steel_block] run function switch:custom_blocks/steel_block/destroy
execute if score #total_californium_block switch.data matches 1.. if entity @s[tag=switch.californium_block] run function switch:custom_blocks/californium_block/destroy
execute if score #total_uranium_block switch.data matches 1.. if entity @s[tag=switch.uranium_block] run function switch:custom_blocks/uranium_block/destroy


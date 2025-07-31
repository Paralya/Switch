
#> switch:custom_blocks/_groups/minecraft_diamond_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_sapphire_block switch.data matches 1.. if entity @s[tag=switch.sapphire_block] run function switch:custom_blocks/sapphire_block/destroy
execute if score #total_ruby_block switch.data matches 1.. if entity @s[tag=switch.ruby_block] run function switch:custom_blocks/ruby_block/destroy
execute if score #total_topaz_block switch.data matches 1.. if entity @s[tag=switch.topaz_block] run function switch:custom_blocks/topaz_block/destroy
execute if score #total_stardust_block switch.data matches 1.. if entity @s[tag=switch.stardust_block] run function switch:custom_blocks/stardust_block/destroy


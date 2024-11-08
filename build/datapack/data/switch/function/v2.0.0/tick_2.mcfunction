
#> switch:v2.0.0/tick_2
#
# @within	switch:v2.0.0/tick
#

# Reset timer
scoreboard players set #tick_2 switch.data 1

# 2 ticks destroy detection
execute if score #total_custom_blocks switch.data matches 1.. as @e[type=item_display,tag=switch.custom_block,tag=!switch.vanilla.minecraft_polished_deepslate,predicate=!switch:check_vanilla_blocks] at @s run function switch:custom_blocks/destroy


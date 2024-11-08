
#> switch:v2.0.0/second
#
# @within	switch:v2.0.0/tick
#

# Reset timer
scoreboard players set #second switch.data 0

# 1 second break detection
execute if score #total_custom_blocks switch.data matches 1.. as @e[type=item_display,tag=switch.custom_block,tag=!switch.vanilla.minecraft_polished_deepslate,predicate=!switch:advanced_check_vanilla_blocks] at @s run function switch:custom_blocks/destroy


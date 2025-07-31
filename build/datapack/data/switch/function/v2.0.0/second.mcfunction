
#> switch:v2.0.0/second
#
# @within	switch:v2.0.0/tick
#

# Reset timer
scoreboard players set #second switch.data 0

# 1 second break detection (any custom block)
execute if score #total_custom_blocks switch.data matches 1.. as @e[type=#switch:custom_blocks,tag=switch.custom_block,tag=!switch.vanilla.minecraft_polished_deepslate,predicate=!switch:advanced_check_vanilla_blocks] at @s run function switch:custom_blocks/destroy


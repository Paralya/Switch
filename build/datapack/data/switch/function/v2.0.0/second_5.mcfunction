
#> switch:v2.0.0/second_5
#
# @within	switch:v2.0.0/tick
#

# Reset timer
scoreboard players set #second_5 switch.data -10

# 5 seconds break detection
execute if score #total_custom_blocks switch.data matches 1.. as @e[type=item_display,tag=switch.custom_block,predicate=!switch:advanced_check_vanilla_blocks] at @s run function switch:custom_blocks/destroy


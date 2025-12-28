
#> switch:custom_blocks/legendarium_block/place_main
#
# @within	switch:custom_blocks/place
#

tag @s add switch.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:lime_concrete
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function switch:custom_blocks/legendarium_block/place_secondary
tag @s remove switch.placer

# Increment count scores
scoreboard players add #total_custom_blocks switch.data 1
scoreboard players add #total_vanilla_lime_concrete switch.data 1
scoreboard players add #total_legendarium_block switch.data 1



#> switch:custom_blocks/steel_block/place_main
#
# @within	switch:custom_blocks/place
#

tag @s add switch.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:iron_block
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function switch:custom_blocks/steel_block/place_secondary
tag @s remove switch.placer

# Increment count scores
scoreboard players add #total_custom_blocks switch.data 1
scoreboard players add #total_vanilla_iron_block switch.data 1
scoreboard players add #total_steel_block switch.data 1


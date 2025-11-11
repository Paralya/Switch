
#> switch:custom_blocks/raw_steel_block/place_main
#
# @within	switch:custom_blocks/place
#

tag @s add switch.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:raw_iron_block
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function switch:custom_blocks/raw_steel_block/place_secondary
tag @s remove switch.placer

# Increment count scores
scoreboard players add #total_custom_blocks switch.data 1
scoreboard players add #total_vanilla_raw_iron_block switch.data 1
scoreboard players add #total_raw_steel_block switch.data 1


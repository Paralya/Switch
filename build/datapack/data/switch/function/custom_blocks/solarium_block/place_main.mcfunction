
#> switch:custom_blocks/solarium_block/place_main
#
# @within	switch:custom_blocks/place
#

tag @s add switch.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:orange_concrete
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function switch:custom_blocks/solarium_block/place_secondary
tag @s remove switch.placer

# Increment count scores
scoreboard players add #total_custom_blocks switch.data 1
scoreboard players add #total_vanilla_orange_concrete switch.data 1
scoreboard players add #total_solarium_block switch.data 1


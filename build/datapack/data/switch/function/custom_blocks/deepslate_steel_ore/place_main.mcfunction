
#> switch:custom_blocks/deepslate_steel_ore/place_main
#
# @within	switch:custom_blocks/place
#

tag @s add switch.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:polished_deepslate
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function switch:custom_blocks/deepslate_steel_ore/place_secondary
tag @s remove switch.placer

# Increment count scores
scoreboard players add #total_custom_blocks switch.data 1
scoreboard players add #total_vanilla_polished_deepslate switch.data 1
scoreboard players add #total_deepslate_steel_ore switch.data 1


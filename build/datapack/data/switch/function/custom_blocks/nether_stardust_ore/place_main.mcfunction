
#> switch:custom_blocks/nether_stardust_ore/place_main
#
# @executed	positioned 127131 122 127114
#
# @within	switch:modes/infected/secrets/lost_graveyard/_load [ positioned 127131 122 127114 ]
#			switch:custom_blocks/place
#

tag @s add switch.placer
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:polished_deepslate
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function switch:custom_blocks/nether_stardust_ore/place_secondary
tag @s remove switch.placer

# Increment count scores
scoreboard players add #total_custom_blocks switch.data 1
scoreboard players add #total_vanilla_polished_deepslate switch.data 1
scoreboard players add #total_nether_stardust_ore switch.data 1


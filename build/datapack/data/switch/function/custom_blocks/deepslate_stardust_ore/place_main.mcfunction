
#> switch:custom_blocks/deepslate_stardust_ore/place_main
#
# @within	switch:custom_blocks/place
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 2121 113 10047 ]
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 2122 113 10055 ]
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 2115 114 10062 ]
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 2118 119 10068 ]
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 2109 117 10062 ]
#

tag @s add switch.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:polished_deepslate
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display at @s run function switch:custom_blocks/deepslate_stardust_ore/place_secondary
tag @s remove switch.placer

# Increment count scores
scoreboard players add #total_custom_blocks switch.data 1
scoreboard players add #total_vanilla_polished_deepslate switch.data 1
scoreboard players add #total_deepslate_stardust_ore switch.data 1


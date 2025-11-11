
#> switch:custom_blocks/deepslate_stardust_ore/place_main
#
# @executed	positioned 127121 113 127047
#
# @within	switch:modes/infected/secrets/lost_graveyard/_load [ positioned 127121 113 127047 ]
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 127122 113 127055 ]
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 127115 114 127062 ]
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 127118 119 127068 ]
#			switch:modes/infected/secrets/lost_graveyard/_load [ positioned 127109 117 127062 ]
#			switch:custom_blocks/place
#

tag @s add switch.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:polished_deepslate
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function switch:custom_blocks/deepslate_stardust_ore/place_secondary
tag @s remove switch.placer

# Increment count scores
scoreboard players add #total_custom_blocks switch.data 1
scoreboard players add #total_vanilla_polished_deepslate switch.data 1
scoreboard players add #total_deepslate_stardust_ore switch.data 1


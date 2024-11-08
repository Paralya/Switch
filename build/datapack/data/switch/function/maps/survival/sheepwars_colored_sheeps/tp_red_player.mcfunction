
#> switch:maps/survival/sheepwars_colored_sheeps/tp_red_player
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_colored_sheeps_red switch.data 1

execute if score #s_colored_sheeps_red switch.data matches 1 run tp @s 154035 148 154064 -90 0
execute if score #s_colored_sheeps_red switch.data matches 2 run tp @s 154041 148 154045 -90 0
execute if score #s_colored_sheeps_red switch.data matches 3 run tp @s 154032 144 154028 -90 0
execute if score #s_colored_sheeps_red switch.data matches 4 run tp @s 154035 140 154057 -90 0
execute if score #s_colored_sheeps_red switch.data matches 5 run tp @s 154035 140 154049 -90 0
execute if score #s_colored_sheeps_red switch.data matches 6 run tp @s 154038 128 154060 -90 0
execute if score #s_colored_sheeps_red switch.data matches 7 run tp @s 154038 128 154045 -90 0
execute if score #s_colored_sheeps_red switch.data matches 8 run tp @s 154035 147 154055 -90 0

execute if score #s_colored_sheeps_red switch.data matches 8.. run scoreboard players set #s_colored_sheeps_red switch.data 0


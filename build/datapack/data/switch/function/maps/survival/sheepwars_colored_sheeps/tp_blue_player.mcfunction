
#> switch:maps/survival/sheepwars_colored_sheeps/tp_blue_player
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_colored_sheeps_blue switch.data 1

execute if score #s_colored_sheeps_blue switch.data matches 1 run tp @s 154072 148 154042 90 0
execute if score #s_colored_sheeps_blue switch.data matches 2 run tp @s 154066 148 154061 90 0
execute if score #s_colored_sheeps_blue switch.data matches 3 run tp @s 154075 144 154078 90 0
execute if score #s_colored_sheeps_blue switch.data matches 4 run tp @s 154072 140 154049 90 0
execute if score #s_colored_sheeps_blue switch.data matches 5 run tp @s 154072 140 154057 90 0
execute if score #s_colored_sheeps_blue switch.data matches 6 run tp @s 154069 128 154046 90 0
execute if score #s_colored_sheeps_blue switch.data matches 7 run tp @s 154069 128 154061 90 0
execute if score #s_colored_sheeps_blue switch.data matches 8 run tp @s 154072 147 154051 90 0

execute if score #s_colored_sheeps_blue switch.data matches 8.. run scoreboard players set #s_colored_sheeps_blue switch.data 0


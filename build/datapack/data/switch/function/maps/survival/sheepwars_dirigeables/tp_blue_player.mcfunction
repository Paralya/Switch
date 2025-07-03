
#> switch:maps/survival/sheepwars_dirigeables/tp_blue_player
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_dirig_blue switch.data 1

execute if score #s_dirig_blue switch.data matches 1 run tp @s 100041 149 100067 180 0
execute if score #s_dirig_blue switch.data matches 2 run tp @s 100053 156 100067 180 0
execute if score #s_dirig_blue switch.data matches 3 run tp @s 100065 149 100067 180 0
execute if score #s_dirig_blue switch.data matches 4 run tp @s 100091 160 100053 90 0
execute if score #s_dirig_blue switch.data matches 5 run tp @s 100053 144 100065 180 0
execute if score #s_dirig_blue switch.data matches 6 run tp @s 100041 156 100067 180 0
execute if score #s_dirig_blue switch.data matches 7 run tp @s 100065 156 100067 180 0
execute if score #s_dirig_blue switch.data matches 8 run tp @s 100053 149 100067 180 0
execute if score #s_dirig_blue switch.data matches 9 run tp @s 100091 160 100060 180 0
execute if score #s_dirig_blue switch.data matches 10 run tp @s 100038 143 100065 180 0
execute if score #s_dirig_blue switch.data matches 11 run tp @s 100065 143 100065 180 0
execute if score #s_dirig_blue switch.data matches 12 run tp @s 100030 149 100067 180 0
execute if score #s_dirig_blue switch.data matches 13 run tp @s 100091 160 100048 180 0

execute if score #s_dirig_blue switch.data matches 13.. run scoreboard players set #s_dirig_blue switch.data 0


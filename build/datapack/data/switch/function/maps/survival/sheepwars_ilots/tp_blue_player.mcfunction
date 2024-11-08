
#> switch:maps/survival/sheepwars_ilots/tp_blue_player
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_ilots_blue switch.data 1

execute if score #s_ilots_blue switch.data matches 1 run tp @s 145062 142 145027 90 0
execute if score #s_ilots_blue switch.data matches 2 run tp @s 145062 134 145036 90 0
execute if score #s_ilots_blue switch.data matches 3 run tp @s 145061 138 145044 90 0
execute if score #s_ilots_blue switch.data matches 4 run tp @s 145059 138 145053 90 0
execute if score #s_ilots_blue switch.data matches 5 run tp @s 145063 138 145065 90 0
execute if score #s_ilots_blue switch.data matches 6 run tp @s 145060 133 145053 90 0
execute if score #s_ilots_blue switch.data matches 7 run tp @s 145063 139 145085 90 0
execute if score #s_ilots_blue switch.data matches 8 run tp @s 145061 150 145092 90 0
execute if score #s_ilots_blue switch.data matches 9 run tp @s 145058 133 145091 90 0

execute if score #s_ilots_blue switch.data matches 9.. run scoreboard players set #s_ilots_blue switch.data 0


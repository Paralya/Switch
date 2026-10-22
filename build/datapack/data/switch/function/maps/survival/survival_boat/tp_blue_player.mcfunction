
#> switch:maps/survival/survival_boat/tp_blue_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_survival_boat_blue switch.data 1

execute if score #s_survival_boat_blue switch.data matches 1 run tp @s -7933 125 6066 180 0
execute if score #s_survival_boat_blue switch.data matches 2 run tp @s -7949 127 6068 180 0
execute if score #s_survival_boat_blue switch.data matches 3 run tp @s -7918 127 6067 180 0
execute if score #s_survival_boat_blue switch.data matches 4 run tp @s -7941 126 6064 180 0
execute if score #s_survival_boat_blue switch.data matches 5 run tp @s -7929 126 6064 180 0
execute if score #s_survival_boat_blue switch.data matches 6 run tp @s -7933 126 6070 180 0
execute if score #s_survival_boat_blue switch.data matches 7 run tp @s -7924 126 6063 180 0
execute if score #s_survival_boat_blue switch.data matches 8 run tp @s -7947 128 6063 180 0

execute if score #s_survival_boat_blue switch.data matches 8.. run scoreboard players set #s_survival_boat_blue switch.data 0


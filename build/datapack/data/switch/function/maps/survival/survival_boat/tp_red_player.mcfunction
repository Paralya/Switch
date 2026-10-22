
#> switch:maps/survival/survival_boat/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_survival_boat_red switch.data 1

execute if score #s_survival_boat_red switch.data matches 1 run tp @s -7941 125 6036 0 0
execute if score #s_survival_boat_red switch.data matches 2 run tp @s -7925 127 6034 0 0
execute if score #s_survival_boat_red switch.data matches 3 run tp @s -7956 127 6035 0 0
execute if score #s_survival_boat_red switch.data matches 4 run tp @s -7933 126 6038 0 0
execute if score #s_survival_boat_red switch.data matches 5 run tp @s -7945 126 6038 0 0
execute if score #s_survival_boat_red switch.data matches 6 run tp @s -7941 127 6032 0 0
execute if score #s_survival_boat_red switch.data matches 7 run tp @s -7950 126 6039 0 0
execute if score #s_survival_boat_red switch.data matches 8 run tp @s -7927 128 6039 0 0

execute if score #s_survival_boat_red switch.data matches 8.. run scoreboard players set #s_survival_boat_red switch.data 0


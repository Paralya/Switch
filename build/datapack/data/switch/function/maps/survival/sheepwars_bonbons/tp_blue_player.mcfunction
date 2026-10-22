
#> switch:maps/survival/sheepwars_bonbons/tp_blue_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_bonbons_blue switch.data 1

execute if score #s_bonbons_blue switch.data matches 1 run tp @s -9963 130 2089 -90 0
execute if score #s_bonbons_blue switch.data matches 2 run tp @s -9978 139 2088 -90 0
execute if score #s_bonbons_blue switch.data matches 3 run tp @s -9968 131 2066 -90 0
execute if score #s_bonbons_blue switch.data matches 4 run tp @s -9979 142 2070 -90 0
execute if score #s_bonbons_blue switch.data matches 5 run tp @s -9978 142 2063 -90 0
execute if score #s_bonbons_blue switch.data matches 6 run tp @s -9974 141 2048 -90 0
execute if score #s_bonbons_blue switch.data matches 7 run tp @s -9966 136 2038 -90 0
execute if score #s_bonbons_blue switch.data matches 8 run tp @s -9973 139 2040 -90 0
execute if score #s_bonbons_blue switch.data matches 9 run tp @s -9974 141 2024 -90 0
execute if score #s_bonbons_blue switch.data matches 10 run tp @s -9972 149 2022 -90 0
execute if score #s_bonbons_blue switch.data matches 11 run tp @s -9963 135 2018 -90 0

execute if score #s_bonbons_blue switch.data matches 11.. run scoreboard players set #s_bonbons_blue switch.data 0


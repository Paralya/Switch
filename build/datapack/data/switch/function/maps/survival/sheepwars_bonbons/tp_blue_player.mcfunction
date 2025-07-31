
#> switch:maps/survival/sheepwars_bonbons/tp_blue_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_bonbons_blue switch.data 1

execute if score #s_bonbons_blue switch.data matches 1 run tp @s 143037 130 143089 -90 0
execute if score #s_bonbons_blue switch.data matches 2 run tp @s 143022 139 143088 -90 0
execute if score #s_bonbons_blue switch.data matches 3 run tp @s 143032 131 143066 -90 0
execute if score #s_bonbons_blue switch.data matches 4 run tp @s 143021 142 143070 -90 0
execute if score #s_bonbons_blue switch.data matches 5 run tp @s 143022 142 143063 -90 0
execute if score #s_bonbons_blue switch.data matches 6 run tp @s 143026 141 143048 -90 0
execute if score #s_bonbons_blue switch.data matches 7 run tp @s 143034 136 143038 -90 0
execute if score #s_bonbons_blue switch.data matches 8 run tp @s 143027 139 143040 -90 0
execute if score #s_bonbons_blue switch.data matches 9 run tp @s 143026 141 143024 -90 0
execute if score #s_bonbons_blue switch.data matches 10 run tp @s 143028 149 143022 -90 0
execute if score #s_bonbons_blue switch.data matches 11 run tp @s 143037 135 143018 -90 0

execute if score #s_bonbons_blue switch.data matches 11.. run scoreboard players set #s_bonbons_blue switch.data 0


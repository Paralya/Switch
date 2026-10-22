
#> switch:maps/survival/sheepwars_bonbons/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_bonbons_red switch.data 1

execute if score #s_bonbons_red switch.data matches 1 run tp @s -9946 131 2023 90 0
execute if score #s_bonbons_red switch.data matches 2 run tp @s -9933 139 2024 90 0
execute if score #s_bonbons_red switch.data matches 3 run tp @s -9943 131 2046 90 0
execute if score #s_bonbons_red switch.data matches 4 run tp @s -9932 142 2041 90 0
execute if score #s_bonbons_red switch.data matches 5 run tp @s -9933 142 2050 90 0
execute if score #s_bonbons_red switch.data matches 6 run tp @s -9937 141 2064 90 0
execute if score #s_bonbons_red switch.data matches 7 run tp @s -9946 136 2075 90 0
execute if score #s_bonbons_red switch.data matches 8 run tp @s -9937 139 2077 90 0
execute if score #s_bonbons_red switch.data matches 9 run tp @s -9937 142 2089 90 0
execute if score #s_bonbons_red switch.data matches 10 run tp @s -9938 154 2091 90 0
execute if score #s_bonbons_red switch.data matches 11 run tp @s -9948 135 2094 90 0

execute if score #s_bonbons_red switch.data matches 11.. run scoreboard players set #s_bonbons_red switch.data 0


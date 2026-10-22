
#> switch:maps/survival/sheepwars_ilots/tp_blue_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_ilots_blue switch.data 1

execute if score #s_ilots_blue switch.data matches 1 run tp @s -11938 142 -1973 90 0
execute if score #s_ilots_blue switch.data matches 2 run tp @s -11938 134 -1964 90 0
execute if score #s_ilots_blue switch.data matches 3 run tp @s -11939 138 -1956 90 0
execute if score #s_ilots_blue switch.data matches 4 run tp @s -11941 138 -1947 90 0
execute if score #s_ilots_blue switch.data matches 5 run tp @s -11937 138 -1935 90 0
execute if score #s_ilots_blue switch.data matches 6 run tp @s -11940 133 -1947 90 0
execute if score #s_ilots_blue switch.data matches 7 run tp @s -11937 139 -1915 90 0
execute if score #s_ilots_blue switch.data matches 8 run tp @s -11939 150 -1908 90 0
execute if score #s_ilots_blue switch.data matches 9 run tp @s -11942 133 -1909 90 0

execute if score #s_ilots_blue switch.data matches 9.. run scoreboard players set #s_ilots_blue switch.data 0


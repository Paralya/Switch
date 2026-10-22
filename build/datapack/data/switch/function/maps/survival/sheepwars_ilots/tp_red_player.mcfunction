
#> switch:maps/survival/sheepwars_ilots/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_ilots_red switch.data 1

execute if score #s_ilots_red switch.data matches 1 run tp @s -11971 142 -1908 -90 0
execute if score #s_ilots_red switch.data matches 2 run tp @s -11971 134 -1917 -90 0
execute if score #s_ilots_red switch.data matches 3 run tp @s -11970 138 -1925 -90 0
execute if score #s_ilots_red switch.data matches 4 run tp @s -11968 138 -1935 -90 0
execute if score #s_ilots_red switch.data matches 5 run tp @s -11969 133 -1934 -90 0
execute if score #s_ilots_red switch.data matches 6 run tp @s -11972 138 -1947 -90 0
execute if score #s_ilots_red switch.data matches 7 run tp @s -11972 139 -1966 -90 0
execute if score #s_ilots_red switch.data matches 8 run tp @s -11970 150 -1973 -90 0
execute if score #s_ilots_red switch.data matches 9 run tp @s -11967 133 -1972 -90 0

execute if score #s_ilots_red switch.data matches 9.. run scoreboard players set #s_ilots_red switch.data 0


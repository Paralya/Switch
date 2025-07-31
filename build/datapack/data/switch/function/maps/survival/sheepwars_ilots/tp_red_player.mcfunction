
#> switch:maps/survival/sheepwars_ilots/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_ilots_red switch.data 1

execute if score #s_ilots_red switch.data matches 1 run tp @s 145029 142 145092 -90 0
execute if score #s_ilots_red switch.data matches 2 run tp @s 145029 134 145083 -90 0
execute if score #s_ilots_red switch.data matches 3 run tp @s 145030 138 145075 -90 0
execute if score #s_ilots_red switch.data matches 4 run tp @s 145032 138 145065 -90 0
execute if score #s_ilots_red switch.data matches 5 run tp @s 145031 133 145066 -90 0
execute if score #s_ilots_red switch.data matches 6 run tp @s 145028 138 145053 -90 0
execute if score #s_ilots_red switch.data matches 7 run tp @s 145028 139 145034 -90 0
execute if score #s_ilots_red switch.data matches 8 run tp @s 145030 150 145027 -90 0
execute if score #s_ilots_red switch.data matches 9 run tp @s 145033 133 145028 -90 0

execute if score #s_ilots_red switch.data matches 9.. run scoreboard players set #s_ilots_red switch.data 0


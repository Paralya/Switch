
#> switch:maps/survival/sheepwars_dirigeables/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_dirig_red switch.data 1

execute if score #s_dirig_red switch.data matches 1 run tp @s 100065 149 100036 0 0
execute if score #s_dirig_red switch.data matches 2 run tp @s 100053 156 100036 0 0
execute if score #s_dirig_red switch.data matches 3 run tp @s 100041 149 100036 0 0
execute if score #s_dirig_red switch.data matches 4 run tp @s 100015 160 100050 -90 0
execute if score #s_dirig_red switch.data matches 5 run tp @s 100053 144 100038 0 0
execute if score #s_dirig_red switch.data matches 6 run tp @s 100065 156 100036 0 0
execute if score #s_dirig_red switch.data matches 7 run tp @s 100041 156 100036 0 0
execute if score #s_dirig_red switch.data matches 8 run tp @s 100053 149 100036 0 0
execute if score #s_dirig_red switch.data matches 9 run tp @s 100015 160 100043 0 0
execute if score #s_dirig_red switch.data matches 10 run tp @s 100068 143 100038 0 0
execute if score #s_dirig_red switch.data matches 11 run tp @s 100041 143 100038 0 0
execute if score #s_dirig_red switch.data matches 12 run tp @s 100076 149 100036 0 0
execute if score #s_dirig_red switch.data matches 13 run tp @s 100015 160 100055 0 0

execute if score #s_dirig_red switch.data matches 13.. run scoreboard players set #s_dirig_red switch.data 0


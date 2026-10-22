
#> switch:maps/survival/sheepwars_dirigeables/tp_blue_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_dirig_blue switch.data 1

execute if score #s_dirig_blue switch.data matches 1 run tp @s -9959 149 -7933 180 0
execute if score #s_dirig_blue switch.data matches 2 run tp @s -9947 156 -7933 180 0
execute if score #s_dirig_blue switch.data matches 3 run tp @s -9935 149 -7933 180 0
execute if score #s_dirig_blue switch.data matches 4 run tp @s -9909 160 -7947 90 0
execute if score #s_dirig_blue switch.data matches 5 run tp @s -9947 144 -7935 180 0
execute if score #s_dirig_blue switch.data matches 6 run tp @s -9959 156 -7933 180 0
execute if score #s_dirig_blue switch.data matches 7 run tp @s -9935 156 -7933 180 0
execute if score #s_dirig_blue switch.data matches 8 run tp @s -9947 149 -7933 180 0
execute if score #s_dirig_blue switch.data matches 9 run tp @s -9909 160 -7940 180 0
execute if score #s_dirig_blue switch.data matches 10 run tp @s -9962 143 -7935 180 0
execute if score #s_dirig_blue switch.data matches 11 run tp @s -9935 143 -7935 180 0
execute if score #s_dirig_blue switch.data matches 12 run tp @s -9970 149 -7933 180 0
execute if score #s_dirig_blue switch.data matches 13 run tp @s -9909 160 -7952 180 0

execute if score #s_dirig_blue switch.data matches 13.. run scoreboard players set #s_dirig_blue switch.data 0


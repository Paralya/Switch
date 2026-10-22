
#> switch:maps/survival/sheepwars_dirigeables/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_dirig_red switch.data 1

execute if score #s_dirig_red switch.data matches 1 run tp @s -9935 149 -7964 0 0
execute if score #s_dirig_red switch.data matches 2 run tp @s -9947 156 -7964 0 0
execute if score #s_dirig_red switch.data matches 3 run tp @s -9959 149 -7964 0 0
execute if score #s_dirig_red switch.data matches 4 run tp @s -9985 160 -7950 -90 0
execute if score #s_dirig_red switch.data matches 5 run tp @s -9947 144 -7962 0 0
execute if score #s_dirig_red switch.data matches 6 run tp @s -9935 156 -7964 0 0
execute if score #s_dirig_red switch.data matches 7 run tp @s -9959 156 -7964 0 0
execute if score #s_dirig_red switch.data matches 8 run tp @s -9947 149 -7964 0 0
execute if score #s_dirig_red switch.data matches 9 run tp @s -9985 160 -7957 0 0
execute if score #s_dirig_red switch.data matches 10 run tp @s -9932 143 -7962 0 0
execute if score #s_dirig_red switch.data matches 11 run tp @s -9959 143 -7962 0 0
execute if score #s_dirig_red switch.data matches 12 run tp @s -9924 149 -7964 0 0
execute if score #s_dirig_red switch.data matches 13 run tp @s -9985 160 -7945 0 0

execute if score #s_dirig_red switch.data matches 13.. run scoreboard players set #s_dirig_red switch.data 0



#> switch:maps/survival/sheepwars_plateforme/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_plateforme_red switch.data 1

execute if score #s_plateforme_red switch.data matches 1 run tp @s -9971 122 55 -90 0
execute if score #s_plateforme_red switch.data matches 2 run tp @s -9983 131 55 -90 0
execute if score #s_plateforme_red switch.data matches 3 run tp @s -9968 127 57 -90 0
execute if score #s_plateforme_red switch.data matches 4 run tp @s -9973 127 43 -90 0
execute if score #s_plateforme_red switch.data matches 5 run tp @s -9983 142 39 -90 0
execute if score #s_plateforme_red switch.data matches 6 run tp @s -9979 128 24 -90 0
execute if score #s_plateforme_red switch.data matches 7 run tp @s -9985 133 30 -90 0
execute if score #s_plateforme_red switch.data matches 8 run tp @s -9983 138 24 -90 0

execute if score #s_plateforme_red switch.data matches 8.. run scoreboard players set #s_plateforme_red switch.data 0



#> switch:maps/survival/sheepwars_plateforme/tp_blue_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_plateforme_blue switch.data 1

execute if score #s_plateforme_blue switch.data matches 1 run tp @s -9944 122 25 90 0
execute if score #s_plateforme_blue switch.data matches 2 run tp @s -9932 131 25 90 0
execute if score #s_plateforme_blue switch.data matches 3 run tp @s -9942 127 36 90 0
execute if score #s_plateforme_blue switch.data matches 4 run tp @s -9932 142 41 90 0
execute if score #s_plateforme_blue switch.data matches 5 run tp @s -9939 127 50 90 0
execute if score #s_plateforme_blue switch.data matches 6 run tp @s -9936 128 56 90 0
execute if score #s_plateforme_blue switch.data matches 7 run tp @s -9930 133 50 90 0
execute if score #s_plateforme_blue switch.data matches 8 run tp @s -9932 138 56 90 0

execute if score #s_plateforme_blue switch.data matches 8.. run scoreboard players set #s_plateforme_blue switch.data 0


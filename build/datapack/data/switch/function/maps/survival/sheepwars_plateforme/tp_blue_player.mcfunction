
#> switch:maps/survival/sheepwars_plateforme/tp_blue_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_plateforme_blue switch.data 1

execute if score #s_plateforme_blue switch.data matches 1 run tp @s 144056 122 144025 90 0
execute if score #s_plateforme_blue switch.data matches 2 run tp @s 144068 131 144025 90 0
execute if score #s_plateforme_blue switch.data matches 3 run tp @s 144058 127 144036 90 0
execute if score #s_plateforme_blue switch.data matches 4 run tp @s 144068 142 144041 90 0
execute if score #s_plateforme_blue switch.data matches 5 run tp @s 144061 127 144050 90 0
execute if score #s_plateforme_blue switch.data matches 6 run tp @s 144064 128 144056 90 0
execute if score #s_plateforme_blue switch.data matches 7 run tp @s 144070 133 144050 90 0
execute if score #s_plateforme_blue switch.data matches 8 run tp @s 144068 138 144056 90 0

execute if score #s_plateforme_blue switch.data matches 8.. run scoreboard players set #s_plateforme_blue switch.data 0



#> switch:maps/survival/sheepwars_plateforme/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_plateforme_red switch.data 1

execute if score #s_plateforme_red switch.data matches 1 run tp @s 144029 122 144055 -90 0
execute if score #s_plateforme_red switch.data matches 2 run tp @s 144017 131 144055 -90 0
execute if score #s_plateforme_red switch.data matches 3 run tp @s 144032 127 144057 -90 0
execute if score #s_plateforme_red switch.data matches 4 run tp @s 144027 127 144043 -90 0
execute if score #s_plateforme_red switch.data matches 5 run tp @s 144017 142 144039 -90 0
execute if score #s_plateforme_red switch.data matches 6 run tp @s 144021 128 144024 -90 0
execute if score #s_plateforme_red switch.data matches 7 run tp @s 144015 133 144030 -90 0
execute if score #s_plateforme_red switch.data matches 8 run tp @s 144017 138 144024 -90 0

execute if score #s_plateforme_red switch.data matches 8.. run scoreboard players set #s_plateforme_red switch.data 0


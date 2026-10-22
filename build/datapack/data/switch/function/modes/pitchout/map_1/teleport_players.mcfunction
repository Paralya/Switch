
#> switch:modes/pitchout/map_1/teleport_players
#
# @executed	as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water]
#
# @within	switch:modes/pitchout/in_water_with_cooldown
#			switch:modes/pitchout/map_1/tp_give
#

execute if score #spawn_count switch.data matches 0 in switch:game run tp @s 2060 111 60 135 0
execute if score #spawn_count switch.data matches 1 in switch:game run tp @s 2040 111 40 -45 0
execute if score #spawn_count switch.data matches 2 in switch:game run tp @s 2040 111 60 -135 0
execute if score #spawn_count switch.data matches 3 in switch:game run tp @s 2060 111 40 45 0
execute if score #spawn_count switch.data matches 4 in switch:game run tp @s 2050 111 50 0 0
execute if score #spawn_count switch.data matches 5 in switch:game run tp @s 2065 111 50 90 0
execute if score #spawn_count switch.data matches 6 in switch:game run tp @s 2035 111 50 -90 0
execute if score #spawn_count switch.data matches 7 in switch:game run tp @s 2050 111 65 180 0
execute if score #spawn_count switch.data matches 8 in switch:game run tp @s 2050 111 35 0 0
execute if score #spawn_count switch.data matches 9 in switch:game run tp @s 2050 111 32 180 0
execute if score #spawn_count switch.data matches 10 in switch:game run tp @s 2032 111 50 90 0
execute if score #spawn_count switch.data matches 11 in switch:game run tp @s 2050 111 18 0 0
execute if score #spawn_count switch.data matches 12 in switch:game run tp @s 2018 111 50 -90 0
execute if score #spawn_count switch.data matches 13 in switch:game run tp @s 2072 111 72 135 0
execute if score #spawn_count switch.data matches 14 in switch:game run tp @s 2072 111 28 45 0
execute if score #spawn_count switch.data matches 15 in switch:game run tp @s 2028 111 28 -45 0
execute if score #spawn_count switch.data matches 16 in switch:game run tp @s 2028 111 72 -135 0

scoreboard players add #spawn_count switch.data 1
execute if score #spawn_count switch.data matches 17 run scoreboard players set #spawn_count switch.data 0


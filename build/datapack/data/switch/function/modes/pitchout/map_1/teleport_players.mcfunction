
#> switch:modes/pitchout/map_1/teleport_players
#
# @within	switch:modes/pitchout/tick
#			switch:modes/pitchout/map_1/tp_give
#

execute if score #spawn_count switch.data matches 0 in switch:game run tp @s 1060 111 1060 135 0
execute if score #spawn_count switch.data matches 1 in switch:game run tp @s 1040 111 1040 -45 0
execute if score #spawn_count switch.data matches 2 in switch:game run tp @s 1040 111 1060 -135 0
execute if score #spawn_count switch.data matches 3 in switch:game run tp @s 1060 111 1040 45 0
execute if score #spawn_count switch.data matches 4 in switch:game run tp @s 1050 111 1050 0 0
execute if score #spawn_count switch.data matches 5 in switch:game run tp @s 1065 111 1050 90 0
execute if score #spawn_count switch.data matches 6 in switch:game run tp @s 1035 111 1050 -90 0
execute if score #spawn_count switch.data matches 7 in switch:game run tp @s 1050 111 1065 180 0
execute if score #spawn_count switch.data matches 8 in switch:game run tp @s 1050 111 1035 0 0
execute if score #spawn_count switch.data matches 9 in switch:game run tp @s 1050 111 1032 180 0
execute if score #spawn_count switch.data matches 10 in switch:game run tp @s 1032 111 1050 90 0
execute if score #spawn_count switch.data matches 11 in switch:game run tp @s 1050 111 1018 0 0
execute if score #spawn_count switch.data matches 12 in switch:game run tp @s 1018 111 1050 -90 0
execute if score #spawn_count switch.data matches 13 in switch:game run tp @s 1072 111 1072 135 0
execute if score #spawn_count switch.data matches 14 in switch:game run tp @s 1072 111 1028 45 0
execute if score #spawn_count switch.data matches 15 in switch:game run tp @s 1028 111 1028 -45 0
execute if score #spawn_count switch.data matches 16 in switch:game run tp @s 1028 111 1072 -135 0

scoreboard players add #spawn_count switch.data 1
execute if score #spawn_count switch.data matches 17 run scoreboard players set #spawn_count switch.data 0


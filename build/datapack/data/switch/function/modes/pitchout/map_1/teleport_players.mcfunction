
#> switch:modes/pitchout/map_1/teleport_players
#
# @within	switch:modes/pitchout/tick
#			switch:modes/pitchout/map_1/tp_give
#

execute if score #spawn_count switch.data matches 0 in switch:game run tp @s 1010 108 1010 135 0
execute if score #spawn_count switch.data matches 1 in switch:game run tp @s 990 108 990 -45 0
execute if score #spawn_count switch.data matches 2 in switch:game run tp @s 990 108 1010 -135 0
execute if score #spawn_count switch.data matches 3 in switch:game run tp @s 1010 108 990 45 0
execute if score #spawn_count switch.data matches 4 in switch:game run tp @s 1000 108 1000 0 0
execute if score #spawn_count switch.data matches 5 in switch:game run tp @s 1015 108 1000 90 0
execute if score #spawn_count switch.data matches 6 in switch:game run tp @s 985 108 1000 -90 0
execute if score #spawn_count switch.data matches 7 in switch:game run tp @s 1000 108 1015 180 0
execute if score #spawn_count switch.data matches 8 in switch:game run tp @s 1000 108 985 0 0
execute if score #spawn_count switch.data matches 9 in switch:game run tp @s 1000 108 1032 180 0
execute if score #spawn_count switch.data matches 10 in switch:game run tp @s 1032 108 1000 90 0
execute if score #spawn_count switch.data matches 11 in switch:game run tp @s 1000 108 968 0 0
execute if score #spawn_count switch.data matches 12 in switch:game run tp @s 968 108 1000 -90 0
execute if score #spawn_count switch.data matches 13 in switch:game run tp @s 1022 108 1022 135 0
execute if score #spawn_count switch.data matches 14 in switch:game run tp @s 1022 108 978 45 0
execute if score #spawn_count switch.data matches 15 in switch:game run tp @s 978 108 978 -45 0
execute if score #spawn_count switch.data matches 16 in switch:game run tp @s 978 108 1022 -135 0

scoreboard players add #spawn_count switch.data 1
execute if score #spawn_count switch.data matches 17 run scoreboard players set #spawn_count switch.data 0


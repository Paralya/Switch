
#> switch:modes/pitchout/map_halloween/teleport_players
#
# @within	switch:modes/pitchout/map_halloween/tp_give
#			switch:modes/pitchout/tick [ as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] ]
#

execute if score #spawn_count switch.data matches 0 in switch:game run tp @s 125061 112 125061
execute if score #spawn_count switch.data matches 1 in switch:game run tp @s 125061 109 125036 0 0
execute if score #spawn_count switch.data matches 2 in switch:game run tp @s 125061 109 125086 180 0
execute if score #spawn_count switch.data matches 3 in switch:game run tp @s 125036 109 125061 -90 0
execute if score #spawn_count switch.data matches 4 in switch:game run tp @s 125086 109 125061 90 0
execute if score #spawn_count switch.data matches 5 in switch:game run tp @s 125061 109 125017 0 0
execute if score #spawn_count switch.data matches 6 in switch:game run tp @s 125061 109 125105 180 0
execute if score #spawn_count switch.data matches 7 in switch:game run tp @s 125017 109 125061 -90 0
execute if score #spawn_count switch.data matches 8 in switch:game run tp @s 125105 109 125061 90 0
execute if score #spawn_count switch.data matches 9 in switch:game run tp @s 125031 109 125031 -45 0
execute if score #spawn_count switch.data matches 10 in switch:game run tp @s 125091 109 125091 135 0
execute if score #spawn_count switch.data matches 11 in switch:game run tp @s 125091 109 125031 45 0
execute if score #spawn_count switch.data matches 12 in switch:game run tp @s 125031 109 125091 -135 0

scoreboard players add #spawn_count switch.data 1
execute if score #spawn_count switch.data matches 13 run scoreboard players set #spawn_count switch.data 0


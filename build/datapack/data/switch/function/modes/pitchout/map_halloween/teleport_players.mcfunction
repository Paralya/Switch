
#> switch:modes/pitchout/map_halloween/teleport_players
#
# @executed	as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water]
#
# @within	switch:modes/pitchout/in_water_with_cooldown
#			switch:modes/pitchout/map_halloween/tp_give
#

execute if score #spawn_count switch.data matches 0 in switch:game run tp @s 10061 109 10036 0 0
execute if score #spawn_count switch.data matches 1 in switch:game run tp @s 10061 109 10086 180 0
execute if score #spawn_count switch.data matches 2 in switch:game run tp @s 10036 109 10061 -90 0
execute if score #spawn_count switch.data matches 3 in switch:game run tp @s 10086 109 10061 90 0
execute if score #spawn_count switch.data matches 4 in switch:game run tp @s 10061 109 10017 0 0
execute if score #spawn_count switch.data matches 5 in switch:game run tp @s 10061 109 10105 180 0
execute if score #spawn_count switch.data matches 6 in switch:game run tp @s 10017 109 10061 -90 0
execute if score #spawn_count switch.data matches 7 in switch:game run tp @s 10105 109 10061 90 0
execute if score #spawn_count switch.data matches 8 in switch:game run tp @s 10031 109 10031 -45 0
execute if score #spawn_count switch.data matches 9 in switch:game run tp @s 10091 109 10091 135 0
execute if score #spawn_count switch.data matches 10 in switch:game run tp @s 10091 109 10031 45 0
execute if score #spawn_count switch.data matches 11 in switch:game run tp @s 10031 109 10091 -135 0

scoreboard players add #spawn_count switch.data 1
execute if score #spawn_count switch.data matches 12 run scoreboard players set #spawn_count switch.data 0


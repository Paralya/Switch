
#> switch:modes/bombardement/death
#
# @executed	as @a[tag=!detached,gamemode=!spectator,distance=..1.5] & at @s
#
# @within	switch:modes/bombardement/ball_tick [ as @a[tag=!detached,gamemode=!spectator,distance=..1.5] & at @s ]
#			switch:modes/bombardement/explode [ as @a[tag=!detached,gamemode=!spectator,distance=..1.5] & at @s ]
#			switch:modes/bombardement/joined
#			switch:modes/bombardement/process_end [ as @a[tag=!detached] ]
#			switch:modes/bombardement/tick [ at @s ]
#

execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] unless block ~ ~ ~ water if score #bombardement_seconds switch.data matches 0..5 run advancement grant @s only switch:visible/79
function switch:translations/modes_bombardement_death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s


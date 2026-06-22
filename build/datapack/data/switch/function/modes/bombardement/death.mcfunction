
#> switch:modes/bombardement/death
#
# @executed	at @s
#
# @within	switch:modes/bombardement/tick [ at @s ]
#			switch:modes/bombardement/joined
#			switch:modes/bombardement/explode [ as @a[tag=!detached,gamemode=!spectator,distance=..1.5] & at @s ]
#			switch:modes/bombardement/ball_tick [ as @a[tag=!detached,gamemode=!spectator,distance=..1.5] & at @s ]
#			switch:modes/bombardement/process_end [ as @a[tag=!detached] ]
#

execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] unless block ~ ~ ~ water if score #bombardement_seconds switch.data matches 0..5 run advancement grant @s only switch:visible/79
function switch:modes/bombardement/translations/death
function switch:modes/_common/death_spectator


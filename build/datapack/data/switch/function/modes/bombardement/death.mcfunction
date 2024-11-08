
#> switch:modes/bombardement/death
#
# @within	switch:modes/bombardement/ball_tick
#			switch:modes/bombardement/explode
#			switch:modes/bombardement/joined
#			switch:modes/bombardement/process_end
#			switch:modes/bombardement/tick
#

execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] unless block ~ ~ ~ water if score #bombardement_seconds switch.data matches 0..5 run advancement grant @s only switch:visible/79
function switch:translations/modes_bombardement_death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

gamemode spectator @s
execute at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s


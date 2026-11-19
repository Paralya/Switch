
#> switch:modes/_common/death_spectator
#
# @executed	at @s
#
# @within	switch:modes/bombardement/death
#			switch:modes/spleef/death
#			switch:modes/tnt_run/death
#

execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1
execute unless score #process_end switch.data matches 1 if entity @s[gamemode=spectator] at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~

gamemode spectator @s
effect clear @s
function switch:player/layout/deactivate
clear @s


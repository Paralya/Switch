
#> switch:modes/tnt_run/death
#
# @within	switch:modes/tnt_run/joined
#			switch:modes/tnt_run/process_end
#			switch:modes/tnt_run/tick
#

function switch:translations/modes_tnt_run_death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

gamemode spectator @s
execute at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s

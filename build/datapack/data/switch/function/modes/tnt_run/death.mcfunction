
#> switch:modes/tnt_run/death
#
# @within	switch:modes/tnt_run/joined
#			switch:modes/tnt_run/process_end [ as @a[tag=!detached] ]
#			switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=!spectator,sort=random] & at @s ]
#

function switch:translations/modes_tnt_run_death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s


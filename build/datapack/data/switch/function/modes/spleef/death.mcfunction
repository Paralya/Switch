
#> switch:modes/spleef/death
#
# @within	switch:modes/spleef/joined
#			switch:modes/spleef/process_end [ as @a[tag=!detached] ]
#			switch:modes/spleef/tick [ as @a[tag=!detached,gamemode=survival,predicate=switch:in_lava,sort=random] ]
#

function switch:translations/modes_spleef_death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s


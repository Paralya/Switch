
#> switch:modes/de_a_coudre/death
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/de_a_coudre/joined
#			switch:modes/de_a_coudre/process_end [ as @a[tag=!detached] ]
#			string in switch:modes/de_a_coudre/tick
#

function switch:translations/common/death_missed_jump

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s


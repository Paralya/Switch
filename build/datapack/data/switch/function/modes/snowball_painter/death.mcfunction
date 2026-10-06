
#> switch:modes/snowball_painter/death
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/snowball_painter/calls/joined
#			switch:modes/snowball_painter/process_end [ as @a[tag=!detached] ]
#			string in switch:modes/snowball_painter/tick
#

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s



#> switch:modes/snowball_painter/death
#
# @within	switch:modes/snowball_painter/joined
#			switch:modes/snowball_painter/process_end
#

gamemode spectator @s
execute at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s


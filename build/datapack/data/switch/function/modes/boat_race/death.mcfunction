
#> switch:modes/boat_race/death
#
# @within	switch:modes/boat_race/joined
#			switch:modes/boat_race/process_end
#			switch:modes/boat_race/tick
#

scoreboard players set @s switch.alive 0
gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s


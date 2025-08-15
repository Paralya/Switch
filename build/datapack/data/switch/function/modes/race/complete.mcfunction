
#> switch:modes/race/complete
#
# @executed	as @a[tag=!detached,predicate=switch:has_same_checkpoint]
#
# @within	switch:modes/race/checkpoints/player_in
#			switch:modes/race/joined
#			switch:modes/race/process_end [ as @a[tag=!detached] ]
#

execute if entity @s[scores={switch.alive=1}] run function switch:modes/race/finished

execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
gamemode spectator @s
effect clear @s
clear @s


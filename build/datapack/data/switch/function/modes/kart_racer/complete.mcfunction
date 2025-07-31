
#> switch:modes/kart_racer/complete
#
# @executed	as @a[tag=!detached,predicate=switch:has_same_checkpoint]
#
# @within	switch:modes/kart_racer/checkpoints/player_in
#			switch:modes/kart_racer/joined
#			switch:modes/kart_racer/process_end [ as @a[tag=!detached] ]
#

execute if entity @s[scores={switch.alive=1}] run function switch:modes/kart_racer/finished

execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
gamemode spectator @s
effect clear @s
clear @s



#> switch:modes/feed_fast/death
#
# @within	switch:modes/feed_fast/joined
#			switch:modes/feed_fast/process_end [ as @a[tag=!detached] ]
#

execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s switch.alive 0
gamemode spectator @s
effect clear @s
clear @s


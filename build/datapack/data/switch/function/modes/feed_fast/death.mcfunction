
#> switch:modes/feed_fast/death
#
# @within	switch:modes/feed_fast/joined
#			switch:modes/feed_fast/process_end
#

execute at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
scoreboard players set @s switch.alive 0
gamemode spectator @s
effect clear @s
clear @s


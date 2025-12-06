
#> switch:modes/spectres_game/place_obsidian_from_chicken
#
# @executed	as @e[tag=switch.task_obsidian] & at @s
#
# @within	switch:modes/spectres_game/tick [ as @e[tag=switch.task_obsidian] & at @s ]
#

# Kill self, and place crying obsidian block
execute on vehicle at @s run setblock ~ ~ ~ crying_obsidian
kill @s


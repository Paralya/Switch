
#> switch:modes/spectres_game/place_obsidian_from_chicken
#
# @executed	as @e[tag=switch.task_obsidian] & at @s
#
# @within	switch:modes/spectres_game/tick [ as @e[tag=switch.task_obsidian] & at @s ]
#

# Place the crying obsidian block, then kill both the chicken and its block display
execute on vehicle at @s run setblock ~ ~ ~ crying_obsidian
execute on vehicle run kill @s
kill @s


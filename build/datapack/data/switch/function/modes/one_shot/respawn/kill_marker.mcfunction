
#> switch:modes/one_shot/respawn/kill_marker
#
# @executed	as @e[tag=switch.respawn]
#
# @within	switch:modes/one_shot/respawn/kill_worst_marker [ as @e[tag=switch.respawn] ]
#			switch:modes/one_shot/respawn/main [ as @n[tag=switch.respawn_max] ]
#			switch:modes/one_shot/respawn/spawn_marker [ at @s ]
#

# Debug armor stand with glowing
#execute at @s run kill @n[tag=switch.respawn_debug,distance=..1]

# Decrease the respawn marker count and kill the marker
scoreboard players remove #respawn_marker_count switch.data 1
kill @s



# Debug armor stand with glowing
#execute at @s run kill @n[tag=switch.respawn_debug,distance=..1]

# Decrease the respawn marker count and kill the marker
scoreboard players remove #respawn_marker_count switch.data 1
kill @s


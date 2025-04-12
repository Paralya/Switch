
#> switch:modes/one_shot/respawn/spawn_marker
#
# @within	switch:modes/one_shot/start
#			switch:modes/one_shot/tick
#			switch:modes/one_shot/respawn/main
#

# Spawn a new marker
scoreboard players add #respawn_marker_count switch.data 1
function switch:maps/spread_one_player
tag @s add switch.respawn

# Debug armor stand with glowing
#execute at @s run summon armor_stand ~ ~ ~ {Tags:["switch.respawn_debug"],Glowing:1b,Invulnerable:1b,NoGravity:1b,Small:1b}

# Kill the marker if not on solid block
execute at @s if block ~ ~-0.1 ~ #minecraft:replaceable run return run function switch:modes/one_shot/respawn/kill_marker

# Kill the marker if another marker is too close
tag @s add switch.respawn_check
execute at @s if entity @e[tag=!switch.respawn_check,tag=switch.respawn,distance=..5] run return run function switch:modes/one_shot/respawn/kill_marker
tag @s remove switch.respawn_check



#> switch:modes/one_shot/respawn/kill_worst_marker
#
# @within	switch:modes/one_shot/tick
#

# For each marker, get their distance to the closest marker
execute as @e[tag=switch.respawn] run function switch:modes/one_shot/respawn/get_marker_distance

# Kill the marker(s) with the lowest distance (the worst ones)
scoreboard players operation #min switch.data < @e[tag=switch.respawn] switch.data
execute as @e[tag=switch.respawn] if score @s switch.data = #min switch.data run function switch:modes/one_shot/respawn/kill_marker


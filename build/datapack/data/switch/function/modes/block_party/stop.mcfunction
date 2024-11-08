
#> switch:modes/block_party/stop
#
# @within	switch:modes/block_party/calls/stop
#

stopsound @a[tag=!detached]
scoreboard objectives remove switch.temp.old_x
scoreboard objectives remove switch.temp.old_z
scoreboard objectives remove switch.temp.time_since_movement


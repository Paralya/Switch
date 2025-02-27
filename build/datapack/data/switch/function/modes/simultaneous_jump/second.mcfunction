
#> switch:modes/simultaneous_jump/second
#
# @within	switch:modes/simultaneous_jump/calls/second
#

scoreboard players add #simultaneous_jump_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1

# Teleport and gamemode adventure
execute if score #simultaneous_jump_seconds switch.data matches 0 run gamemode adventure @a[tag=!detached]
execute if score #simultaneous_jump_seconds switch.data matches 0 as @a[tag=!detached] run function switch:modes/simultaneous_jump/teleport

# XP bar
function switch:modes/simultaneous_jump/xp_bar


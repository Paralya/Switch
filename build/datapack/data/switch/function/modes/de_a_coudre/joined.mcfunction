
#> switch:modes/de_a_coudre/joined
#
# @within	switch:modes/de_a_coudre/calls/joined
#

# Reset attributes (like safe_fall_distance)
function switch:utils/reset_attributes

# Set player to spectator and handle reconnection
gamemode spectator @s
execute if score #reconnect switch.data matches 0 run scoreboard players add #max switch.data 1
execute if score #reconnect switch.data matches 0 run scoreboard players operation @s switch.temp.color = #max switch.data
execute if score #reconnect switch.data matches 1 run function switch:modes/de_a_coudre/death


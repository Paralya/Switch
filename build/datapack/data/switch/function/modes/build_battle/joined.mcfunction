
#> switch:modes/build_battle/joined
#
# @within	switch:modes/build_battle/calls/joined
#

## New player
# Spectator when final phase
execute if score #reconnect switch.data matches 0 unless score #build_battle_state switch.data matches 0..1 run gamemode spectator @s

# First and second phase, make the player join the game
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 0..1 run scoreboard players set @s switch.temp.id -1
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 0..1 summon marker run function switch:modes/build_battle/preparation/summon_marker
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 1 run gamemode creative @s
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 0 run gamemode adventure @s
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 0 run effect give @s levitation infinite 255 true

# Final phase, make the player spectator
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 2 run gamemode spectator @s


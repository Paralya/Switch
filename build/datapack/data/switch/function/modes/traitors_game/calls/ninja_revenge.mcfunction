
#> switch:modes/traitors_game/calls/ninja_revenge
#
# @executed	as the player & at current position
#
# @within	advancement switch:traitors_game/ninja_revenge
#

advancement revoke @s only switch:traitors_game/ninja_revenge
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"traitors_game"} if score @s switch.temp.role matches 3..4 run advancement grant @s only switch:visible/41


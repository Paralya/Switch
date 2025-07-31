
#> switch:modes/cigogne/killed_player
#
# @executed	as the player & at current position
#
# @within	advancement switch:cigogne/killed_player
#

advancement revoke @s only switch:cigogne/killed_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"cigogne"} run give @s golden_apple 3


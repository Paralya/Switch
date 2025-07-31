
#> switch:modes/murder_mystery/calls/entity_hurt_player
#
# @executed	as the player & at current position
#
# @within	advancement switch:murder_mystery/entity_hurt_player
#

advancement revoke @s only switch:murder_mystery/entity_hurt_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"murder_mystery"} if score #murder_mystery_seconds switch.data matches 0.. run function switch:modes/murder_mystery/entity_hurt_player


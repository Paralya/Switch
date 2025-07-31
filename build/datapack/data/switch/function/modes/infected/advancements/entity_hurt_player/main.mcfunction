
#> switch:modes/infected/advancements/entity_hurt_player/main
#
# @executed	as the player & at current position
#
# @within	advancement switch:infected/entity_hurt_player
#

advancement revoke @s only switch:infected/entity_hurt_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"infected"} run function switch:modes/infected/advancements/entity_hurt_player/confirm


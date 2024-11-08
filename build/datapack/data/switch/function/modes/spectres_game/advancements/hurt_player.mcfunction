
#> switch:modes/spectres_game/advancements/hurt_player
#
# @within	advancement switch:spectres_game/hurt_entity
#

advancement revoke @s only switch:spectres_game/hurt_entity
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"spectres_game"} run scoreboard players add @s switch.temp.damages 1


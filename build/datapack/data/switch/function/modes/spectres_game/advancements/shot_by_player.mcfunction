
#> switch:modes/spectres_game/advancements/shot_by_player
#
# @within	advancement switch:spectres_game/shot_by_player
#

advancement revoke @s only switch:spectres_game/shot_by_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"spectres_game"} run function switch:modes/spectres_game/advancements/handle_shot


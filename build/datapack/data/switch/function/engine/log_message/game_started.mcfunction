
#> switch:engine/log_message/game_started
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/start with storage switch:main
#
# @args		current_game_name (unknown)
#

$function switch:engine/log_message/apply {message:"Lancement d'une partie de `$(current_game_name)` !"}


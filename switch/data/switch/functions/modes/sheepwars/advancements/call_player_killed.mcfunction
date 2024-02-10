
#> switch:modes/sheepwars/advancements/call_player_killed
#
# @within			#sheepwars:signals/player_killed
# @executed			as a player
#
# @input victim		The player who has been damaged (executing the function tag)
# @input damager	The owner of the sheep who killed the victim (tagged with "sheepwars.owner")
#
# @description		Send a function tag signal if he is dead, and remove the damage tag.
#					The function tag signal can be used to customize the death of the player (message, etc.)
#

# Suicidaire advancement
execute if score #engine_state switch.data matches 3 unless score #test_mode switch.data matches 1 if data storage switch:main {current_game:"sheepwars"} run advancement grant @s[tag=sheepwars.owner] only switch:visible/46


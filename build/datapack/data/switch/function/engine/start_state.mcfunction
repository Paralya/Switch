
#> switch:engine/start_state
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/_coupdetat/_force_start
#			switch:engine/force_start_macro
#

# Start the game with the right state
scoreboard players set #engine_state switch.data 3
scoreboard players reset #set_spec switch.data
scoreboard players reset #do_spreadplayers switch.data
scoreboard players reset #dont_regenerate switch.data
function switch:utils/reset_players

# End the cinematics of the players entering the game, then wipe the entities they leave behind.
# The mass kill spares global.ignore.kill so it never strips a lobby player of the entity they are
# spectating: that would leave them stuck in spectator with the counter still claiming it is alive.
execute as @a[tag=!detached] run function switch:cinematic/kill_for_player
function switch:utils/safe_kill_macro {selector:"@e[type=!player,tag=!detached,tag=!global.ignore.kill]"}
function switch:engine/signals/start

# Disable the practice mode of the players joining the game (force start / coup d'état attach without the attach trigger)
execute as @a[tag=!detached,tag=switch.practice] run function switch:player/practice/disable

# Close the layout editor of any player still editing (no save: the save item is the only way to save)
execute as @a[tag=!detached,tag=switch.layout_editor] run function switch:player/layout/editor/force_close

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s


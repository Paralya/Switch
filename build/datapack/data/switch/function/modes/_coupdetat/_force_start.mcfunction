
#> switch:modes/_coupdetat/_force_start
#
# @within	switch:engine/start
#

# Stop everything
function switch:engine/disable

# Set the current game
data modify storage switch:main current_game set value "_coupdetat"
data modify storage switch:main current_game_name set value "Coup d'état"
tag @s remove detached

# Start the game with the right state
scoreboard players set #engine_state switch.data 3
scoreboard players reset #set_spec switch.data
scoreboard players reset #do_spreadplayers switch.data
scoreboard players reset #dont_regenerate switch.data
function switch:utils/reset_players
function switch:utils/safe_kill_macro {selector:"@e[type=!player,tag=!detached]"}
function switch:engine/signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s


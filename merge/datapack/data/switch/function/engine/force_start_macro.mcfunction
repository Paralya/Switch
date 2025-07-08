
# Stop everything
function switch:engine/disable

# Set the current game
$data modify storage switch:main current_game set value "$(id)"
$data modify storage switch:main current_game_name set from storage switch:main minigames[{id:"$(id)"}].name_fr
$execute store result score #game_1 switch.data run data get storage switch:main minigames[{id:"$(id)"}].index
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
scoreboard players remove @a[tag=!detached] switch.win_streak 5
scoreboard players set @a[tag=!detached,scores={switch.win_streak=..-6}] switch.win_streak -5

function switch:translations/engine_force_start_macro


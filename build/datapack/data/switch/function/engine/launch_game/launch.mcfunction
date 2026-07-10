
#> switch:engine/launch_game/launch
#
# @within	switch:engine/launch_game/transition 12t [ scheduled ]
#

# Do nothing if the engine left the voting state during the transition (e.g. disabled or force started)
execute unless score #engine_state switch.data matches 2 run return 1

gamerule minecraft:send_command_feedback true

scoreboard players set #engine_state switch.data 3
scoreboard players add total_games switch.last_total_games 1

# Remember the winning group as slot 1 of the next vote, and the game index (used by /rating)
scoreboard players operation #game_1 switch.data = #group_index switch.data
function switch:engine/launch_game/current_game_index with storage switch:main

# Advancement
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"feed_fast"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"mlg_a_coudre"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"de_a_coudre"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"thunder_spear"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"snowball_painter"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"coin_chaser"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"shoot_da_sheep"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10
execute unless score #test_mode switch.data matches 1 if score #max switch.data matches 8.. if data storage switch:main {current_game:"layers_2_teams"} as @a[tag=!detached] if score @s switch.trigger.game_vote = #max_game switch.data run advancement grant @s only switch:visible/10

# Add game to history
data modify storage switch:main history.games prepend from storage switch:main current_game

weather clear
difficulty normal
scoreboard players reset #set_spec switch.data
scoreboard players reset #do_spreadplayers switch.data
scoreboard players reset #dont_regenerate switch.data
function switch:utils/reset_players
function switch:utils/safe_kill_macro {selector:"@e[type=!player]"}
execute in switch:game run function switch:engine/signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
scoreboard players remove @a[tag=!detached] switch.win_streak 5
scoreboard players set @a[tag=!detached,scores={switch.win_streak=..-6}] switch.win_streak -5

# Depending on the game, add a score
function switch:engine/launch_game/add_played_stat with storage switch:main


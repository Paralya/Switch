
#> switch:engine/stop
#
# @within	switch:tick
#			switch:engine/disable
#			switch:engine/restart
#

execute unless score #engine_state switch.data matches 3 unless score #disable switch.data matches 1 run tp @a[tag=!detached] 0 69 0
scoreboard players set #engine_state switch.data 0
scoreboard players set #cut_clean switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard players set #set_spec switch.data 1
function switch:utils/reset_players
worldborder set 59999968
worldborder center 0 0
scoreboard objectives setdisplay list switch.stats.wins
execute unless score #dont_regenerate switch.data matches 1 unless score #already_regenerated switch.data matches 1 run function switch:maps/regenerate_map
scoreboard players reset #dont_regenerate switch.data

scoreboard objectives setdisplay sidebar
scoreboard players reset #disable switch.data
scoreboard players reset * switch.alive
execute in minecraft:overworld run function switch:utils/reset_gamerules
execute in switch:game run function switch:utils/reset_gamerules

function switch:engine/signals/stop
function switch:utils/safe_kill_macro {selector:"@e[type=!player]"}

# Update the stats of the minigame
execute if score #test_mode switch.data matches 1.. run return 1
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:stats/sort_minigames_stats/update_minigame with storage switch:main input


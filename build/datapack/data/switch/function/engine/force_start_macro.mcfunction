
#> switch:engine/force_start_macro
#
# @within	switch:modes/beat_the_kings/_force_start {id:"beat_the_kings"}
#			switch:modes/block_party/_force_start {id:"block_party"}
#			switch:modes/boat_race/_force_start {id:"boat_race"}
#			switch:modes/bombardement/_force_start {id:"bombardement"}
#			switch:modes/build_battle/_force_start {id:"build_battle"}
#			switch:modes/capture_the_flag/_force_start {id:"capture_the_flag"}
#			switch:modes/castagne/_force_start {id:"castagne"}
#			switch:modes/cigogne/_force_start {id:"cigogne"}
#			switch:modes/coin_chaser/_force_start {id:"coin_chaser"}
#			switch:modes/creeper_apocalypse/_force_start {id:"creeper_apocalypse"}
#			switch:modes/de_a_coudre/_force_start {id:"de_a_coudre"}
#			switch:modes/feed_fast/_force_start {id:"feed_fast"}
#			switch:modes/fireblast/_force_start {id:"fireblast"}
#			switch:modes/fish_fight/_force_start {id:"fish_fight"}
#			switch:modes/gay_shooter/_force_start {id:"gay_shooter"}
#			switch:modes/glassrunner/_force_start {id:"glassrunner"}
#			switch:modes/infected/_force_start {id:"infected"}
#			switch:modes/kart_racer/_force_start {id:"kart_racer"}
#			switch:modes/laser_game/_force_start {id:"laser_game"}
#			switch:modes/layers_2_teams/_force_start {id:"layers_2_teams"}
#			switch:modes/layers_4_teams/_force_start {id:"layers_4_teams"}
#			switch:modes/memory_mine/_force_start {id:"memory_mine"}
#			switch:modes/minigolf/_force_start {id:"minigolf"}
#			switch:modes/mlg_a_coudre/_force_start {id:"mlg_a_coudre"}
#			switch:modes/moutron/_force_start {id:"moutron"}
#			switch:modes/murder_mystery/_force_start {id:"murder_mystery"}
#			switch:modes/one_shot/_force_start {id:"one_shot"}
#			switch:modes/panic_chase/_force_start {id:"panic_chase"}
#			switch:modes/pillars_of_fortune/_force_start {id:"pillars_of_fortune"}
#			switch:modes/pitchout/_force_start {id:"pitchout"}
#			switch:modes/pitch_creep/_force_start {id:"pitch_creep"}
#			switch:modes/protect_the_king/_force_start {id:"protect_the_king"}
#			switch:modes/pvpswap/_force_start {id:"pvpswap"}
#			switch:modes/replicate_the_build/_force_start {id:"replicate_the_build"}
#			switch:modes/rush_the_flag/_force_start {id:"rush_the_flag"}
#			switch:modes/rush_the_point/_force_start {id:"rush_the_point"}
#			switch:modes/sheepwars/_force_start {id:"sheepwars"}
#			switch:modes/shoot_da_sheep/_force_start {id:"shoot_da_sheep"}
#			switch:modes/simultaneous_jump/_force_start {id:"simultaneous_jump"}
#			switch:modes/snowball_painter/_force_start {id:"snowball_painter"}
#			switch:modes/spectres_game/_force_start {id:"spectres_game"}
#			switch:modes/spleef/_force_start {id:"spleef"}
#			switch:modes/thunder_spear/_force_start {id:"thunder_spear"}
#			switch:modes/tnt_run/_force_start {id:"tnt_run"}
#			switch:modes/traitors_game/_force_start {id:"traitors_game"}
#			switch:modes/warden_escape/_force_start {id:"warden_escape"}
#

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
execute in switch:game run function switch:engine/signals/start

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
scoreboard players remove @a[tag=!detached] switch.win_streak 5
scoreboard players set @a[tag=!detached,scores={switch.win_streak=..-6}] switch.win_streak -5


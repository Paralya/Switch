
#> switch:player/trigger/rating/print_current_game
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/beat_the_kings/process_end [ as @a[tag=!detached] ]
#			switch:modes/block_party/process_end [ as @a[tag=!detached] ]
#			switch:modes/boat_race/process_end [ as @a[tag=!detached] ]
#			switch:modes/bombardement/process_end [ as @a[tag=!detached] ]
#			switch:modes/build_battle/process_end [ as @a[tag=!detached] ]
#			switch:modes/capture_the_flag/process_end [ as @a[tag=!detached] ]
#			switch:modes/castagne/process_end [ as @a[tag=!detached] ]
#			switch:modes/cigogne/process_end [ as @a[tag=!detached] ]
#			switch:modes/coin_chaser/process_end [ as @a[tag=!detached] ]
#			switch:modes/creeper_apocalypse/process_end [ as @a[tag=!detached] ]
#			switch:modes/de_a_coudre/process_end [ as @a[tag=!detached] ]
#			switch:modes/feed_fast/process_end [ as @a[tag=!detached] ]
#			switch:modes/fireblast/process_end [ as @a[tag=!detached] ]
#			switch:modes/fish_fight/process_end [ as @a[tag=!detached] ]
#			switch:modes/gay_shooter/process_end [ as @a[tag=!detached] ]
#			switch:modes/glassrunner/end/process_end [ as @a[tag=!detached] ]
#			switch:modes/infected/process_end [ as @a[tag=!detached] ]
#			switch:modes/kart_racer/process_end [ as @a[tag=!detached] ]
#			switch:modes/laser_game/process_end [ as @a[tag=!detached] ]
#			switch:modes/layers_2_teams/process_end [ as @a[tag=!detached] ]
#			switch:modes/layers_4_teams/process_end [ as @a[tag=!detached] ]
#			switch:modes/memory_mine/process_end [ as @a[tag=!detached] ]
#			switch:modes/minigolf/process_end [ as @a[tag=!detached] ]
#			switch:modes/mlg_a_coudre/process_end [ as @a[tag=!detached] ]
#			switch:modes/moutron/process_end [ as @a[tag=!detached] ]
#			switch:modes/murder_mystery/process_end [ as @a[tag=!detached] ]
#			switch:modes/one_shot/process_end [ as @a[tag=!detached] ]
#			switch:modes/panic_chase/process_end [ as @a[tag=!detached] ]
#			switch:modes/pillars_of_fortune/process_end [ as @a[tag=!detached] ]
#			switch:modes/pitch_creep/process_end [ as @a[tag=!detached] ]
#			switch:modes/pitchout/process_end [ as @a[tag=!detached] ]
#			switch:modes/protect_the_king/process_end [ as @a[tag=!detached] ]
#			switch:modes/pvpswap/process_end [ as @a[tag=!detached] ]
#			switch:modes/replicate_the_build/process_end [ as @a[tag=!detached] ]
#			switch:modes/rush_the_flag/process_end [ as @a[tag=!detached] ]
#			switch:modes/rush_the_point/process_end [ as @a[tag=!detached] ]
#			switch:modes/sheepwars/process_end [ as @a[tag=!detached] ]
#			switch:modes/shoot_da_sheep/process_end [ as @a[tag=!detached] ]
#			switch:modes/simultaneous_jump/process_end [ as @a[tag=!detached] ]
#			switch:modes/snowball_painter/process_end [ as @a[tag=!detached] ]
#			switch:modes/spectres_game/process_end [ as @a[tag=!detached] ]
#			switch:modes/spleef/process_end [ as @a[tag=!detached] ]
#			switch:modes/thunder_spear/process_end [ as @a[tag=!detached] ]
#			switch:modes/tnt_run/process_end [ as @a[tag=!detached] ]
#			switch:modes/traitors_game/process_end [ as @a[tag=!detached] ]
#			switch:modes/warden_escape/process_end [ as @a[tag=!detached] ]
#

scoreboard players operation @s switch.trigger.rating = #game_1 switch.data
scoreboard players operation @s switch.trigger.rating *= #100 switch.data
function switch:player/trigger/main


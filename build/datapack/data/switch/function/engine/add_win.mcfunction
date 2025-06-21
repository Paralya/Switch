
#> switch:engine/add_win
#
# @within	switch:modes/beat_the_kings/detect_end
#			switch:modes/block_party/process_end
#			switch:modes/boat_race/process_end
#			switch:modes/bombardement/process_end
#			switch:modes/build_battle/rating_time/end_calculation
#			switch:modes/capture_the_flag/process_end
#			switch:modes/castagne/process_end
#			switch:modes/cigogne/process_end
#			switch:modes/coin_chaser/process_end
#			switch:modes/creeper_apocalypse/process_end
#			switch:modes/de_a_coudre/process_end
#			switch:modes/feed_fast/process_end
#			switch:modes/fireblast/process_end
#			switch:modes/fish_fight/process_end
#			switch:modes/fish_fight/teams_tp/only_one_winner
#			switch:modes/gay_shooter/detect_end
#			switch:modes/glassrunner/end/process_end
#			switch:modes/infected/process_end
#			switch:modes/kart_racer/process_end
#			switch:modes/laser_game/process_end
#			switch:modes/layers_2_teams/detect_end
#			switch:modes/layers_4_teams/detect_end
#			switch:modes/memory_mine/process_end
#			switch:modes/minigolf/process_end
#			switch:modes/mlg_a_coudre/process_end
#			switch:modes/moutron/process_end
#			switch:modes/murder_mystery/detect_end
#			switch:modes/one_shot/process_end
#			switch:modes/panic_chase/detect_end
#			switch:modes/pillars_of_fortune/process_end
#			switch:modes/pitch_creep/process_end
#			switch:modes/pitchout/process_end
#			switch:modes/protect_the_king/detect_end
#			switch:modes/pvpswap/process_end
#			switch:modes/replicate_the_build/process_end
#			switch:modes/rush_the_flag/process_end
#			switch:modes/rush_the_point/process_end
#			switch:modes/sheepwars/detect_end
#			switch:modes/shoot_da_sheep/process_end
#			switch:modes/simultaneous_jump/process_end
#			switch:modes/snowball_painter/process_end
#			switch:modes/spectres_game/detect_end
#			switch:modes/spleef/process_end
#			switch:modes/thunder_spear/process_end
#			switch:modes/tnt_run/process_end
#			switch:modes/traitors_game/detect_end
#			switch:modes/warden_escape/process_end
#

execute if score #test_mode switch.data matches 1.. run return 1

scoreboard players add @s switch.win_streak 6
execute if score @s switch.win_streak matches 5.. unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/30
scoreboard players add @s switch.stats.wins 1
execute unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/4
function switch:engine/add_win_macro with storage switch:main
function switch:engine/add_money


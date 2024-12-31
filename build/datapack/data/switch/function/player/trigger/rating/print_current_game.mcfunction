
#> switch:player/trigger/rating/print_current_game
#
# @within	switch:modes/beat_the_kings/process_end
#			switch:modes/block_party/process_end
#			switch:modes/boat_race/process_end
#			switch:modes/bombardement/process_end
#			switch:modes/build_battle/process_end
#			switch:modes/capture_the_flag/process_end
#			switch:modes/castagne/process_end
#			switch:modes/cigogne/process_end
#			switch:modes/coin_chaser/process_end
#			switch:modes/creeper_apocalypse/process_end
#			switch:modes/de_a_coudre/process_end
#			switch:modes/feed_fast/process_end
#			switch:modes/fireblast/process_end
#			switch:modes/fish_fight/process_end
#			switch:modes/gay_shooter/process_end
#			switch:modes/glassrunner/end/process_end
#			switch:modes/infected/process_end
#			switch:modes/kart_racer/process_end
#			switch:modes/laser_game/process_end
#			switch:modes/layers_2_teams/process_end
#			switch:modes/layers_4_teams/process_end
#			switch:modes/memory_mine/process_end
#			switch:modes/minigolf/process_end
#			switch:modes/mlg_a_coudre/process_end
#			switch:modes/moutron/process_end
#			switch:modes/murder_mystery/process_end
#			switch:modes/one_shot/process_end
#			switch:modes/panic_chase/process_end
#			switch:modes/pillars_of_fortune/process_end
#			switch:modes/pitchout/process_end
#			switch:modes/pitch_creep/process_end
#			switch:modes/protect_the_king/process_end
#			switch:modes/pvpswap/process_end
#			switch:modes/replicate_the_build/process_end
#			switch:modes/rush_the_flag/process_end
#			switch:modes/rush_the_point/process_end
#			switch:modes/sheepwars/process_end
#			switch:modes/shoot_da_sheep/process_end
#			switch:modes/simultaneous_jump/process_end
#			switch:modes/snowball_painter/process_end
#			switch:modes/spectres_game/process_end
#			switch:modes/spleef/process_end
#			switch:modes/thunder_spear/process_end
#			switch:modes/tnt_run/process_end
#			switch:modes/traitors_game/process_end
#			switch:modes/warden_escape/process_end
#

scoreboard players operation @s switch.trigger.rating = #game_1 switch.data
scoreboard players operation @s switch.trigger.rating *= #100 switch.data
function switch:player/trigger/


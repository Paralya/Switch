
#> switch:utils/set_dynamic_time
#
# @within	switch:modes/beat_the_kings/start
#			switch:modes/boat_race/start
#			switch:modes/build_battle/start
#			switch:modes/capture_the_flag/start
#			switch:modes/castagne/start
#			switch:modes/cigogne/start
#			switch:modes/coin_chaser/start
#			switch:modes/creeper_apocalypse/start
#			switch:modes/de_a_coudre/start
#			switch:modes/feed_fast/start
#			switch:modes/fish_fight/start
#			switch:modes/gay_shooter/start
#			switch:modes/kart_racer/start
#			switch:modes/layers_2_teams/start
#			switch:modes/layers_4_teams/start
#			switch:modes/memory_mine/start
#			switch:modes/minigolf/start
#			switch:modes/moutron/start
#			switch:modes/murder_mystery/start
#			switch:modes/one_shot/start
#			switch:modes/panic_chase/start
#			switch:modes/pillars_of_fortune/start
#			switch:modes/pitchout/start
#			switch:modes/protect_the_king/start
#			switch:modes/pvpswap/start
#			switch:modes/replicate_the_build/start
#			switch:modes/rush_the_point/start_common
#			switch:modes/sheepwars/start
#			switch:modes/shoot_da_sheep/start
#			switch:modes/simultaneous_jump/start
#			switch:modes/snowball_painter/start
#			switch:modes/spectres_game/start
#			switch:modes/spleef/start
#			switch:modes/thunder_spear/start
#			switch:modes/tnt_run/start
#			switch:modes/traitors_game/start
#

execute store result score #random switch.data run random value 0..2
execute if score #random switch.data matches 0 run time set 0
execute if score #random switch.data matches 1 run time set 6000
execute if score #random switch.data matches 2 run time set 12000


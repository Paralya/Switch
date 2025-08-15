
#> switch:utils/on_death_run_function
#
# @within	switch:modes/_coupdetat/tick {function:"switch:utils/classic_death"}
#			switch:modes/beat_the_kings/tick {function:"switch:modes/beat_the_kings/death/player"}
#			switch:modes/block_party/tick {function:"switch:modes/block_party/death"}
#			switch:modes/boat_race/tick {function:"switch:modes/boat_race/death/"}
#			switch:modes/bombardement/tick {function:"switch:modes/bombardement/death"}
#			switch:modes/capture_the_flag/tick {function:"switch:modes/capture_the_flag/death/player"}
#			switch:modes/castagne/tick {function:"switch:modes/castagne/death"}
#			switch:modes/cigogne/tick {function:"switch:modes/cigogne/death"}
#			switch:modes/coin_chaser/tick {function:"switch:modes/coin_chaser/respawn"}
#			switch:modes/creeper_apocalypse/tick {function:"switch:modes/creeper_apocalypse/death"}
#			switch:modes/de_a_coudre/tick {function:"switch:modes/de_a_coudre/death"}
#			switch:modes/feed_fast/tick {function:"switch:modes/feed_fast/death"}
#			switch:modes/fireblast/tick {function:"switch:modes/fireblast/death"}
#			switch:modes/fish_fight/tick {function:"switch:modes/fish_fight/death"}
#			switch:modes/gay_shooter/tick {function:"switch:modes/gay_shooter/death"}
#			switch:modes/glassrunner/tick {function:"switch:modes/glassrunner/death/death"}
#			switch:modes/infected/tick {function:"switch:modes/infected/death/zombie_spawn"}
#			switch:modes/kart_racer/tick {function:"switch:modes/kart_racer/joined"}
#			switch:modes/laser_game/tick {function:"switch:modes/laser_game/teleport_players"}
#			switch:modes/layers_2_teams/tick {function:"switch:modes/layers_2_teams/death"}
#			switch:modes/layers_4_teams/tick {function:"switch:modes/layers_4_teams/death"}
#			switch:modes/memory_mine/tick {function:"switch:modes/memory_mine/death"}
#			switch:modes/mlg_a_coudre/tick {function:"switch:modes/mlg_a_coudre/death"}
#			switch:modes/moutron/tick {function:"switch:modes/moutron/death"}
#			switch:modes/murder_mystery/tick {function:"switch:modes/murder_mystery/death"}
#			switch:modes/one_shot/tick {function:"switch:modes/one_shot/death"}
#			switch:modes/panic_chase/tick {function:"switch:modes/panic_chase/death"}
#			switch:modes/pillars_of_fortune/tick {function:"switch:modes/pillars_of_fortune/death"}
#			switch:modes/pitch_creep/tick {function:"switch:modes/pitch_creep/death"}
#			switch:modes/pitchout/tick {function:"switch:modes/pitchout/death"}
#			switch:modes/protect_the_king/tick {function:"switch:modes/protect_the_king/death"}
#			switch:modes/pvpswap/tick {function:"switch:modes/pvpswap/death"}
#			switch:modes/race/tick {function:"switch:modes/race/joined"}
#			switch:modes/replicate_the_build/tick {function:"switch:modes/replicate_the_build/death"}
#			switch:modes/rush_the_point/tick_common {function:"switch:modes/rush_the_point/death/player"}
#			switch:modes/sheepwars/tick {function:"switch:modes/sheepwars/death"}
#			switch:modes/shoot_da_sheep/tick {function:"switch:modes/shoot_da_sheep/joined"}
#			switch:modes/simultaneous_jump/tick {function:"switch:modes/simultaneous_jump/death"}
#			switch:modes/snowball_painter/tick {function:"switch:modes/snowball_painter/death"}
#			switch:modes/spectres_game/tick {function:"switch:modes/spectres_game/death/player"}
#			switch:modes/spleef/tick {function:"switch:modes/spleef/death"}
#			switch:modes/thunder_spear/tick {function:"switch:modes/thunder_spear/give_and_teleport"}
#			switch:modes/tnt_run/tick {function:"switch:modes/tnt_run/death"}
#			switch:modes/traitors_game/tick {function:"switch:modes/traitors_game/death/player"}
#			switch:modes/warden_escape/tick {function:"switch:modes/warden_escape/death"}
#

$execute as @a[tag=!detached,predicate=switch:is_at_spawn] run function $(function)


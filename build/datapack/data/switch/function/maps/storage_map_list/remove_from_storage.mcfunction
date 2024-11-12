
#> switch:maps/storage_map_list/remove_from_storage
#
# @within	switch:choose_map_for/boat_race
#			switch:choose_map_for/bombardement
#			switch:choose_map_for/border_run
#			switch:choose_map_for/build_battle
#			switch:choose_map_for/capture_the_flag
#			switch:choose_map_for/castagne
#			switch:choose_map_for/cigogne
#			switch:choose_map_for/coin_chaser
#			switch:choose_map_for/creeper_apocalypse
#			switch:choose_map_for/de_a_coudre
#			switch:choose_map_for/feed_fast
#			switch:choose_map_for/fireblast
#			switch:choose_map_for/fish_fight
#			switch:choose_map_for/gay_shooter
#			switch:choose_map_for/glassrunner
#			switch:choose_map_for/infected
#			switch:choose_map_for/kart_racer
#			switch:choose_map_for/laser_game
#			switch:choose_map_for/layers_2_teams
#			switch:choose_map_for/layers_4_teams
#			switch:choose_map_for/minigolf
#			switch:choose_map_for/mlg_a_coudre
#			switch:choose_map_for/moutron
#			switch:choose_map_for/murder_mystery
#			switch:choose_map_for/one_shot
#			switch:choose_map_for/panic_chase
#			switch:choose_map_for/pillars_of_fortune
#			switch:choose_map_for/pitchout
#			switch:choose_map_for/pitch_creep
#			switch:choose_map_for/protect_the_king
#			switch:choose_map_for/rush_the_point
#			switch:choose_map_for/sheepwars
#			switch:choose_map_for/shoot_da_sheep
#			switch:choose_map_for/simultaneous_jump
#			switch:choose_map_for/snowball_painter
#			switch:choose_map_for/spectres_game
#			switch:choose_map_for/spleef
#			switch:choose_map_for/thunder_spear
#			switch:choose_map_for/tnt_run
#			switch:choose_map_for/traitors_game
#			switch:choose_map_for/twittos_de_merde
#			switch:choose_map_for/warden_escape
#			switch:utils/choose_map_for
#

data modify storage switch:main new set value []
execute if data storage switch:main copy[0] run function switch:maps/storage_map_list/remove_from_storage_loop
function switch:translations/maps_storage_map_list_remove_from_storage


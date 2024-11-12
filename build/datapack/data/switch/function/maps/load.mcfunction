
#> switch:maps/load
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

## Choix d'une map random de la liste maps_to_choose
## Avec 5 essaies de choisir une map différente de la précédente
data modify storage switch:main previous_map set from storage switch:main map
scoreboard players set #try switch.data 5
scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:main maps_to_choose
function switch:maps/find_map

# Copy map
data modify storage switch:main map set from storage switch:main copy[0]
data modify storage switch:main previous_map set from storage switch:main map

# Load map
function switch:maps/load_gamemode

# Log message of which map is loaded
data modify storage switch:main MessageToLog set value '[{"text":"Selected map: `"},{"nbt":"map","storage":"switch:main","interpret":false},{"text":"`!"}]'
function switch:engine/log_message/apply

# Add map to history
data modify storage switch:main history.maps prepend from storage switch:main map

# As a new map is loaded, it has not been already regenerated
scoreboard players reset #already_regenerated switch.data


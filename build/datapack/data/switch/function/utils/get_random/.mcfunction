
#> switch:utils/get_random/
#
# @within	switch:engine/launch_game/get_random_max
#			switch:engine/voting_time/select_random_games
#			switch:maps/find_map
#			switch:modes/block_party/core/pick_random_art
#			switch:modes/block_party/core/remake_list/shuffle
#			switch:modes/build_battle/preparation/
#			switch:modes/murder_mystery/percentage/choose_pair
#			switch:modes/spectres_game/percentage/choose_spectre
#			switch:music/actions/random
#			switch:profiling/content
#

data modify storage switch:main temp set value {max:0}
scoreboard players operation #temp switch.data = #modulo_rand switch.data
scoreboard players remove #temp switch.data 1
execute store result storage switch:main temp.max int 1 run scoreboard players get #temp switch.data
function switch:utils/get_random/macro with storage switch:main temp


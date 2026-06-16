
#> switch:utils/get_random/main
#
# @within	switch:engine/launch_game/get_random_max
#			switch:maps/find_map
#			switch:music/actions/random
#			switch:profiling/content
#			switch:modes/block_party/core/pick_random_art
#			switch:modes/block_party/core/remake_list/shuffle
#			switch:modes/build_battle/preparation/get_random_theme
#			switch:modes/murder_mystery/percentage/_choose_from_list
#

data modify storage switch:main temp set value {max:0}
scoreboard players operation #temp switch.data = #modulo_rand switch.data
scoreboard players remove #temp switch.data 1
execute if score #temp switch.data matches ..-1 run return fail
execute store result storage switch:main temp.max int 1 run scoreboard players get #temp switch.data
function switch:utils/get_random/macro with storage switch:main temp


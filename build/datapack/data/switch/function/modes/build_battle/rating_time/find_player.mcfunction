
#> switch:modes/build_battle/rating_time/find_player
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/rating_time/next_rating
#			switch:modes/build_battle/rating_time/start 1t replace
#

# Execute as a random player that has not been rated yet
execute if score #build_battle_state switch.data matches 2 as @r[scores={switch.temp.to_rate=1}] run function switch:modes/build_battle/rating_time/choose_player


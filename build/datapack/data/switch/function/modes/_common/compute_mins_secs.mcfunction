
#> switch:modes/_common/compute_mins_secs
#
# @within	switch:modes/beat_the_kings/second
#			switch:modes/capture_the_flag/second
#			switch:modes/castagne/second
#			switch:modes/glassrunner/second
#			switch:modes/layers_2_teams/second
#			switch:modes/layers_4_teams/second
#			switch:modes/one_shot/second
#			switch:modes/pillars_of_fortune/second
#			switch:modes/protect_the_king/second
#			switch:modes/rush_the_point/second_common
#			switch:modes/sheepwars/second
#			switch:modes/spectres_game/second
#			switch:modes/traitors_game/second
#

scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data


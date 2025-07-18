
#> switch:stats/sort_minigames_stats/get_max_from_arrays
#
# @within	switch:stats/sort_minigames_stats/get_max_from_arrays
#			switch:stats/sort_minigames_stats/loop_played_and_wins
#

# Compare for the played array
execute store result score #temp switch.data run data get storage switch:temp sms_copy_played[0].value
execute if score #temp switch.data > #max_value_played switch.data run scoreboard players operation #max_index_played switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_played switch.data run scoreboard players operation #max_value_played switch.data = #temp switch.data

# Compare for the wins array
execute store result score #temp switch.data run data get storage switch:temp sms_copy_wins[0].value
execute if score #temp switch.data > #max_value_wins switch.data run scoreboard players operation #max_index_wins switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_wins switch.data run scoreboard players operation #max_value_wins switch.data = #temp switch.data

# Compare for the played_win_ratio array
execute store result score #temp switch.data run data get storage switch:temp sms_copy_played_win_ratio[0].value
execute if score #temp switch.data > #max_value_played_win_ratio switch.data run scoreboard players operation #max_index_played_win_ratio switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_played_win_ratio switch.data run scoreboard players operation #max_value_played_win_ratio switch.data = #temp switch.data

# Go next (loop)
scoreboard players add #current_index switch.data 1
data remove storage switch:temp sms_copy_played[0]
data remove storage switch:temp sms_copy_wins[0]
data remove storage switch:temp sms_copy_played_win_ratio[0]
execute if data storage switch:temp sms_copy_played[0] run function switch:stats/sort_minigames_stats/get_max_from_arrays


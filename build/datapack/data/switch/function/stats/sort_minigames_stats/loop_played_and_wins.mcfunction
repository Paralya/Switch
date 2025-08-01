
#> switch:stats/sort_minigames_stats/loop_played_and_wins
#
# @within	switch:stats/sort_minigames_stats/loop_played_and_wins
#

# Copy the played and wins arrays to the temp arrays
data modify storage switch:temp sms_copy_played set from storage switch:temp sms_played
data modify storage switch:temp sms_copy_wins set from storage switch:temp sms_wins
data modify storage switch:temp sms_copy_played_win_ratio set from storage switch:temp sms_played_win_ratio

# Find the index of the highest value in the played and wins arrays
scoreboard players set #current_index switch.data 0
scoreboard players set #max_value_played switch.data 0
scoreboard players set #max_value_wins switch.data 0
scoreboard players set #max_value_played_win_ratio switch.data 0
scoreboard players set #max_index_played switch.data 0
scoreboard players set #max_index_wins switch.data 0
scoreboard players set #max_index_played_win_ratio switch.data 0
execute if data storage switch:temp sms_copy_played[0] run function switch:stats/sort_minigames_stats/get_max_from_arrays

# Add the highest value to the new arrays
data modify storage switch:temp sms_indexes set value {played:0,wins:0,played_win_ratio:0}
execute store result storage switch:temp sms_indexes.played int 1 run scoreboard players get #max_index_played switch.data
execute store result storage switch:temp sms_indexes.wins int 1 run scoreboard players get #max_index_wins switch.data
execute store result storage switch:temp sms_indexes.played_win_ratio int 1 run scoreboard players get #max_index_played_win_ratio switch.data
function switch:stats/sort_minigames_stats/macro_add_to_new_arrays with storage switch:temp sms_indexes

# Increment sorted count
scoreboard players add #sorted_count switch.data 1

# Loop through the rest of the values (up to 15)
execute if score #sorted_count switch.data matches ..15 if data storage switch:temp sms_played[0] run return run function switch:stats/sort_minigames_stats/loop_played_and_wins

# If 15 elements were sorted, append the rest
execute if score #sorted_count switch.data matches 16 run function switch:stats/sort_minigames_stats/append_remaining



# Compare for the played array
execute store result score #temp switch.data run data get storage switch:temp copy_played[0].value
execute if score #temp switch.data > #max_value_played switch.data run scoreboard players operation #max_index_played switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_played switch.data run scoreboard players operation #max_value_played switch.data = #temp switch.data

# Compare for the wins array
execute store result score #temp switch.data run data get storage switch:temp copy_wins[0].value
execute if score #temp switch.data > #max_value_wins switch.data run scoreboard players operation #max_index_wins switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_wins switch.data run scoreboard players operation #max_value_wins switch.data = #temp switch.data

# Compare for the kills array
execute store result score #temp switch.data run data get storage switch:temp copy_kills[0].value
execute if score #temp switch.data > #max_value_kills switch.data run scoreboard players operation #max_index_kills switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_kills switch.data run scoreboard players operation #max_value_kills switch.data = #temp switch.data

# Compare for the deaths array
execute store result score #temp switch.data run data get storage switch:temp copy_deaths[0].value
execute if score #temp switch.data > #max_value_deaths switch.data run scoreboard players operation #max_index_deaths switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_deaths switch.data run scoreboard players operation #max_value_deaths switch.data = #temp switch.data

# Compare for the money array
execute store result score #temp switch.data run data get storage switch:temp copy_money[0].value
execute if score #temp switch.data > #max_value_money switch.data run scoreboard players operation #max_index_money switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_money switch.data run scoreboard players operation #max_value_money switch.data = #temp switch.data

# Compare for the played_win_ratio array
execute store result score #temp switch.data run data get storage switch:temp copy_played_win_ratio[0].value 1000
execute if score #temp switch.data > #max_value_played_win_ratio switch.data run scoreboard players operation #max_index_played_win_ratio switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_played_win_ratio switch.data run scoreboard players operation #max_value_played_win_ratio switch.data = #temp switch.data

# Compare for the advancement_count array
execute store result score #temp switch.data run data get storage switch:temp copy_advancement_count[0].value
execute if score #temp switch.data > #max_value_advancement_count switch.data run scoreboard players operation #max_index_advancement_count switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_advancement_count switch.data run scoreboard players operation #max_value_advancement_count switch.data = #temp switch.data

# Go next (loop)
scoreboard players add #current_index switch.data 1
data remove storage switch:temp copy_played[0]
data remove storage switch:temp copy_wins[0]
data remove storage switch:temp copy_kills[0]
data remove storage switch:temp copy_deaths[0]
data remove storage switch:temp copy_money[0]
data remove storage switch:temp copy_played_win_ratio[0]
data remove storage switch:temp copy_advancement_count[0]
execute if data storage switch:temp copy_played[0] run function switch:stats/get_max_from_player_arrays


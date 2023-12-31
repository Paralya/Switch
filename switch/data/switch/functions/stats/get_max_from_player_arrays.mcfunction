
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

# Go next (loop)
scoreboard players add #current_index switch.data 1
data remove storage switch:temp copy_played[0]
data remove storage switch:temp copy_wins[0]
data remove storage switch:temp copy_kills[0]
data remove storage switch:temp copy_deaths[0]
data remove storage switch:temp copy_money[0]
execute if data storage switch:temp copy_played[0] run function switch:stats/get_max_from_player_arrays


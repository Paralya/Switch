
execute unless score #index switch.data matches 1 if score #list_index switch.data = #random switch.data store result score #min_players switch.data run data get storage switch:main copy[0].min_players
execute if score #index switch.data matches 1 if score #list_index switch.data = #game_1 switch.data store result score #min_players switch.data run data get storage switch:main copy[0].min_players

data remove storage switch:main copy[0]
scoreboard players add #list_index switch.data 1
execute if score #min_players switch.data matches 0 if data storage switch:main copy[0] run function switch:engine/voting_time/get/index_min_players


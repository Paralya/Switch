
#> switch:engine/voting_time/get/index_max_players
#
# @within	switch:engine/voting_time/get/index_max_players
#			switch:engine/voting_time/get/max_players
#

execute unless score #index switch.data matches 1 if score #list_index switch.data = #random switch.data store result score #max_players switch.data run data get storage switch:main copy[0].max_players
execute if score #index switch.data matches 1 if score #list_index switch.data = #game_1 switch.data store result score #max_players switch.data run data get storage switch:main copy[0].max_players

data remove storage switch:main copy[0]
scoreboard players add #list_index switch.data 1
execute if score #max_players switch.data matches 0 if data storage switch:main copy[0] run function switch:engine/voting_time/get/index_max_players


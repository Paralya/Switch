
#> switch:engine/voting_time/get/index_information
#
# @within	switch:engine/voting_time/get/index_information
#			switch:engine/voting_time/get/information
#

scoreboard players set #success switch.data 0
execute if score #index switch.data matches 1 if score #list_index switch.data = #game_1 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 2 if score #list_index switch.data = #game_2 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 3 if score #list_index switch.data = #game_3 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 4 if score #list_index switch.data = #game_4 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 5 if score #list_index switch.data = #game_5 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]
execute if score #index switch.data matches 6 if score #list_index switch.data = #game_6 switch.data store success score #success switch.data run data modify storage switch:main selections append from storage switch:main copy[0]

data remove storage switch:main copy[0]
scoreboard players add #list_index switch.data 1
execute if score #success switch.data matches 0 if data storage switch:main copy[0] run function switch:engine/voting_time/get/index_information


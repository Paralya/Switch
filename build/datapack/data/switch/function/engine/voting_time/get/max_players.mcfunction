
#> switch:engine/voting_time/get/max_players
#
# @within	switch:engine/voting_time/select_random_games
#

scoreboard players set #max_players switch.data 0
scoreboard players set #list_index switch.data 1
data modify storage switch:main copy set from storage switch:main minigames
function switch:engine/voting_time/get/index_max_players
execute if score #max_players switch.data matches -1 run scoreboard players set #max_players switch.data 2147483647


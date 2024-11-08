
#> switch:engine/voting_time/get/min_players
#
# @within	switch:engine/voting_time/select_random_games
#

scoreboard players set #min_players switch.data 0
scoreboard players set #list_index switch.data 1
data modify storage switch:main copy set from storage switch:main minigames
function switch:engine/voting_time/get/index_min_players


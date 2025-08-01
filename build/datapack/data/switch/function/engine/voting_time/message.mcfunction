
#> switch:engine/voting_time/message
#
# @executed	as @a[tag=!detached]
#
# @within	switch:engine/voting_time/main [ as @a[tag=!detached] ]
#			switch:engine/voting_time/player_join
#			switch:engine/voting_time/tick [ as @a[tag=!detached] ]
#			switch:player/tutorial/second
#

data modify storage switch:main msg_votes set value [" vote", " vote", " vote", " vote", " vote", " vote"]
execute if score #vote_game_1 switch.data matches 2.. run data modify storage switch:main msg_votes[0] set value " votes"
execute if score #vote_game_2 switch.data matches 2.. run data modify storage switch:main msg_votes[1] set value " votes"
execute if score #vote_game_3 switch.data matches 2.. run data modify storage switch:main msg_votes[2] set value " votes"
execute if score #vote_game_4 switch.data matches 2.. run data modify storage switch:main msg_votes[3] set value " votes"
execute if score #vote_game_5 switch.data matches 2.. run data modify storage switch:main msg_votes[4] set value " votes"
execute if score #vote_game_6 switch.data matches 2.. run data modify storage switch:main msg_votes[5] set value " votes"

# Edit the last vote to make it hidden
data modify storage switch:main selections[5].lore_fr set value ["",{"text":"[Aléatoire]\n","color":"yellow"},{"text":"Jeu totalement aléatoire qui n'est pas\n"},{"text":"présent parmi les 5 au dessus"}]
data modify storage switch:main selections[5].name_fr set value "Aléatoire"
data modify storage switch:main selections[5].lore_en set value ["",{"text":"[Random]\n","color":"yellow"},{"text":"Game completely random that is not\n"},{"text":"present among the 5 above"}]
data modify storage switch:main selections[5].name_en set value "Random"

# Tellraw
function switch:translations/engine_voting_time_message
scoreboard players reset #for_tutorial switch.data


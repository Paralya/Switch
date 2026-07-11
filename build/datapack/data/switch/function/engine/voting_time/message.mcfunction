
#> switch:engine/voting_time/message
#
# @executed	as @a[tag=!detached]
#
# @within	switch:engine/voting_time/main [ as @a[tag=!detached] ]
#			switch:engine/voting_time/group_vote [ as @a[tag=!detached] ]
#			switch:engine/voting_time/player_join
#			switch:engine/voting_time/schedule_message [ as @a[tag=!detached] ]
#			switch:engine/voting_time/update_votes [ as @a[tag=switch.temp] ]
#			switch:player/tutorial/second
#

data modify storage switch:main msg_votes set value [" vote", " vote", " vote", " vote", " vote", " vote", " vote", " vote"]
execute if score #vote_game_1 switch.data matches 2.. run data modify storage switch:main msg_votes[0] set value " votes"
execute if score #vote_game_2 switch.data matches 2.. run data modify storage switch:main msg_votes[1] set value " votes"
execute if score #vote_game_3 switch.data matches 2.. run data modify storage switch:main msg_votes[2] set value " votes"
execute if score #vote_game_4 switch.data matches 2.. run data modify storage switch:main msg_votes[3] set value " votes"
execute if score #vote_game_5 switch.data matches 2.. run data modify storage switch:main msg_votes[4] set value " votes"
execute if score #vote_game_6 switch.data matches 2.. run data modify storage switch:main msg_votes[5] set value " votes"
execute if score #vote_game_7 switch.data matches 2.. run data modify storage switch:main msg_votes[6] set value " votes"
execute if score #vote_game_8 switch.data matches 2.. run data modify storage switch:main msg_votes[7] set value " votes"

# Edit the last vote to make it hidden (round 1 only, round 2 has no random slot)
execute if score #vote_round switch.data matches 1 run data modify storage switch:main selections[7].lore_fr set value ["",{"text":"[Aléatoire]\n","color":"yellow"},{"text":"Jeu totalement aléatoire qui n'est pas\n"},{"text":"présent parmi les 7 au dessus"}]
execute if score #vote_round switch.data matches 1 run data modify storage switch:main selections[7].name_fr set value "Aléatoire"
execute if score #vote_round switch.data matches 1 run data modify storage switch:main selections[7].display_name_fr set value {"text":"Aléatoire","color":"yellow"}
execute if score #vote_round switch.data matches 1 run data modify storage switch:main selections[7].lore_en set value ["",{"text":"[Random]\n","color":"yellow"},{"text":"Game completely random that is not\n"},{"text":"present among the 7 above"}]
execute if score #vote_round switch.data matches 1 run data modify storage switch:main selections[7].name_en set value "Random"
execute if score #vote_round switch.data matches 1 run data modify storage switch:main selections[7].display_name_en set value {"text":"Random","color":"yellow"}

# Tellraw
function switch:engine/translations/voting_time_message
scoreboard players reset #for_tutorial switch.data


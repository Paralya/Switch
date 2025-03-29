
#> switch:translations/engine_voting_time_message
#
# @within	switch:engine/voting_time/message
#

# French
execute unless score #for_tutorial switch.data matches 1 run tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Veuillez voter pour le prochain mini-jeu parmi les suivants :\n"},{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[0].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_1","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[0]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[1].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_2","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[1]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[2].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_3","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[2]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[3].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_4","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[3]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[4].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_5","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[4]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[5].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_6","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[5]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}}]
execute if score #for_tutorial switch.data matches 1 run tellraw @s[scores={switch.lang=0}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[0].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_1","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[0]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[1].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_2","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[1]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[2].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_3","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[2]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[3].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_4","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[3]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[4].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_5","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[4]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_fr","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"selections[5].name_fr","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_6","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[5]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_fr","storage":"switch:main","interpret":true}]}}]

# English
execute unless score #for_tutorial switch.data matches 1 run tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Please vote for the next mini-game among the following ones:\n"},{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[0].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_1","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[0]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[1].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_2","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[1]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[2].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_3","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[2]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[3].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_4","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[3]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[4].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_5","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[4]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[5].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_6","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[5]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}}]
execute if score #for_tutorial switch.data matches 1 run tellraw @s[scores={switch.lang=1}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[0].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_1","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[0]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 1"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[0].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[1].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_2","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[1]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 2"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[1].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[2].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_3","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[2]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 3"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[2].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[3].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_4","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[3]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 4"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[3].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[4].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_5","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[4]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 5"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[4].lore_en","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"selections[5].name_en","storage":"switch:main","interpret":false,"color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_6","objective":"switch.data"},"color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[5]","storage":"switch:main","color":"aqua","click_event":{"action":"run_command","command":"/trigger switch.trigger.game_vote set 6"},"hover_event":{"action":"show_text","value":[{"nbt":"selections[5].lore_en","storage":"switch:main","interpret":true}]}}]


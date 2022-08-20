
scoreboard players set #state switch.data 2

scoreboard players set #voting_timer switch.data 300

scoreboard players set #list_length switch.data 0
execute store result score #list_length switch.data run data get storage switch:main minigames

scoreboard players add #game_1 switch.data 0
scoreboard players set #game_2 switch.data 0
scoreboard players set #game_3 switch.data 0
scoreboard players set #game_4 switch.data 0
scoreboard players set #game_5 switch.data 0
scoreboard players set #index switch.data 2

function switch:engine/voting_time/select_random_games

data modify storage switch:main selections set value []

scoreboard players set #index switch.data 1
function switch:engine/voting_time/get_information

scoreboard players set #vote_game_1 switch.data 0
scoreboard players set #vote_game_2 switch.data 0
scoreboard players set #vote_game_3 switch.data 0
scoreboard players set #vote_game_4 switch.data 0
scoreboard players set #vote_game_5 switch.data 0
scoreboard players set @a switch.trigger.game_vote 0
execute as @a run function switch:engine/voting_time/message

schedule function switch:engine/voting_time/tick 1t

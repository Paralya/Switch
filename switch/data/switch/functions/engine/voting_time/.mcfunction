
scoreboard players set #state switch.data 2

scoreboard players set #voting_timer switch.data 299

scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:main minigames

scoreboard players add #game_1 switch.data 0
scoreboard players set #game_2 switch.data 0
scoreboard players set #game_3 switch.data 0
scoreboard players set #game_4 switch.data 0
scoreboard players set #game_5 switch.data 0
scoreboard players set #game_6 switch.data 0
scoreboard players set #index switch.data 1

scoreboard players set #player_count switch.data 0
execute store result score #player_count switch.data if entity @a[tag=!switch.detached]
scoreboard players set #max_tries switch.data 100
function switch:engine/voting_time/select_random_games

data modify storage switch:main selections set value []

scoreboard players set #index switch.data 1
function switch:engine/voting_time/get/information

scoreboard players set #vote_game_1 switch.data 0
scoreboard players set #vote_game_2 switch.data 0
scoreboard players set #vote_game_3 switch.data 0
scoreboard players set #vote_game_4 switch.data 0
scoreboard players set #vote_game_5 switch.data 0
scoreboard players set #vote_game_6 switch.data 0
scoreboard players set @a switch.trigger.game_vote 0
execute as @a[tag=!switch.detached] run function switch:engine/voting_time/message

schedule function switch:engine/voting_time/tick 1t


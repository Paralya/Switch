
scoreboard players set #vote_game_1 switch.data 0
scoreboard players set #vote_game_2 switch.data 0
scoreboard players set #vote_game_3 switch.data 0
scoreboard players set #vote_game_4 switch.data 0
scoreboard players set #vote_game_5 switch.data 0
scoreboard players set #vote_game_6 switch.data 0

tag @a[tag=!detached,scores={switch.trigger.game_vote=1..}] add switch.temp
execute as @a[tag=switch.temp] at @s run playsound ui.button.click ambient @s
scoreboard players operation @a[tag=switch.temp] switch.trigger.game_vote *= #-1 switch.data
execute store result score #vote_game_1 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-1}]
execute store result score #vote_game_2 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-2}]
execute store result score #vote_game_3 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-3}]
execute store result score #vote_game_4 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-4}]
execute store result score #vote_game_5 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-5}]
execute store result score #vote_game_6 switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=-6}]

scoreboard players set #success switch.data 1

# Update the message for the player who just voted
execute as @a[tag=switch.temp] run function switch:engine/voting_time/message
tag @a[tag=switch.temp] remove switch.temp


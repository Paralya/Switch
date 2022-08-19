
scoreboard players set #vote_game_1 switch.data 0
scoreboard players set #vote_game_2 switch.data 0
scoreboard players set #vote_game_3 switch.data 0
scoreboard players set #vote_game_4 switch.data 0
scoreboard players set #vote_game_5 switch.data 0

scoreboard players operation @a[scores={switch.trigger.game_vote=1..}] switch.trigger.game_vote *= #-1 switch.data
execute store result score #vote_game_1 switch.data if entity @a[scores={switch.trigger.game_vote=-1}]
execute store result score #vote_game_2 switch.data if entity @a[scores={switch.trigger.game_vote=-2}]
execute store result score #vote_game_3 switch.data if entity @a[scores={switch.trigger.game_vote=-3}]
execute store result score #vote_game_4 switch.data if entity @a[scores={switch.trigger.game_vote=-4}]
execute store result score #vote_game_5 switch.data if entity @a[scores={switch.trigger.game_vote=-5}]



scoreboard players remove #voting_timer switch.data 1

scoreboard players set #success switch.data 0
execute if entity @a[scores={switch.trigger.game_vote=1..}] run function switch:engine/voting_time/update_votes
execute if score #success switch.data matches 1 as @a run function switch:engine/voting_time/message

execute if score #voting_timer switch.data matches 0 run function switch:engine/launch_game
execute if score #voting_timer switch.data matches 1.. run schedule function switch:engine/voting_time/tick 1t

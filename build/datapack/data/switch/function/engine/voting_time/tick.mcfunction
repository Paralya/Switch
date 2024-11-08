
#> switch:engine/voting_time/tick
#
# @within	switch:engine/voting_time/ 1t
#			switch:engine/voting_time/tick 1t
#

execute unless score #engine_state switch.data matches 2 run return 1

scoreboard players set #success switch.data 0
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=1..}] run function switch:engine/voting_time/update_votes
execute if score #success switch.data matches 1 as @a[tag=!detached] run function switch:engine/voting_time/message

scoreboard players set #vote_count switch.data 0
scoreboard players set #player_count switch.data 0
execute store result score #player_count switch.data if entity @a[tag=!detached]
execute store result score #vote_count switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}]
execute if score #voting_timer switch.data matches 100.. if score #player_count switch.data = #vote_count switch.data run function switch:engine/voting_time/speed_up

# Remove timer if there is at least one vote
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] run scoreboard players remove #voting_timer switch.data 1

scoreboard players set #remaining switch.data 0
scoreboard players operation #remaining switch.data = #voting_timer switch.data
scoreboard players operation #remaining switch.data /= #20 switch.data
scoreboard players add #remaining switch.data 1
function switch:translations/engine_voting_time_tick

execute if score #voting_timer switch.data matches 0 run function switch:engine/launch_game/
execute if score #voting_timer switch.data matches 1.. run schedule function switch:engine/voting_time/tick 1t


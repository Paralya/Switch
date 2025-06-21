
# Return if not in voting state (2)
execute unless score #engine_state switch.data matches 2 run return 1

# Check for new votes and update
scoreboard players set #success switch.data 0
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=1..}] run function switch:engine/voting_time/update_votes
execute if score #success switch.data matches 1 as @a[tag=!detached] run function switch:engine/voting_time/message

# Count total players and votes
scoreboard players set #vote_count switch.data 0
scoreboard players set #player_count switch.data 0
execute store result score #player_count switch.data if entity @a[tag=!detached]
execute store result score #vote_count switch.data if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}]
# Speed up voting if everyone has voted and more than 5 seconds left
execute if score #voting_timer switch.data matches 100.. if score #player_count switch.data = #vote_count switch.data run function switch:engine/voting_time/speed_up

# Decrease timer if at least one vote exists
execute if entity @a[tag=!detached,scores={switch.trigger.game_vote=..-1}] run scoreboard players remove #voting_timer switch.data 1

# Calculate and display remaining time in seconds
scoreboard players set #remaining switch.data 0
scoreboard players operation #remaining switch.data = #voting_timer switch.data
scoreboard players operation #remaining switch.data /= #20 switch.data
scoreboard players add #remaining switch.data 1
function switch:translations/engine_voting_time_tick

# End of voting sequence (kill players to remove arrows for example)
execute if score #voting_timer switch.data matches 12 as @a[tag=!detached] run function switch:utils/black_transition
execute if score #voting_timer switch.data matches 1 run scoreboard players remove @a[tag=!detached] switch.stats.deaths 1
#execute if score #voting_timer switch.data matches 1 run kill @a[tag=!detached]
execute if score #voting_timer switch.data matches 0 run function switch:engine/launch_game/main

# Schedule next tick if timer hasn't expired
execute if score #voting_timer switch.data matches 1.. run schedule function switch:engine/voting_time/tick 1t


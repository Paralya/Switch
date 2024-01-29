
# Check if there are enough players to start the game
execute store result score #nb_attached switch.data if entity @a[tag=!detached]
execute if score #nb_attached switch.data matches 5.. run scoreboard players set #engine_state switch.data 1
execute if score #nb_attached switch.data matches 5.. run gamerule sendCommandFeedback false
execute if score #nb_attached switch.data matches 5.. run function switch:engine/voting_time/

# Else,
execute unless score #nb_attached switch.data matches 5.. run gamerule sendCommandFeedback true
execute unless score #nb_attached switch.data matches 5.. run gamemode spectator @a[tag=!detached]
execute unless score #nb_attached switch.data matches 5.. in overworld as @a[tag=!detached] unless entity @s[x=0,y=69,z=0,distance=..200] run tp @s 0 69 0


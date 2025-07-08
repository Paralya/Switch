
# Get the number of players currently attached to the switch engine
execute store result score #nb_attached switch.data if entity @a[tag=!detached]

# Check if there is a coup d'état in progress, if it's valid, stop the vote by launching the game mode
execute if score #coupdetat switch.data matches 1 run function switch:engine/check_coupdetat
execute if score #coupdetat switch.data matches 1 as @n[tag=switch.coupdetat] in switch:game run return run function switch:modes/_coupdetat/_force_start

# Check if there are enough players to start the game
execute if score #nb_attached switch.data >= #min_required switch.data run function switch:engine/voting_time/main

# Else,
execute unless score #nb_attached switch.data >= #min_required switch.data run gamerule sendCommandFeedback true
execute unless score #nb_attached switch.data >= #min_required switch.data run gamemode spectator @a[tag=!detached]
execute unless score #nb_attached switch.data >= #min_required switch.data in minecraft:overworld as @a[tag=!detached] unless entity @s[x=0,y=69,z=0,distance=..200] run tp @s 0 69 0


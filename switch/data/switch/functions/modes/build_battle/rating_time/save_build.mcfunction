
# Save the temporary build at this position
place template switch:temp

# Check if the current player is the best so far
scoreboard players set #max switch.data 0
scoreboard players operation #max switch.data > @a switch.temp.points
scoreboard players set #best switch.data 0
execute as @p[scores={switch.temp.to_rate=2}] if score #max switch.data = @s switch.temp.points run scoreboard players set #best switch.data 1

# If player is not the best, remove the marker
execute if score #best switch.data matches 0 run forceload remove ~-16 ~-16 ~48 ~48
execute if score #best switch.data matches 0 run kill @s

# Else, change marker tags
execute if score #best switch.data matches 1 run kill @e[type=marker,tag=switch.build_battle.best]
execute if score #best switch.data matches 1 run data modify entity @s Tags set value ["switch.build_battle.best"]


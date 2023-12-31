
# Store ID in storage
execute store result storage switch:temp temp int 1 run scoreboard players get @s switch.id

# Add it multiple times
scoreboard players operation #count switch.data = @s switch.games_not_being_detective
execute if score #count switch.data matches 1.. run function switch:modes/murder_mystery/percentage/get_detective_id_loop


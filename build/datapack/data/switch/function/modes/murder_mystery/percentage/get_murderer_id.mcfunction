
#> switch:modes/murder_mystery/percentage/get_murderer_id
#
# @within	switch:modes/murder_mystery/percentage/choose_pair
#

# Store ID in storage
execute store result storage switch:temp temp int 1 run scoreboard players get @s switch.id

# Add it multiple times
scoreboard players operation #count switch.data = @s switch.games_not_being_murderer
execute if score #count switch.data matches 1.. run function switch:modes/murder_mystery/percentage/get_murderer_id_loop



#> switch:modes/spectres_game/percentage/get_spectre_id
#
# @within	switch:modes/spectres_game/percentage/choose_spectre
#

# Store ID in storage
execute store result storage switch:temp temp int 1 run scoreboard players get @s switch.id

# Add it multiple times
scoreboard players set #count switch.data 0
scoreboard players operation #count switch.data = @s switch.games_not_being_spectre
execute if score #count switch.data matches 0.. run function switch:modes/spectres_game/percentage/get_spectre_id_loop


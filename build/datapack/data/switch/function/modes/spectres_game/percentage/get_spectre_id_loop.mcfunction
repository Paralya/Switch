
#> switch:modes/spectres_game/percentage/get_spectre_id_loop
#
# @within	switch:modes/spectres_game/percentage/get_spectre_id
#			switch:modes/spectres_game/percentage/get_spectre_id_loop
#

# Add the ID to the list
data modify storage switch:temp list append from storage switch:temp temp

# Loop again
scoreboard players remove #count switch.data 1
execute if score #count switch.data matches 0.. run function switch:modes/spectres_game/percentage/get_spectre_id_loop


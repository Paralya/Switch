
# Add the ID to the list
data modify storage switch:temp list append from storage switch:temp temp

# Loop again
scoreboard players remove #count switch.data 1
execute if score #count switch.data matches 1.. run function switch:modes/murder_mystery/percentage/get_murderer_id_loop


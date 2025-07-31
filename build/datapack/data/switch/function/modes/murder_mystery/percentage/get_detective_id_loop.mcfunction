
#> switch:modes/murder_mystery/percentage/get_detective_id_loop
#
# @executed	as @a[scores={switch.temp.role=1}]
#
# @within	switch:modes/murder_mystery/percentage/get_detective_id
#			switch:modes/murder_mystery/percentage/get_detective_id_loop
#

# Add the ID to the list
data modify storage switch:temp list append from storage switch:temp temp

# Loop again
scoreboard players remove #count switch.data 1
execute if score #count switch.data matches 1.. run function switch:modes/murder_mystery/percentage/get_detective_id_loop


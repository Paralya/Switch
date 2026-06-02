
## Choose a murderer
# Get a list of all players ID multiplied by their score
data modify storage switch:temp list set value []
execute as @a[scores={switch.temp.role=1}] run function switch:modes/murder_mystery/percentage/get_murderer_id

# Choose a random ID from the list
function switch:modes/murder_mystery/percentage/_choose_from_list
execute as @a[scores={switch.temp.role=1}] if score @s switch.id = #chosen_id switch.data run scoreboard players set @s switch.temp.role 3


## Choose a detective
# Get a list of all players ID multiplied by their score
data modify storage switch:temp list set value []
execute as @a[scores={switch.temp.role=1}] run function switch:modes/murder_mystery/percentage/get_detective_id

# Choose a random ID from the list
function switch:modes/murder_mystery/percentage/_choose_from_list
execute as @a[scores={switch.temp.role=1}] if score @s switch.id = #chosen_id switch.data run scoreboard players set @s switch.temp.role 2


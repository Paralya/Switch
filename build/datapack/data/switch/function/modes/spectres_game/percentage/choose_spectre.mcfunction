
#> switch:modes/spectres_game/percentage/choose_spectre
#
# @within	switch:modes/spectres_game/percentage/choose_spectre
#			switch:modes/spectres_game/percentage/select_roles
#

# Get a list of all players ID multiple times depending on their score
data modify storage switch:temp list set value []
execute as @a[team=switch.temp.visible] run function switch:modes/spectres_game/percentage/get_spectre_id

## Choose a random ID from the list
# Get a random value from 0 to the length of the list
data modify storage switch:temp input set value {index:0}
execute store result score #modulo_rand switch.data run data get storage switch:temp list
function switch:utils/get_random/main
execute store result storage switch:temp input.index int 1 run scoreboard players get #random switch.data

# Get the ID from the list
scoreboard players set #chosen_id switch.data 0
function switch:modes/spectres_game/percentage/get_id_from_list with storage switch:temp input
execute as @a[team=switch.temp.visible] if score @s switch.id = #chosen_id switch.data run team join switch.temp.spectre

# Loop again until all spectres are chosen
scoreboard players remove #spectre_to_choose switch.data 1
execute if score #spectre_to_choose switch.data matches 1.. run function switch:modes/spectres_game/percentage/choose_spectre


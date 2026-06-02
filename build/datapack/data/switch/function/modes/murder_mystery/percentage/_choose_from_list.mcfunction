
#> switch:modes/murder_mystery/percentage/_choose_from_list
#
# @within	switch:modes/murder_mystery/percentage/choose_pair
#			switch:modes/spectres_game/percentage/choose_spectre
#

data modify storage switch:temp input set value {index:0}
execute store result score #modulo_rand switch.data run data get storage switch:temp list
function switch:utils/get_random/main
execute store result storage switch:temp input.index int 1 run scoreboard players get #random switch.data
scoreboard players set #chosen_id switch.data 0
function switch:modes/murder_mystery/percentage/get_id_from_list with storage switch:temp input


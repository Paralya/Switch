
#> switch:modes/spectres_game/percentage/get_id_from_list
#
# @within	switch:modes/spectres_game/percentage/choose_spectre with storage switch:temp input
#

$execute store result score #chosen_id switch.data run data get storage switch:temp list[$(index)]


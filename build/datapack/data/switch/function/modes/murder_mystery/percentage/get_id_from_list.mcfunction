
#> switch:modes/murder_mystery/percentage/get_id_from_list
#
# @within	switch:modes/murder_mystery/percentage/_choose_from_list with storage switch:temp input
#
# @args		index (int)
#

$execute store result score #chosen_id switch.data run data get storage switch:temp list[$(index)]


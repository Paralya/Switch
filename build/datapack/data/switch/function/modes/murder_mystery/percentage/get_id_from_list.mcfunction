
#> switch:modes/murder_mystery/percentage/get_id_from_list
#
# @within	switch:modes/murder_mystery/percentage/choose_pair with storage switch:temp input
#

$execute store result score #chosen_id switch.data run data get storage switch:temp list[$(index)]



#> switch:engine/group_index
#
# @within	switch:engine/force_start_macro with storage switch:main
#
# @args		current_group (unknown)
#

$execute store result score #game_1 switch.data run data get storage switch:main groups[{id:"$(current_group)"}].index
scoreboard players operation #group_index switch.data = #game_1 switch.data


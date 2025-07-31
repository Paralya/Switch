
#> switch:modes/build_battle/teleport_back
#
# @executed	at @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] & positioned ~1 ~ ~1
#
# @within	switch:modes/build_battle/prevent_leaving_area [ at @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] & positioned ~1 ~ ~1 ]
#

function switch:translations/modes_build_battle_teleport_back
spreadplayers ~24 ~24 5 10 under 128 false @s


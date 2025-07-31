
#> switch:modes/build_battle/rating_time/save/remove
#
# @executed	as @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] & at @s
#
# @within	switch:modes/build_battle/rating_time/save/place_2 1s
#

execute at @e[tag=switch.marker_temp,tag=switch.build_battle_marker] run fill ~ ~-2 ~ ~ ~-1 ~ air


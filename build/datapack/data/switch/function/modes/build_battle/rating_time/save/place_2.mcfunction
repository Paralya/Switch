
#> switch:modes/build_battle/rating_time/save/place_2
#
# @executed	as @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] & at @s
#
# @within	switch:modes/build_battle/rating_time/save/place_1 1t
#

execute at @e[tag=switch.marker_temp,tag=switch.build_battle_marker] run setblock ~ ~-1 ~ redstone_block

schedule function switch:modes/build_battle/rating_time/save/remove 1s


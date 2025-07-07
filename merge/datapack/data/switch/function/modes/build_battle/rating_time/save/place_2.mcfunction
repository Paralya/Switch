
execute at @e[tag=switch.marker_temp,tag=switch.build_battle_marker] run setblock ~ ~-1 ~ redstone_block

schedule function switch:modes/build_battle/rating_time/save/remove 1s


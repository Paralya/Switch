
#> switch:modes/build_battle/rating_time/save/place_1
#
# @executed	as @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] & at @s
#
# @within	switch:modes/build_battle/rating_time/as_at_marker 1s
#

execute at @e[tag=switch.marker_temp,tag=switch.build_battle_marker] run setblock ~ ~-2 ~ structure_block{mode:"SAVE",name:"switch:temp",posX:5,posY:2,posZ:5,sizeX:38,sizeY:35,sizeZ:38,showboundingbox:0b,ignoreEntities:true}

schedule function switch:modes/build_battle/rating_time/save/place_2 1t


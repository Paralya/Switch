
#> switch:modes/murder_mystery/throw/on_entry_point
#
# @executed	anchored eyes & positioned ^ ^ ^
#
# @within	switch:modes/murder_mystery/throw/throw {with:{blocks:true,entities:false,max_distance:128,on_entry_point:"function switch:modes/murder_mystery/throw/on_entry_point"}} [ anchored eyes & positioned ^ ^ ^ ]
#

# Copy destination
data modify storage switch:temp destination set value [0.0d, 0.0d, 0.0d]
execute store result storage switch:temp destination[0] double 1 run scoreboard players get $raycast.entry_point.x bs.lambda
execute store result storage switch:temp destination[1] double 1 run scoreboard players get $raycast.entry_point.y bs.lambda
execute store result storage switch:temp destination[2] double 1 run scoreboard players get $raycast.entry_point.z bs.lambda


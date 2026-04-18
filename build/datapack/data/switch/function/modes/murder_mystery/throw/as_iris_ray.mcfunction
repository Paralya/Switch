
#> switch:modes/murder_mystery/throw/as_iris_ray
#
# @executed	anchored eyes & positioned ^ ^ ^
#
# @within	switch:modes/murder_mystery/throw/throw {with:{blocks:true,entities:false,max_distance:25.6,on_entry_point:"function switch:modes/murder_mystery/throw/as_iris_ray"}} [ anchored eyes & positioned ^ ^ ^ ]
#

summon marker ~ ~ ~ {Tags:["switch.throw_dest"]}
data modify storage switch:temp destination set from entity @e[type=marker,tag=switch.throw_dest,limit=1] Pos
kill @e[type=marker,tag=switch.throw_dest]


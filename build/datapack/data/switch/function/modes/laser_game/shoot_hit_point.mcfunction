
#> switch:modes/laser_game/shoot_hit_point
#
# @executed	anchored eyes & positioned ^ ^ ^
#
# @within	switch:modes/laser_game/shoot {with:{entities:true,max_distance:128,on_targeted_entity:"function switch:modes/laser_game/shoot_hit_entity",on_entry_point:"function switch:modes/laser_game/shoot_hit_point"}} [ anchored eyes & positioned ^ ^ ^ ]
#

summon marker ~ ~ ~ {Tags:["switch.shoot_ray"]}
# Run as the shooter (@s is the raycast marker here, not the player)
execute if entity @e[tag=switch.laser_game.base,distance=..1.69,nbt={Glowing:true}] as @a[tag=!detached,tag=switch.temp,limit=1] run function switch:modes/laser_game/shooted_base


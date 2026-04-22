
#> switch:modes/laser_game/shoot_hit_entity
#
# @executed	anchored eyes & positioned ^ ^ ^
#
# @within	switch:modes/laser_game/shoot {with:{entities:true,max_distance:128,on_targeted_entity:"function switch:modes/laser_game/shoot_hit_entity",on_entry_point:"function switch:modes/laser_game/shoot_hit_point"}} [ anchored eyes & positioned ^ ^ ^ ]
#

execute if score #color switch.data matches 0 if entity @s[scores={switch.alive=11},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_red
execute if score #color switch.data matches 1 if entity @s[scores={switch.alive=10},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_blue


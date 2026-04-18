
#> switch:modes/laser_game/shoot_hit_entity
#
# @executed	anchored eyes & positioned ^ ^ ^
#
# @within	switch:modes/laser_game/shoot {with:{entities:true,max_distance:25.6,on_targeted_entity:"function switch:modes/laser_game/shoot_hit_entity",on_entry_point:"function switch:modes/laser_game/shoot_hit_point"}} [ anchored eyes & positioned ^ ^ ^ ]
#

execute if entity @e[tag=switch.temp,scores={switch.alive=10}] if entity @s[scores={switch.alive=11},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_red
execute if entity @e[tag=switch.temp,scores={switch.alive=11}] if entity @s[scores={switch.alive=10},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_blue



tag @s add switch.temp

#Store player motion and call function to the vehicle
execute store result score #motion_x switch.data run data get entity @s Motion[0] 1000000
execute store result score #motion_z switch.data run data get entity @s Motion[2] 1000000
execute as @e[tag=switch.vehicle,predicate=switch:have_player_passenger] run function switch:modes/mario_kart/kart/called_by_player

tag @s remove switch.temp


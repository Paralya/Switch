
##TODO
#Rotation vehicle (get player rotation ?)


#Slow down & Speed up engine
execute if score @s switch.temp.engine matches 1.. run function switch:modes/mario_kart/kart/speed_down
execute if entity @s[tag=switch.speed_up] run function switch:modes/mario_kart/kart/speed_up


#Update motion if it hasn't be done yet
execute if entity @s[tag=!switch.calculated] run function switch:modes/mario_kart/kart/update_motion
tag @s remove switch.calculated


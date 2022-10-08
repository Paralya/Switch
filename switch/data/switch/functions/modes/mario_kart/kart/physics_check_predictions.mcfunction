
##Stop motion when predicted position isn't reached
scoreboard players operation @s switch.temp.predicted_pos_x -= #new_pos_x switch.data
scoreboard players operation @s switch.temp.predicted_pos_z -= #new_pos_z switch.data
scoreboard players operation @s switch.temp.predicted_pos_x *= #10 switch.data
scoreboard players operation @s switch.temp.predicted_pos_z *= #10 switch.data
scoreboard players operation @s switch.temp.predicted_pos_x /= @s switch.temp.engine
scoreboard players operation @s switch.temp.predicted_pos_z /= @s switch.temp.engine
scoreboard players add @s[scores={switch.temp.predicted_pos_x=0}] switch.temp.predicted_pos_x 1
scoreboard players add @s[scores={switch.temp.predicted_pos_z=0}] switch.temp.predicted_pos_z 1
execute if score @s switch.temp.engine matches 100.. if score @s switch.temp.predicted_pos_x matches -2..2 unless score @s switch.temp.predicted_pos_z matches -3..3 run function switch:modes/mario_kart/kart/stop_motion
execute if score @s switch.temp.engine matches 100.. if score @s switch.temp.predicted_pos_z matches -2..2 unless score @s switch.temp.predicted_pos_x matches -3..3 run function switch:modes/mario_kart/kart/stop_motion


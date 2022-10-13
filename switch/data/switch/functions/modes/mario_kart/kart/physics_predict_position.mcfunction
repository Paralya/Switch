
##Try to predict position after 1 tick
#(new_pos = old_pos + new_motion)
scoreboard players operation #new_motion_x switch.data /= #1000 switch.data
scoreboard players operation #new_motion_z switch.data /= #1000 switch.data
scoreboard players operation @s switch.temp.predicted_pos_x += #new_motion_x switch.data
scoreboard players operation @s switch.temp.predicted_pos_z += #new_motion_z switch.data


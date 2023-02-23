
## Try to predict position after 1 tick
# (new_pos = old_pos + new_motion)
scoreboard players operation #new_motion_x shopping_kart.data /= #1000 shopping_kart.data
scoreboard players operation #new_motion_z shopping_kart.data /= #1000 shopping_kart.data
scoreboard players operation @s shopping_kart.predicted_pos_x += #new_motion_x shopping_kart.data
scoreboard players operation @s shopping_kart.predicted_pos_z += #new_motion_z shopping_kart.data


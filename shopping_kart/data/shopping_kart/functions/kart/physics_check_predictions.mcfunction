
## Stop motion when predicted position isn't reached
scoreboard players operation @s shopping_kart.predicted_pos_x -= #new_pos_x shopping_kart.data
scoreboard players operation @s shopping_kart.predicted_pos_z -= #new_pos_z shopping_kart.data
scoreboard players operation @s shopping_kart.predicted_pos_x *= #10 shopping_kart.data
scoreboard players operation @s shopping_kart.predicted_pos_z *= #10 shopping_kart.data
scoreboard players operation @s shopping_kart.predicted_pos_x /= @s shopping_kart.engine
scoreboard players operation @s shopping_kart.predicted_pos_z /= @s shopping_kart.engine
scoreboard players add @s[scores={shopping_kart.predicted_pos_x=0}] shopping_kart.predicted_pos_x 1
scoreboard players add @s[scores={shopping_kart.predicted_pos_z=0}] shopping_kart.predicted_pos_z 1
execute if score @s shopping_kart.engine matches 100.. if score @s shopping_kart.predicted_pos_x matches -2..2 unless score @s shopping_kart.predicted_pos_z matches -3..3 run function shopping_kart:kart/stop_motion
execute if score @s shopping_kart.engine matches 100.. if score @s shopping_kart.predicted_pos_z matches -2..2 unless score @s shopping_kart.predicted_pos_x matches -3..3 run function shopping_kart:kart/stop_motion


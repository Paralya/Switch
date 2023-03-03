
scoreboard players set #collision_type shopping_kart.data 0
execute if score #collision_type shopping_kart.data matches 0 if score @s shopping_kart.engine matches 400.. if score @s shopping_kart.predicted_pos_x matches -2..2 unless score @s shopping_kart.predicted_pos_z matches -20..20 run scoreboard players set #collision_type shopping_kart.data 1
execute if score #collision_type shopping_kart.data matches 0 if score @s shopping_kart.engine matches 400.. if score @s shopping_kart.predicted_pos_z matches -2..2 unless score @s shopping_kart.predicted_pos_x matches -20..20 run scoreboard players set #collision_type shopping_kart.data 1
# tellraw @a [{"text":"Collision detector : (","color":"yellow"},{"score":{"name":"@s","objective":"shopping_kart.predicted_pos_x"},"color":"aqua"},{"text":","},{"score":{"name":"@s","objective":"shopping_kart.predicted_pos_z"},"color":"aqua"},{"text":")"}]

# Small collision
execute if score #collision_type shopping_kart.data matches 0 run scoreboard players operation @s shopping_kart.motion_x *= #99 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 0 run scoreboard players operation @s shopping_kart.motion_x /= #100 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 0 run scoreboard players operation @s shopping_kart.motion_z *= #99 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 0 run scoreboard players operation @s shopping_kart.motion_z /= #100 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 0 run scoreboard players operation @s shopping_kart.engine *= #99 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 0 run scoreboard players operation @s shopping_kart.engine /= #100 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 0 run particle smoke ~ ~1 ~ 1 1 1 0 10 force @a[distance=..50]
execute if score #collision_type shopping_kart.data matches 0 run playsound mechanization:gadgets.epac_overheat block @a ~ ~ ~ .25 0.1

# Large collision
execute if score #collision_type shopping_kart.data matches 1 run scoreboard players operation @s shopping_kart.motion_x *= #10 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 1 run scoreboard players operation @s shopping_kart.motion_x /= #100 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 1 run scoreboard players operation @s shopping_kart.motion_z *= #10 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 1 run scoreboard players operation @s shopping_kart.motion_z /= #100 shopping_kart.data
execute if score #collision_type shopping_kart.data matches 1 run scoreboard players set @s shopping_kart.engine 100
execute if score #collision_type shopping_kart.data matches 1 run particle lava ~ ~ ~ 1 1 1 0 50 force @a[distance=..50]
execute if score #collision_type shopping_kart.data matches 1 run playsound block.anvil.land block @a ~ ~ ~ 0.05 0.1


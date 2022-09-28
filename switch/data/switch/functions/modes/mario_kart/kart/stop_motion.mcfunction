
scoreboard players set #collision_type switch.data 0
execute if score #collision_type switch.data matches 0 if score @s switch.temp.engine matches 400.. if score @s switch.temp.predicted_pos_x matches -2..2 unless score @s switch.temp.predicted_pos_z matches -20..20 run scoreboard players set #collision_type switch.data 1
execute if score #collision_type switch.data matches 0 if score @s switch.temp.engine matches 400.. if score @s switch.temp.predicted_pos_z matches -2..2 unless score @s switch.temp.predicted_pos_x matches -20..20 run scoreboard players set #collision_type switch.data 1
#tellraw @a [{"text":"Collision detector : (","color":"yellow"},{"score":{"name":"@s","objective":"switch.temp.predicted_pos_x"},"color":"aqua"},{"text":","},{"score":{"name":"@s","objective":"switch.temp.predicted_pos_z"},"color":"aqua"},{"text":")"}]

#Small collision
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.motion_x *= #99 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.motion_x /= #100 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.motion_z *= #99 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.motion_z /= #100 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.engine *= #99 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.engine /= #100 switch.data
execute if score #collision_type switch.data matches 0 run particle smoke ~ ~1 ~ 1 1 1 0 10 force @a[distance=..50]
execute if score #collision_type switch.data matches 0 run playsound mechanization:gadgets.epac_overheat block @a ~ ~ ~ 1 0.1

#Large collision
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.motion_x *= #10 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.motion_x /= #100 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.motion_z *= #10 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.motion_z /= #100 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players set @s switch.temp.engine 100
execute if score #collision_type switch.data matches 1 run particle lava ~ ~ ~ 1 1 1 0 50 force @a[distance=..50]
execute if score #collision_type switch.data matches 1 run playsound block.anvil.land block @a ~ ~ ~ 1 0.1


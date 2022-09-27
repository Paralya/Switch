
scoreboard players set #collision_type switch.data 0
execute if score #collision_type switch.data matches 0 if score @s switch.temp.pos_x matches -1..1 run scoreboard players set #collision_type switch.data 1

#Small collision
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.motion_x *= #99 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.motion_x /= #100 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.motion_z *= #99 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.motion_z /= #100 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.engine *= #99 switch.data
execute if score #collision_type switch.data matches 0 run scoreboard players operation @s switch.temp.engine /= #100 switch.data

#Large collision
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.motion_x *= #90 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.motion_x /= #100 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.motion_z *= #90 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.motion_z /= #100 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.engine *= #90 switch.data
execute if score #collision_type switch.data matches 1 run scoreboard players operation @s switch.temp.engine /= #100 switch.data


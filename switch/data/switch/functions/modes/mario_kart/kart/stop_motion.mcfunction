
scoreboard players set #state switch.data 0
execute if score #state switch.data matches 0 unless score @s switch.temp.pos_x matches -1000..1000 unless score @s switch.temp.pos_z matches -1000..1000 run scoreboard players set #state switch.data 2
execute if score #state switch.data matches 0 unless score @s switch.temp.pos_x matches -100..100 unless score @s switch.temp.pos_z matches -100..100 run scoreboard players set #state switch.data 1

#Small collision
execute if score #state switch.data matches 0 run scoreboard players operation @s switch.temp.motion_x *= #90 switch.data
execute if score #state switch.data matches 0 run scoreboard players operation @s switch.temp.motion_x /= #100 switch.data
execute if score #state switch.data matches 0 run scoreboard players operation @s switch.temp.motion_z *= #90 switch.data
execute if score #state switch.data matches 0 run scoreboard players operation @s switch.temp.motion_z /= #100 switch.data
execute if score #state switch.data matches 0 run scoreboard players operation @s switch.temp.engine *= #90 switch.data
execute if score #state switch.data matches 0 run scoreboard players operation @s switch.temp.engine /= #100 switch.data

#Medium collision
execute if score #state switch.data matches 1 run scoreboard players operation @s switch.temp.motion_x *= #75 switch.data
execute if score #state switch.data matches 1 run scoreboard players operation @s switch.temp.motion_x /= #100 switch.data
execute if score #state switch.data matches 1 run scoreboard players operation @s switch.temp.motion_z *= #75 switch.data
execute if score #state switch.data matches 1 run scoreboard players operation @s switch.temp.motion_z /= #100 switch.data
execute if score #state switch.data matches 1 run scoreboard players operation @s switch.temp.engine *= #75 switch.data
execute if score #state switch.data matches 1 run scoreboard players operation @s switch.temp.engine /= #100 switch.data

#Large collision
execute if score #state switch.data matches 2 run scoreboard players set @s switch.temp.motion_x 0
execute if score #state switch.data matches 2 run scoreboard players set @s switch.temp.motion_z 0
execute if score #state switch.data matches 2 run scoreboard players set @s switch.temp.engine 0


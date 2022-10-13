
execute store result score #new_pos_x switch.data run data get entity @s Pos[0] 10000
execute store result score #new_pos_z switch.data run data get entity @s Pos[2] 10000
scoreboard players operation @s switch.temp.old_pos_x -= #new_pos_x switch.data
scoreboard players operation @s switch.temp.old_pos_z -= #new_pos_z switch.data
scoreboard players operation @s[scores={switch.temp.old_pos_x=..-1}] switch.temp.old_pos_x *= #-1 switch.data
scoreboard players operation @s[scores={switch.temp.old_pos_z=..-1}] switch.temp.old_pos_z *= #-1 switch.data
scoreboard players operation @s switch.temp.old_pos_x *= @s switch.temp.old_pos_x
scoreboard players operation @s switch.temp.old_pos_z *= @s switch.temp.old_pos_z
scoreboard players operation @s switch.temp.old_pos_x += @s switch.temp.old_pos_z
scoreboard players operation #input switch.data = @s switch.temp.old_pos_x
function switch:math/sqrt
scoreboard players operation #output switch.data *= #20 switch.data
scoreboard players operation @s switch.temp.old_pos_x = #output switch.data
scoreboard players operation @s switch.temp.old_pos_z = #output switch.data
scoreboard players operation @s switch.temp.old_pos_x /= #10000 switch.data
scoreboard players operation @s switch.temp.old_pos_z %= #10000 switch.data
scoreboard players operation @s switch.temp.old_pos_z /= #1000 switch.data
title @a[predicate=switch:has_vehicle_with_tag] actionbar [{"text":"Moteur : ","color":"yellow"},{"score":{"name":"@s","objective":"switch.temp.engine"},"color":"aqua"},{"text":" tr/min | Vitesse : "},{"score":{"name":"@s","objective":"switch.temp.old_pos_x"},"color":"aqua"},{"text":","},{"score":{"name":"@s","objective":"switch.temp.old_pos_z"},"color":"aqua"},{"text":" blocks/s "}]
scoreboard players operation @s switch.temp.old_pos_x = #new_pos_x switch.data
scoreboard players operation @s switch.temp.old_pos_z = #new_pos_z switch.data


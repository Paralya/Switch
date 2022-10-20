
execute store result score #new_pos_x shopping_kart.data run data get entity @s Pos[0] 10000
execute store result score #new_pos_z shopping_kart.data run data get entity @s Pos[2] 10000
scoreboard players operation @s shopping_kart.old_pos_x -= #new_pos_x shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_z -= #new_pos_z shopping_kart.data
scoreboard players operation @s[scores={shopping_kart.old_pos_x=..-1}] shopping_kart.old_pos_x *= #-1 shopping_kart.data
scoreboard players operation @s[scores={shopping_kart.old_pos_z=..-1}] shopping_kart.old_pos_z *= #-1 shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_x *= @s shopping_kart.old_pos_x
scoreboard players operation @s shopping_kart.old_pos_z *= @s shopping_kart.old_pos_z
scoreboard players operation @s shopping_kart.old_pos_x += @s shopping_kart.old_pos_z
scoreboard players operation #input shopping_kart.data = @s shopping_kart.old_pos_x
function shopping_kart:math/sqrt
scoreboard players operation #output shopping_kart.data *= #20 shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_x = #output shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_z = #output shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_x /= #10000 shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_z %= #10000 shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_z /= #1000 shopping_kart.data
title @a[predicate=shopping_kart:has_vehicle_with_tag] actionbar [{"text":"Moteur : ","color":"yellow"},{"score":{"name":"@s","objective":"shopping_kart.engine"},"color":"aqua"},{"text":" tr/min | Vitesse : "},{"score":{"name":"@s","objective":"shopping_kart.old_pos_x"},"color":"aqua"},{"text":","},{"score":{"name":"@s","objective":"shopping_kart.old_pos_z"},"color":"aqua"},{"text":" blocks/s "}]
scoreboard players operation @s shopping_kart.old_pos_x = #new_pos_x shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_z = #new_pos_z shopping_kart.data


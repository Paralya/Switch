
# Remember the old position
execute store result score #new_pos_x shopping_kart.data run data get entity @s Pos[0] 10000
execute store result score #new_pos_z shopping_kart.data run data get entity @s Pos[2] 10000

# Calculate the speed
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

# Copy scores and tellraw the speed
scoreboard players operation #t_engine shopping_kart.data = @s shopping_kart.engine
scoreboard players operation #t_first_digits shopping_kart.data = @s shopping_kart.old_pos_x
scoreboard players operation #t_second_digits shopping_kart.data = @s shopping_kart.old_pos_z
execute on passengers run title @s actionbar [{"text":"Moteur : ","color":"yellow"},{"score":{"name":"#t_engine","objective":"shopping_kart.data"},"color":"aqua"},{"text":" tr/min | Vitesse : "},{"score":{"name":"#t_first_digits","objective":"shopping_kart.data"},"color":"aqua"},{"text":","},{"score":{"name":"#t_second_digits","objective":"shopping_kart.data"},"color":"aqua"},{"text":" blocks/s "}]

# Reset the old position
scoreboard players operation @s shopping_kart.old_pos_x = #new_pos_x shopping_kart.data
scoreboard players operation @s shopping_kart.old_pos_z = #new_pos_z shopping_kart.data


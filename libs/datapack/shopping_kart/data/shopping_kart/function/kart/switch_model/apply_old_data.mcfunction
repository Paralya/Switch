
# Apply the data from the temporary storage to the entity
data modify entity @s Pos set from storage shopping_kart:main temp.Pos
data modify entity @s Rotation set from storage shopping_kart:main temp.Rotation
data modify entity @s Motion set from storage shopping_kart:main temp.Motion
data modify entity @s Tags set from storage shopping_kart:main temp.Tags
data modify entity @s active_effects set from storage shopping_kart:main temp.active_effects
data modify entity @s Fire set from storage shopping_kart:main temp.Fire
data modify entity @s HurtTime set from storage shopping_kart:main temp.HurtTime
data modify entity @s Brain set from storage shopping_kart:main temp.Brain
data modify entity @s NoAI set from storage shopping_kart:main temp.NoAI
execute store result score @s shopping_kart.engine run data get storage shopping_kart:main temp.scores.shopping_kart.engine
execute store result score @s shopping_kart.max_engine run data get storage shopping_kart:main temp.scores.shopping_kart.max_engine
execute store result score @s shopping_kart.motion_x run data get storage shopping_kart:main temp.scores.shopping_kart.motion_x
execute store result score @s shopping_kart.motion_z run data get storage shopping_kart:main temp.scores.shopping_kart.motion_z
execute store result score @s shopping_kart.predicted_pos_x run data get storage shopping_kart:main temp.scores.shopping_kart.predicted_pos_x
execute store result score @s shopping_kart.predicted_pos_z run data get storage shopping_kart:main temp.scores.shopping_kart.predicted_pos_z
execute store result score @s shopping_kart.old_pos_x run data get storage shopping_kart:main temp.scores.shopping_kart.old_pos_x
execute store result score @s shopping_kart.old_pos_y run data get storage shopping_kart:main temp.scores.shopping_kart.old_pos_y
execute store result score @s shopping_kart.old_pos_z run data get storage shopping_kart:main temp.scores.shopping_kart.old_pos_z
execute store result score @s shopping_kart.booster_timer run data get storage shopping_kart:main temp.scores.shopping_kart.booster_timer
execute store result score @s shopping_kart.reactor_boost run data get storage shopping_kart:main temp.scores.shopping_kart.reactor_boost
execute store result score @s shopping_kart.cruise_control run data get storage shopping_kart:main temp.scores.shopping_kart.cruise_control
execute store result score @s switch.temp.compteur run data get storage shopping_kart:main temp.scores.switch.temp.compteur

# Remove invisibility if the entity is the model is not the original shopping kart
execute if score #model shopping_kart.data matches 2.. run effect clear @s invisibility

# Remove the temporary storage
data remove storage shopping_kart:main temp


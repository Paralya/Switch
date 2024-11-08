
# Indicate that the vehicle data have been retrieved
scoreboard players set #has_vehicle shopping_kart.data 1

# Get all the data from the entity and store it in a temporary storage
data modify storage shopping_kart:main temp set value {}
data modify storage shopping_kart:main temp.Pos set from entity @s Pos
data modify storage shopping_kart:main temp.Rotation set from entity @s Rotation
data modify storage shopping_kart:main temp.Motion set from entity @s Motion
data modify storage shopping_kart:main temp.Tags set from entity @s Tags
data modify storage shopping_kart:main temp.active_effects set from entity @s active_effects
data modify storage shopping_kart:main temp.Fire set from entity @s Fire
data modify storage shopping_kart:main temp.HurtTime set from entity @s HurtTime
data modify storage shopping_kart:main temp.Brain set from entity @s Brain
data modify storage shopping_kart:main temp.NoAI set from entity @s NoAI
execute store result storage shopping_kart:main temp.scores.shopping_kart.engine int 1 run scoreboard players get @s shopping_kart.engine
execute store result storage shopping_kart:main temp.scores.shopping_kart.max_engine int 1 run scoreboard players get @s shopping_kart.max_engine
execute store result storage shopping_kart:main temp.scores.shopping_kart.motion_x int 1 run scoreboard players get @s shopping_kart.motion_x
execute store result storage shopping_kart:main temp.scores.shopping_kart.motion_z int 1 run scoreboard players get @s shopping_kart.motion_z
execute store result storage shopping_kart:main temp.scores.shopping_kart.predicted_pos_x int 1 run scoreboard players get @s shopping_kart.predicted_pos_x
execute store result storage shopping_kart:main temp.scores.shopping_kart.predicted_pos_z int 1 run scoreboard players get @s shopping_kart.predicted_pos_z
execute store result storage shopping_kart:main temp.scores.shopping_kart.old_pos_x int 1 run scoreboard players get @s shopping_kart.old_pos_x
execute store result storage shopping_kart:main temp.scores.shopping_kart.old_pos_y int 1 run scoreboard players get @s shopping_kart.old_pos_y
execute store result storage shopping_kart:main temp.scores.shopping_kart.old_pos_z int 1 run scoreboard players get @s shopping_kart.old_pos_z
execute store result storage shopping_kart:main temp.scores.shopping_kart.booster_timer int 1 run scoreboard players get @s shopping_kart.booster_timer
execute store result storage shopping_kart:main temp.scores.shopping_kart.reactor_boost int 1 run scoreboard players get @s shopping_kart.reactor_boost
execute store result storage shopping_kart:main temp.scores.shopping_kart.cruise_control int 1 run scoreboard players get @s shopping_kart.cruise_control
execute store result storage shopping_kart:main temp.scores.switch.temp.compteur int 1 run scoreboard players get @s switch.temp.compteur


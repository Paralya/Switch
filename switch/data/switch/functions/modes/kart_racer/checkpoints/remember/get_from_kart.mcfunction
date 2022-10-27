
data modify storage switch:main temp.Pos set from entity @s Pos
data modify storage switch:main temp.Rotation set from entity @s Rotation
data modify storage switch:main temp.Motion set from entity @s Motion
data modify storage switch:main temp.Tags set from entity @s Tags
execute store result storage switch:main temp.scores.shopping_kart.engine int 1 run scoreboard players get @s shopping_kart.engine
execute store result storage switch:main temp.scores.shopping_kart.max_engine int 1 run scoreboard players get @s shopping_kart.max_engine
execute store result storage switch:main temp.scores.shopping_kart.motion_x int 1 run scoreboard players get @s shopping_kart.motion_x
execute store result storage switch:main temp.scores.shopping_kart.motion_z int 1 run scoreboard players get @s shopping_kart.motion_z
execute store result storage switch:main temp.scores.shopping_kart.predicted_pos_x int 1 run scoreboard players get @s shopping_kart.predicted_pos_x
execute store result storage switch:main temp.scores.shopping_kart.predicted_pos_z int 1 run scoreboard players get @s shopping_kart.predicted_pos_z
execute store result storage switch:main temp.scores.shopping_kart.old_pos_x int 1 run scoreboard players get @s shopping_kart.old_pos_x
execute store result storage switch:main temp.scores.shopping_kart.old_pos_y int 1 run scoreboard players get @s shopping_kart.old_pos_y
execute store result storage switch:main temp.scores.shopping_kart.old_pos_z int 1 run scoreboard players get @s shopping_kart.old_pos_z
execute store result storage switch:main temp.scores.shopping_kart.booster_timer int 1 run scoreboard players get @s shopping_kart.booster_timer


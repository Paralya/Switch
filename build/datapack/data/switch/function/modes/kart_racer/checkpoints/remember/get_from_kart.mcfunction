
#> switch:modes/kart_racer/checkpoints/remember/get_from_kart
#
# @executed	as @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger]
#
# @within	switch:modes/kart_racer/checkpoints/remember/main [ as @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger] ]
#

function switch:modes/kart_racer/blocks/reset_checkpoint

data modify storage switch:main temp.Pos set from entity @s Pos
data modify storage switch:main temp.Rotation set from entity @s Rotation
data modify storage switch:main temp.Motion set from entity @s Motion
data modify storage switch:main temp.Tags set from entity @s Tags
data modify storage switch:main temp.active_effects set from entity @s active_effects
data modify storage switch:main temp.Fire set from entity @s Fire
data modify storage switch:main temp.HurtTime set from entity @s HurtTime
data modify storage switch:main temp.Brain set from entity @s Brain
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
execute store result storage switch:main temp.scores.shopping_kart.reactor_boost int 1 run scoreboard players get @s shopping_kart.reactor_boost
execute store result storage switch:main temp.scores.shopping_kart.cruise_control int 1 run scoreboard players get @s shopping_kart.cruise_control


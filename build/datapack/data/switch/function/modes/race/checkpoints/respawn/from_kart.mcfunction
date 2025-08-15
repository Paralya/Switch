
#> switch:modes/race/checkpoints/respawn/from_kart
#
# @executed	at @s & as @n[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger]
#
# @within	switch:modes/race/checkpoints/respawn/from_marker [ at @s & as @n[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger] ]
#

# copy[0] is the respawn state
tp @s ~ ~ ~ ~ ~
data modify entity @s Pos set from storage switch:main copy[0].Pos
data modify entity @s Rotation set from storage switch:main copy[0].Rotation
data modify entity @s Motion set from storage switch:main copy[0].Motion
data modify entity @s Tags set from storage switch:main copy[0].Tags
data modify entity @s active_effects set from storage switch:main copy[0].active_effects
data modify entity @s Fire set from storage switch:main copy[0].Fire
data modify entity @s HurtTime set from storage switch:main copy[0].HurtTime
data modify entity @s Brain set from storage switch:main copy[0].Brain
execute store result score @s shopping_kart.engine run data get storage switch:main copy[0].scores.shopping_kart.engine
execute store result score @s shopping_kart.max_engine run data get storage switch:main copy[0].scores.shopping_kart.max_engine
execute store result score @s shopping_kart.motion_x run data get storage switch:main copy[0].scores.shopping_kart.motion_x
execute store result score @s shopping_kart.motion_z run data get storage switch:main copy[0].scores.shopping_kart.motion_z
execute store result score @s shopping_kart.predicted_pos_x run data get storage switch:main copy[0].scores.shopping_kart.predicted_pos_x
execute store result score @s shopping_kart.predicted_pos_z run data get storage switch:main copy[0].scores.shopping_kart.predicted_pos_z
execute store result score @s shopping_kart.old_pos_x run data get storage switch:main copy[0].scores.shopping_kart.old_pos_x
execute store result score @s shopping_kart.old_pos_y run data get storage switch:main copy[0].scores.shopping_kart.old_pos_y
execute store result score @s shopping_kart.old_pos_z run data get storage switch:main copy[0].scores.shopping_kart.old_pos_z
execute store result score @s shopping_kart.booster_timer run data get storage switch:main copy[0].scores.shopping_kart.booster_timer
execute store result score @s shopping_kart.reactor_boost run data get storage switch:main copy[0].scores.shopping_kart.reactor_boost
execute store result score @s shopping_kart.cruise_control run data get storage switch:main copy[0].scores.shopping_kart.cruise_control
scoreboard players remove @s shopping_kart.old_pos_y 100000
scoreboard players reset @s switch.temp.compteur
scoreboard players reset @s switch.effects.timer


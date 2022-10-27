

#storage switch:main respawn_states set value [{id:0,Pos:[0.d,0.d,0.d],Rotation:[0.f,0.f],Motion:[0.d,0.d,0.d],Tags:[],scores:{shopping_kart:{engine:0,max_engine:0,motion_x:0,motion_z:0,predicted_pos_x:0,predicted_pos_z:0,old_pos_x:0,old_pos_y:0,old_pos_z:0,booster_timer:0}}}]

data modify storage switch:main copy set from storage switch:main respawn_states
function switch:modes/kart_racer/checkpoints/respawn/get_storage_loop

#copy[0] is the respawn state
tp @s ~ ~ ~ ~ ~
data modify entity @s Pos set from storage switch:main copy[0].Pos
data modify entity @s Rotation set from storage switch:main copy[0].Rotation
data modify entity @s Motion set from storage switch:main copy[0].Motion
data modify entity @s Tags set from storage switch:main copy[0].Tags
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
scoreboard players remove @s shopping_kart.old_pos_y 100000


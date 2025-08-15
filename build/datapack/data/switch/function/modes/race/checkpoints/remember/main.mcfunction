
#> switch:modes/race/checkpoints/remember/main
#
# @executed	as @a[tag=!detached,predicate=switch:has_same_checkpoint]
#
# @within	switch:modes/race/checkpoints/player_in
#

scoreboard players operation @s switch.respawn_cp_id = #respawn_cp_id switch.data
execute if score #can_hard_reset switch.data matches 1 run scoreboard players operation @s switch.hard_respawn_cp_id = #respawn_cp_id switch.data

tag @s add switch.temp
data modify storage switch:main temp set value {id:0,Pos:[0.d,0.d,0.d],Rotation:[0.f,0.f],Motion:[0.d,0.d,0.d],Tags:[],scores:{shopping_kart:{engine:0,max_engine:0,motion_x:0,motion_z:0,predicted_pos_x:0,predicted_pos_z:0,old_pos_x:0,old_pos_y:0,old_pos_z:0,booster_timer:0,reactor_boost:0,cruise_control:0}}}
execute as @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger] run function switch:modes/race/checkpoints/remember/get_from_kart
execute store result storage switch:main temp.id int 1 run scoreboard players get @s switch.temp.id
tag @s remove switch.temp

data modify storage switch:main copy set from storage switch:main respawn_states
data modify storage switch:main new set value []

execute if data storage switch:main copy[0] run function switch:modes/race/checkpoints/remember/storage_loop
data modify storage switch:main respawn_states set from storage switch:main new


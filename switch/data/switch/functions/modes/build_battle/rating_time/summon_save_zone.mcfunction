
tag @s add switch.build_battle_save
execute store result entity @s Pos[0] double 1 run scoreboard players get #build_battle_save_x switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #build_battle_save_z switch.data
execute at @s run forceload add ~-16 ~-16 ~48 ~48


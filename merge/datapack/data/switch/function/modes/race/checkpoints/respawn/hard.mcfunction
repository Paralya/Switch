
tag @s add switch.temp
scoreboard players operation #respawn_cp_id switch.data = @s switch.hard_respawn_cp_id
execute if score @s switch.hard_respawn_cp_id matches -1 run scoreboard players operation #respawn_cp_id switch.data = #default switch.hard_respawn_cp_id
execute at @e[tag=switch.checkpoint,predicate=switch:has_same_respawn_cp_id] as @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger] run function switch:modes/race/checkpoints/respawn/hard_from_kart
tag @s remove switch.temp

tag @s add switch.playsound



tag @s add switch.temp
scoreboard players operation #respawn_cp_id switch.data = @s switch.hard_respawn_cp_id
execute if score @s switch.hard_respawn_cp_id matches -1 run scoreboard players set #respawn_cp_id switch.data 0
execute at @e[tag=switch.checkpoint,predicate=switch:has_same_respawn_cp_id] as @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger] run function switch:modes/kart_racer/checkpoints/respawn/hard_from_kart
tag @s remove switch.temp

tag @s add switch.playsound


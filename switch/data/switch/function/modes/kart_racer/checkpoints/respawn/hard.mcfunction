
tag @s add shopping_kart.temp
scoreboard players operation #respawn_cp_id switch.data = @s switch.hard_respawn_cp_id
execute if score @s switch.hard_respawn_cp_id matches -1 run scoreboard players set #respawn_cp_id switch.data 0
execute at @e[tag=switch.checkpoint,predicate=switch:has_same_respawn_cp_id] as @e[tag=shopping_kart.kart,predicate=shopping_kart:have_temp_player_passenger] run function switch:modes/kart_racer/checkpoints/respawn/hard_from_kart
tag @s remove shopping_kart.temp

tag @s add switch.playsound


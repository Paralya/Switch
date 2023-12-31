
scoreboard players operation #p_id switch.data = @s switch.temp.id
data modify storage switch:main copy set from storage switch:main respawn_states
execute if data storage switch:main copy[0] run function switch:modes/kart_racer/checkpoints/respawn/get_storage_loop

tag @s add shopping_kart.temp
execute positioned 0 0 0 summon marker run function switch:modes/kart_racer/checkpoints/respawn/from_marker
execute on vehicle run tp @p[tag=shopping_kart.temp] @s
tag @s remove shopping_kart.temp

tag @s add switch.playsound


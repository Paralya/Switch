
scoreboard players operation #p_id switch.data = @s switch.temp.id
data modify storage switch:main copy set from storage switch:main respawn_states
execute if data storage switch:main copy[0] run function switch:modes/kart_racer/checkpoints/respawn/get_storage_loop

tag @s add shopping_kart.temp
summon marker 0 0 0 {UUID:[I;0,538116096,0,0]}
execute as 00000000-2013-0000-0000-000000000000 run function switch:modes/kart_racer/checkpoints/respawn/from_marker
tag @s remove shopping_kart.temp


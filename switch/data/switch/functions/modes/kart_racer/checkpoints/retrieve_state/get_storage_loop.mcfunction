
execute store result score #id switch.data run data get storage switch:main copy[0].id
execute unless score @s switch.id = #id switch.data run data remove storage switch:main copy[0]
execute unless score @s switch.id = #id switch.data run function switch:modes/kart_racer/checkpoints/retrieve_state/get_storage_loop


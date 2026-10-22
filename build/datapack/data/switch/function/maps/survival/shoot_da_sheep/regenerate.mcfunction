
#> switch:maps/survival/shoot_da_sheep/regenerate
#
# @within	switch:maps/survival/shoot_da_sheep/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_shoot_da_sheep switch.data 1
execute if score #rg_shoot_da_sheep switch.data matches 1 run data modify storage switch:maps to_regenerate.shoot_da_sheep set value 2b
execute if score #rg_shoot_da_sheep switch.data matches 1 in minecraft:overworld run forceload add 10000 6000 10020 6040
execute if score #rg_shoot_da_sheep switch.data matches 1 in switch:game run forceload add 10000 6000 10020 6040
execute if score #rg_shoot_da_sheep switch.data matches 1 in minecraft:overworld run forceload add 10020 6000 10040 6040
execute if score #rg_shoot_da_sheep switch.data matches 1 in switch:game run forceload add 10020 6000 10040 6040

execute if score #rg_shoot_da_sheep switch.data matches 1 run scoreboard players set #rg_shoot_da_sheep_y switch.data 100
execute if score #rg_shoot_da_sheep switch.data matches 1 run scoreboard players set #rg_shoot_da_sheep_mod switch.data 0
execute if score #rg_shoot_da_sheep switch.data matches ..116 summon marker run function switch:maps/survival/shoot_da_sheep/regeneration_on_marker

execute if score #rg_shoot_da_sheep switch.data matches 117.. in switch:game run kill @e[type=item,x=10020,y=100,z=6020,distance=..1000]
execute if score #rg_shoot_da_sheep switch.data matches 117.. run data remove storage switch:maps to_regenerate.shoot_da_sheep

execute if score #rg_shoot_da_sheep switch.data matches 117.. in minecraft:overworld run forceload remove 10000 6000 10020 6040
execute if score #rg_shoot_da_sheep switch.data matches 117.. in switch:game run forceload remove 10000 6000 10020 6040
execute if score #rg_shoot_da_sheep switch.data matches 117.. in minecraft:overworld run forceload remove 10020 6000 10040 6040
execute if score #rg_shoot_da_sheep switch.data matches 117.. in switch:game run forceload remove 10020 6000 10040 6040

execute if score #rg_shoot_da_sheep switch.data matches 117.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Shoot Da Sheep","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_shoot_da_sheep switch.data matches 117.. run function switch:engine/log_message/apply {message:"Map `Shoot Da Sheep` just regenerated!"}

execute if score #rg_shoot_da_sheep switch.data matches 117.. run scoreboard players reset #rg_shoot_da_sheep switch.data
execute if score #rg_shoot_da_sheep switch.data matches 1.. run schedule function switch:maps/survival/shoot_da_sheep/regenerate 1t


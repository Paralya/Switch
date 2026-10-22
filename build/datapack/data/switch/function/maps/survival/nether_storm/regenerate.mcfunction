
#> switch:maps/survival/nether_storm/regenerate
#
# @within	switch:maps/survival/nether_storm/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_nether_storm switch.data 1
execute if score #rg_nether_storm switch.data matches 1 run data modify storage switch:maps to_regenerate.nether_storm set value 2b
execute if score #rg_nether_storm switch.data matches 1 in minecraft:overworld run forceload add 10000 4000 10028 4074
execute if score #rg_nether_storm switch.data matches 1 in switch:game run forceload add 10000 4000 10028 4074
execute if score #rg_nether_storm switch.data matches 1 in minecraft:overworld run forceload add 10028 4000 10056 4074
execute if score #rg_nether_storm switch.data matches 1 in switch:game run forceload add 10028 4000 10056 4074
execute if score #rg_nether_storm switch.data matches 1 in minecraft:overworld run forceload add 10056 4000 10083 4074
execute if score #rg_nether_storm switch.data matches 1 in switch:game run forceload add 10056 4000 10083 4074
execute if score #rg_nether_storm switch.data matches 1 in minecraft:overworld run forceload add 10083 4000 10111 4074
execute if score #rg_nether_storm switch.data matches 1 in switch:game run forceload add 10083 4000 10111 4074

execute if score #rg_nether_storm switch.data matches 1 run scoreboard players set #rg_nether_storm_y switch.data 100
execute if score #rg_nether_storm switch.data matches 1 run scoreboard players set #rg_nether_storm_mod switch.data 0
execute if score #rg_nether_storm switch.data matches ..200 summon marker run function switch:maps/survival/nether_storm/regeneration_on_marker

execute if score #rg_nether_storm switch.data matches 201.. in switch:game run kill @e[type=item,x=10055,y=100,z=4037,distance=..1000]
execute if score #rg_nether_storm switch.data matches 201.. run data remove storage switch:maps to_regenerate.nether_storm

execute if score #rg_nether_storm switch.data matches 201.. in minecraft:overworld run forceload remove 10000 4000 10028 4074
execute if score #rg_nether_storm switch.data matches 201.. in switch:game run forceload remove 10000 4000 10028 4074
execute if score #rg_nether_storm switch.data matches 201.. in minecraft:overworld run forceload remove 10028 4000 10056 4074
execute if score #rg_nether_storm switch.data matches 201.. in switch:game run forceload remove 10028 4000 10056 4074
execute if score #rg_nether_storm switch.data matches 201.. in minecraft:overworld run forceload remove 10056 4000 10083 4074
execute if score #rg_nether_storm switch.data matches 201.. in switch:game run forceload remove 10056 4000 10083 4074
execute if score #rg_nether_storm switch.data matches 201.. in minecraft:overworld run forceload remove 10083 4000 10111 4074
execute if score #rg_nether_storm switch.data matches 201.. in switch:game run forceload remove 10083 4000 10111 4074

execute if score #rg_nether_storm switch.data matches 201.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Nether Storm","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_nether_storm switch.data matches 201.. run function switch:engine/log_message/apply {message:"Map `Nether Storm` just regenerated!"}

execute if score #rg_nether_storm switch.data matches 201.. run scoreboard players reset #rg_nether_storm switch.data
execute if score #rg_nether_storm switch.data matches 1.. run schedule function switch:maps/survival/nether_storm/regenerate 1t


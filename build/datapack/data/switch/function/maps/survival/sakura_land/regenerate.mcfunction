
#> switch:maps/survival/sakura_land/regenerate
#
# @within	switch:maps/survival/sakura_land/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_sakura_land switch.data 1
execute if score #rg_sakura_land switch.data matches 1 run data modify storage switch:maps to_regenerate.sakura_land set value 2b
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6384 -5397 6396 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6384 -5397 6396 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6396 -5397 6408 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6396 -5397 6408 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6408 -5397 6419 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6408 -5397 6419 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6419 -5397 6431 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6419 -5397 6431 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6431 -5397 6443 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6431 -5397 6443 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6443 -5397 6455 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6443 -5397 6455 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6455 -5397 6466 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6455 -5397 6466 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6466 -5397 6478 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6466 -5397 6478 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6478 -5397 6490 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6478 -5397 6490 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6490 -5397 6502 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6490 -5397 6502 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6502 -5397 6513 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6502 -5397 6513 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6513 -5397 6525 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6513 -5397 6525 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6525 -5397 6537 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6525 -5397 6537 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6537 -5397 6549 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6537 -5397 6549 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6549 -5397 6560 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6549 -5397 6560 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6560 -5397 6572 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6560 -5397 6572 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6572 -5397 6584 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6572 -5397 6584 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6584 -5397 6596 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6584 -5397 6596 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6596 -5397 6607 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6596 -5397 6607 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6607 -5397 6619 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6607 -5397 6619 -5148
execute if score #rg_sakura_land switch.data matches 1 in minecraft:overworld run forceload add 6619 -5397 6631 -5148
execute if score #rg_sakura_land switch.data matches 1 in switch:game run forceload add 6619 -5397 6631 -5148

execute if score #rg_sakura_land switch.data matches 1 run scoreboard players set #rg_sakura_land_y switch.data 85
execute if score #rg_sakura_land switch.data matches 1 run scoreboard players set #rg_sakura_land_mod switch.data 0
execute if score #rg_sakura_land switch.data matches ..1008 summon marker run function switch:maps/survival/sakura_land/regeneration_on_marker

execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run kill @e[type=item,x=6507,y=85,z=-5272,distance=..1000]
execute if score #rg_sakura_land switch.data matches 1009.. run data remove storage switch:maps to_regenerate.sakura_land

execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6384 -5397 6396 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6384 -5397 6396 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6396 -5397 6408 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6396 -5397 6408 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6408 -5397 6419 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6408 -5397 6419 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6419 -5397 6431 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6419 -5397 6431 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6431 -5397 6443 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6431 -5397 6443 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6443 -5397 6455 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6443 -5397 6455 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6455 -5397 6466 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6455 -5397 6466 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6466 -5397 6478 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6466 -5397 6478 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6478 -5397 6490 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6478 -5397 6490 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6490 -5397 6502 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6490 -5397 6502 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6502 -5397 6513 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6502 -5397 6513 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6513 -5397 6525 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6513 -5397 6525 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6525 -5397 6537 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6525 -5397 6537 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6537 -5397 6549 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6537 -5397 6549 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6549 -5397 6560 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6549 -5397 6560 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6560 -5397 6572 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6560 -5397 6572 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6572 -5397 6584 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6572 -5397 6584 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6584 -5397 6596 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6584 -5397 6596 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6596 -5397 6607 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6596 -5397 6607 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6607 -5397 6619 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6607 -5397 6619 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in minecraft:overworld run forceload remove 6619 -5397 6631 -5148
execute if score #rg_sakura_land switch.data matches 1009.. in switch:game run forceload remove 6619 -5397 6631 -5148

execute if score #rg_sakura_land switch.data matches 1009.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Sakura Land","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"50","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sakura_land switch.data matches 1009.. run function switch:engine/log_message/apply {message:"Map `Sakura Land` just regenerated!"}

execute if score #rg_sakura_land switch.data matches 1009.. run scoreboard players reset #rg_sakura_land switch.data
execute if score #rg_sakura_land switch.data matches 1.. run schedule function switch:maps/survival/sakura_land/regenerate 1t


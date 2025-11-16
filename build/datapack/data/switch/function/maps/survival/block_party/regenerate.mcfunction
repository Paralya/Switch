
#> switch:maps/survival/block_party/regenerate
#
# @within	switch:modes/block_party/verify_regeneration
#			switch:maps/survival/block_party/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_block_party switch.data 1
execute if score #rg_block_party switch.data matches 1 run data modify storage switch:maps to_regenerate.block_party set value 2b
execute if score #rg_block_party switch.data matches 1 in minecraft:overworld run forceload add 109993 109993 110016 110087
execute if score #rg_block_party switch.data matches 1 in switch:game run forceload add 109993 109993 110016 110087
execute if score #rg_block_party switch.data matches 1 in minecraft:overworld run forceload add 110016 109993 110040 110087
execute if score #rg_block_party switch.data matches 1 in switch:game run forceload add 110016 109993 110040 110087
execute if score #rg_block_party switch.data matches 1 in minecraft:overworld run forceload add 110040 109993 110064 110087
execute if score #rg_block_party switch.data matches 1 in switch:game run forceload add 110040 109993 110064 110087
execute if score #rg_block_party switch.data matches 1 in minecraft:overworld run forceload add 110064 109993 110087 110087
execute if score #rg_block_party switch.data matches 1 in switch:game run forceload add 110064 109993 110087 110087

execute if score #rg_block_party switch.data matches 1 run scoreboard players set #rg_block_party_y switch.data -63
execute if score #rg_block_party switch.data matches 1 run scoreboard players set #rg_block_party_mod switch.data 0
execute if score #rg_block_party switch.data matches ..724 summon marker run function switch:maps/survival/block_party/regeneration_on_marker

execute if score #rg_block_party switch.data matches 725.. in switch:game run kill @e[type=item,x=110040,y=-63,z=110040,distance=..1000]
execute if score #rg_block_party switch.data matches 725.. run data remove storage switch:maps to_regenerate.block_party

execute if score #rg_block_party switch.data matches 725.. in minecraft:overworld run forceload remove 109993 109993 110016 110087
execute if score #rg_block_party switch.data matches 725.. in switch:game run forceload remove 109993 109993 110016 110087
execute if score #rg_block_party switch.data matches 725.. in minecraft:overworld run forceload remove 110016 109993 110040 110087
execute if score #rg_block_party switch.data matches 725.. in switch:game run forceload remove 110016 109993 110040 110087
execute if score #rg_block_party switch.data matches 725.. in minecraft:overworld run forceload remove 110040 109993 110064 110087
execute if score #rg_block_party switch.data matches 725.. in switch:game run forceload remove 110040 109993 110064 110087
execute if score #rg_block_party switch.data matches 725.. in minecraft:overworld run forceload remove 110064 109993 110087 110087
execute if score #rg_block_party switch.data matches 725.. in switch:game run forceload remove 110064 109993 110087 110087

execute if score #rg_block_party switch.data matches 725.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Block Party","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"36","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_block_party switch.data matches 725.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Block Party` just regenerated!"}'
execute if score #rg_block_party switch.data matches 725.. run function switch:engine/log_message/apply

execute if score #rg_block_party switch.data matches 725.. in switch:game run function switch:maps/regenerate_doors_macro {name:"block_party"}
execute if score #rg_block_party switch.data matches 725.. run scoreboard players reset #rg_block_party switch.data
execute if score #rg_block_party switch.data matches 1.. run schedule function switch:maps/survival/block_party/regenerate 1t


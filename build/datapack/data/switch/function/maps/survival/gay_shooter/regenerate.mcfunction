
#> switch:maps/survival/gay_shooter/regenerate
#
# @within	switch:maps/survival/gay_shooter/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_gay_shooter switch.data 1
execute if score #rg_gay_shooter switch.data matches 1 run data modify storage switch:maps to_regenerate.gay_shooter set value 2b
execute if score #rg_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 114000 114000 114023 114058
execute if score #rg_gay_shooter switch.data matches 1 in switch:game run forceload add 114000 114000 114023 114058
execute if score #rg_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 114023 114000 114047 114058
execute if score #rg_gay_shooter switch.data matches 1 in switch:game run forceload add 114023 114000 114047 114058
execute if score #rg_gay_shooter switch.data matches 1 in minecraft:overworld run forceload add 114047 114000 114070 114058
execute if score #rg_gay_shooter switch.data matches 1 in switch:game run forceload add 114047 114000 114070 114058

execute if score #rg_gay_shooter switch.data matches 1 run scoreboard players set #rg_gay_shooter_y switch.data 100
execute if score #rg_gay_shooter switch.data matches 1 run scoreboard players set #rg_gay_shooter_mod switch.data 0
execute if score #rg_gay_shooter switch.data matches ..150 summon marker run function switch:maps/survival/gay_shooter/regeneration_on_marker

execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run kill @e[type=item,x=114035,y=100,z=114029,distance=..1000]
execute if score #rg_gay_shooter switch.data matches 151.. run data remove storage switch:maps to_regenerate.gay_shooter

execute if score #rg_gay_shooter switch.data matches 151.. in minecraft:overworld run forceload remove 114000 114000 114023 114058
execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run forceload remove 114000 114000 114023 114058
execute if score #rg_gay_shooter switch.data matches 151.. in minecraft:overworld run forceload remove 114023 114000 114047 114058
execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run forceload remove 114023 114000 114047 114058
execute if score #rg_gay_shooter switch.data matches 151.. in minecraft:overworld run forceload remove 114047 114000 114070 114058
execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run forceload remove 114047 114000 114070 114058

execute if score #rg_gay_shooter switch.data matches 151.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Guy Shooter","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_gay_shooter switch.data matches 151.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Guy Shooter` just regenerated!"}'
execute if score #rg_gay_shooter switch.data matches 151.. run function switch:engine/log_message/apply

execute if score #rg_gay_shooter switch.data matches 151.. in switch:game run function switch:maps/regenerate_doors_macro {name:"gay_shooter"}
execute if score #rg_gay_shooter switch.data matches 151.. run scoreboard players reset #rg_gay_shooter switch.data
execute if score #rg_gay_shooter switch.data matches 1.. run schedule function switch:maps/survival/gay_shooter/regenerate 1t


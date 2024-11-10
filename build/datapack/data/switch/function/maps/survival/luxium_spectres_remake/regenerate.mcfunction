
#> switch:maps/survival/luxium_spectres_remake/regenerate
#
# @within	switch:maps/survival/luxium_spectres_remake/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_luxium_spectres_remake switch.data 1
execute if score #rg_luxium_spectres_remake switch.data matches 1 run data modify storage switch:maps to_regenerate.luxium_spectres_remake set value 2b
execute if score #rg_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142000 142000 142021 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142000 142000 142021 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142021 142000 142042 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142021 142000 142042 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142042 142000 142064 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142042 142000 142064 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142064 142000 142085 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142064 142000 142085 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in minecraft:overworld run forceload add 142085 142000 142106 142106
execute if score #rg_luxium_spectres_remake switch.data matches 1 in switch:game run forceload add 142085 142000 142106 142106

execute if score #rg_luxium_spectres_remake switch.data matches 1 run scoreboard players set #rg_luxium_spectres_remake_y switch.data 0
execute if score #rg_luxium_spectres_remake switch.data matches 1 run scoreboard players set #rg_luxium_spectres_remake_mod switch.data 0
execute if score #rg_luxium_spectres_remake switch.data matches ..415 summon marker run function switch:maps/survival/luxium_spectres_remake/regeneration_on_marker

execute if score #rg_luxium_spectres_remake switch.data matches 416.. in switch:game run kill @e[type=item,x=142053,y=0,z=142053,distance=..1000]
execute if score #rg_luxium_spectres_remake switch.data matches 416.. run data remove storage switch:maps to_regenerate.luxium_spectres_remake

execute if score #rg_luxium_spectres_remake switch.data matches 416.. in minecraft:overworld run forceload remove 142000 142000 142021 142106
execute if score #rg_luxium_spectres_remake switch.data matches 416.. in switch:game run forceload remove 142000 142000 142021 142106

execute if score #rg_luxium_spectres_remake switch.data matches 416.. in minecraft:overworld run forceload remove 142021 142000 142042 142106
execute if score #rg_luxium_spectres_remake switch.data matches 416.. in switch:game run forceload remove 142021 142000 142042 142106

execute if score #rg_luxium_spectres_remake switch.data matches 416.. in minecraft:overworld run forceload remove 142042 142000 142064 142106
execute if score #rg_luxium_spectres_remake switch.data matches 416.. in switch:game run forceload remove 142042 142000 142064 142106

execute if score #rg_luxium_spectres_remake switch.data matches 416.. in minecraft:overworld run forceload remove 142064 142000 142085 142106
execute if score #rg_luxium_spectres_remake switch.data matches 416.. in switch:game run forceload remove 142064 142000 142085 142106

execute if score #rg_luxium_spectres_remake switch.data matches 416.. in minecraft:overworld run forceload remove 142085 142000 142106 142106
execute if score #rg_luxium_spectres_remake switch.data matches 416.. in switch:game run forceload remove 142085 142000 142106 142106

execute if score #rg_luxium_spectres_remake switch.data matches 416.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"luxium_spectres_remake","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"20","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_luxium_spectres_remake switch.data matches 416.. run data modify storage switch:main MessageToLog set value '{"text":"Map `luxium_spectres_remake` just regenerated!"}'
execute if score #rg_luxium_spectres_remake switch.data matches 416.. run function switch:engine/log_message/apply

execute if score #rg_luxium_spectres_remake switch.data matches 416.. in switch:game run function switch:maps/regenerate_doors_macro {name:"luxium_spectres_remake"}
execute if score #rg_luxium_spectres_remake switch.data matches 416.. run scoreboard players reset #rg_luxium_spectres_remake switch.data
execute if score #rg_luxium_spectres_remake switch.data matches 1.. run schedule function switch:maps/survival/luxium_spectres_remake/regenerate 1t


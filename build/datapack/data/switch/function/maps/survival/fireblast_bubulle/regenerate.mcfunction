
#> switch:maps/survival/fireblast_bubulle/regenerate
#
# @within	switch:maps/survival/fireblast_bubulle/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_fireblast_bubulle switch.data 1
execute if score #rg_fireblast_bubulle switch.data matches 1 run data modify storage switch:maps to_regenerate.fireblast_bubulle set value 2b
execute if score #rg_fireblast_bubulle switch.data matches 1 in minecraft:overworld run forceload add 163000 163000 163025 163075
execute if score #rg_fireblast_bubulle switch.data matches 1 in switch:game run forceload add 163000 163000 163025 163075
execute if score #rg_fireblast_bubulle switch.data matches 1 in minecraft:overworld run forceload add 163025 163000 163050 163075
execute if score #rg_fireblast_bubulle switch.data matches 1 in switch:game run forceload add 163025 163000 163050 163075
execute if score #rg_fireblast_bubulle switch.data matches 1 in minecraft:overworld run forceload add 163050 163000 163075 163075
execute if score #rg_fireblast_bubulle switch.data matches 1 in switch:game run forceload add 163050 163000 163075 163075

execute if score #rg_fireblast_bubulle switch.data matches 1 run scoreboard players set #rg_fireblast_bubulle_y switch.data 100
execute if score #rg_fireblast_bubulle switch.data matches 1 run scoreboard players set #rg_fireblast_bubulle_mod switch.data 0
execute if score #rg_fireblast_bubulle switch.data matches ..153 summon marker run function switch:maps/survival/fireblast_bubulle/regeneration_on_marker

execute if score #rg_fireblast_bubulle switch.data matches 154.. in switch:game run kill @e[type=item,x=163037,y=100,z=163037,distance=..1000]
execute if score #rg_fireblast_bubulle switch.data matches 154.. run data remove storage switch:maps to_regenerate.fireblast_bubulle

execute if score #rg_fireblast_bubulle switch.data matches 154.. in minecraft:overworld run forceload remove 163000 163000 163025 163075
execute if score #rg_fireblast_bubulle switch.data matches 154.. in switch:game run forceload remove 163000 163000 163025 163075

execute if score #rg_fireblast_bubulle switch.data matches 154.. in minecraft:overworld run forceload remove 163025 163000 163050 163075
execute if score #rg_fireblast_bubulle switch.data matches 154.. in switch:game run forceload remove 163025 163000 163050 163075

execute if score #rg_fireblast_bubulle switch.data matches 154.. in minecraft:overworld run forceload remove 163050 163000 163075 163075
execute if score #rg_fireblast_bubulle switch.data matches 154.. in switch:game run forceload remove 163050 163000 163075 163075

execute if score #rg_fireblast_bubulle switch.data matches 154.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Bubulle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"7","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_fireblast_bubulle switch.data matches 154.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Bubulle` just regenerated!"}'
execute if score #rg_fireblast_bubulle switch.data matches 154.. run function switch:engine/log_message/apply

execute if score #rg_fireblast_bubulle switch.data matches 154.. in switch:game run function switch:maps/regenerate_doors_macro {name:"fireblast_bubulle"}
execute if score #rg_fireblast_bubulle switch.data matches 154.. run scoreboard players reset #rg_fireblast_bubulle switch.data
execute if score #rg_fireblast_bubulle switch.data matches 1.. run schedule function switch:maps/survival/fireblast_bubulle/regenerate 1t


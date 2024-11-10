
#> switch:maps/survival/plucky_penguins/regenerate
#
# @within	switch:maps/survival/plucky_penguins/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_plucky_penguins switch.data 1
execute if score #rg_plucky_penguins switch.data matches 1 run data modify storage switch:maps to_regenerate.plucky_penguins set value 2b
execute if score #rg_plucky_penguins switch.data matches 1 in minecraft:overworld run forceload add 68000 68000 68012 68031
execute if score #rg_plucky_penguins switch.data matches 1 in switch:game run forceload add 68000 68000 68012 68031
execute if score #rg_plucky_penguins switch.data matches 1 in minecraft:overworld run forceload add 68012 68000 68024 68031
execute if score #rg_plucky_penguins switch.data matches 1 in switch:game run forceload add 68012 68000 68024 68031

execute if score #rg_plucky_penguins switch.data matches 1 run scoreboard players set #rg_plucky_penguins_y switch.data 0
execute if score #rg_plucky_penguins switch.data matches 1 run scoreboard players set #rg_plucky_penguins_mod switch.data 0
execute if score #rg_plucky_penguins switch.data matches ..42 summon marker run function switch:maps/survival/plucky_penguins/regeneration_on_marker

execute if score #rg_plucky_penguins switch.data matches 43.. in switch:game run kill @e[type=item,x=68012,y=0,z=68015,distance=..1000]
execute if score #rg_plucky_penguins switch.data matches 43.. run data remove storage switch:maps to_regenerate.plucky_penguins

execute if score #rg_plucky_penguins switch.data matches 43.. in minecraft:overworld run forceload remove 68000 68000 68012 68031
execute if score #rg_plucky_penguins switch.data matches 43.. in switch:game run forceload remove 68000 68000 68012 68031

execute if score #rg_plucky_penguins switch.data matches 43.. in minecraft:overworld run forceload remove 68012 68000 68024 68031
execute if score #rg_plucky_penguins switch.data matches 43.. in switch:game run forceload remove 68012 68000 68024 68031

execute if score #rg_plucky_penguins switch.data matches 43.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"plucky_penguins","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_plucky_penguins switch.data matches 43.. run data modify storage switch:main MessageToLog set value '{"text":"Map `plucky_penguins` just regenerated!"}'
execute if score #rg_plucky_penguins switch.data matches 43.. run function switch:engine/log_message/apply

execute if score #rg_plucky_penguins switch.data matches 43.. in switch:game run function switch:maps/regenerate_doors_macro {name:"plucky_penguins"}
execute if score #rg_plucky_penguins switch.data matches 43.. run scoreboard players reset #rg_plucky_penguins switch.data
execute if score #rg_plucky_penguins switch.data matches 1.. run schedule function switch:maps/survival/plucky_penguins/regenerate 1t


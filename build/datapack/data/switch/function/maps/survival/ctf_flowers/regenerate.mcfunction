
#> switch:maps/survival/ctf_flowers/regenerate
#
# @within	switch:maps/survival/ctf_flowers/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ctf_flowers switch.data 1
execute if score #rg_ctf_flowers switch.data matches 1 run data modify storage switch:maps to_regenerate.ctf_flowers set value 2b
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148000 148000 148025 148105
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add 148000 148000 148025 148105
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148025 148000 148050 148105
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add 148025 148000 148050 148105
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148050 148000 148076 148105
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add 148050 148000 148076 148105
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148076 148000 148101 148105
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add 148076 148000 148101 148105
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148101 148000 148126 148105
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add 148101 148000 148126 148105
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148126 148000 148152 148105
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add 148126 148000 148152 148105
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148152 148000 148177 148105
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add 148152 148000 148177 148105
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add 148177 148000 148202 148105
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add 148177 148000 148202 148105

execute if score #rg_ctf_flowers switch.data matches 1 run scoreboard players set #rg_ctf_flowers_y switch.data 100
execute if score #rg_ctf_flowers switch.data matches 1 run scoreboard players set #rg_ctf_flowers_mod switch.data 0
execute if score #rg_ctf_flowers switch.data matches ..800 summon marker run function switch:maps/survival/ctf_flowers/regeneration_on_marker

execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run kill @e[type=item,x=148101,y=100,z=148052,distance=..1000]
execute if score #rg_ctf_flowers switch.data matches 801.. run data remove storage switch:maps to_regenerate.ctf_flowers

execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove 148000 148000 148025 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove 148000 148000 148025 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove 148025 148000 148050 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove 148025 148000 148050 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove 148050 148000 148076 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove 148050 148000 148076 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove 148076 148000 148101 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove 148076 148000 148101 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove 148101 148000 148126 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove 148101 148000 148126 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove 148126 148000 148152 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove 148126 148000 148152 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove 148152 148000 148177 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove 148152 148000 148177 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove 148177 148000 148202 148105
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove 148177 148000 148202 148105

execute if score #rg_ctf_flowers switch.data matches 801.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Fairy Garden","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"40","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ctf_flowers switch.data matches 801.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Fairy Garden` just regenerated!"}'
execute if score #rg_ctf_flowers switch.data matches 801.. run function switch:engine/log_message/apply

execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run function switch:maps/regenerate_doors_macro {name:"ctf_flowers"}
execute if score #rg_ctf_flowers switch.data matches 801.. run scoreboard players reset #rg_ctf_flowers switch.data
execute if score #rg_ctf_flowers switch.data matches 1.. run schedule function switch:maps/survival/ctf_flowers/regenerate 1t


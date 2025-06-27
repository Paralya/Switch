
#> switch:maps/survival/jn_nature_box/regenerate
#
# @within	switch:maps/survival/jn_nature_box/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_nature_box switch.data 1
execute if score #rg_jn_nature_box switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_nature_box set value 2b
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130000 130000 130019 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130000 130000 130019 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130019 130000 130038 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130019 130000 130038 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130038 130000 130058 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130038 130000 130058 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130058 130000 130077 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130058 130000 130077 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130077 130000 130096 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130077 130000 130096 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130096 130000 130115 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130096 130000 130115 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130115 130000 130134 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130115 130000 130134 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130134 130000 130154 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130134 130000 130154 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130154 130000 130173 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130154 130000 130173 130134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 130173 130000 130192 130134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 130173 130000 130192 130134

execute if score #rg_jn_nature_box switch.data matches 1 run scoreboard players set #rg_jn_nature_box_y switch.data 100
execute if score #rg_jn_nature_box switch.data matches 1 run scoreboard players set #rg_jn_nature_box_mod switch.data 0
execute if score #rg_jn_nature_box switch.data matches ..810 summon marker run function switch:maps/survival/jn_nature_box/regeneration_on_marker

execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run kill @e[type=item,x=130096,y=100,z=130067,distance=..1000]
execute if score #rg_jn_nature_box switch.data matches 811.. run data remove storage switch:maps to_regenerate.jn_nature_box

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130000 130000 130019 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130000 130000 130019 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130019 130000 130038 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130019 130000 130038 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130038 130000 130058 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130038 130000 130058 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130058 130000 130077 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130058 130000 130077 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130077 130000 130096 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130077 130000 130096 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130096 130000 130115 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130096 130000 130115 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130115 130000 130134 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130115 130000 130134 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130134 130000 130154 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130134 130000 130154 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130154 130000 130173 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130154 130000 130173 130134

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 130173 130000 130192 130134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 130173 130000 130192 130134

execute if score #rg_jn_nature_box switch.data matches 811.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"jn_nature_box","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"40","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_jn_nature_box switch.data matches 811.. run data modify storage switch:main MessageToLog set value '{"text":"Map `jn_nature_box` just regenerated!"}'
execute if score #rg_jn_nature_box switch.data matches 811.. run function switch:engine/log_message/apply

execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_nature_box"}
execute if score #rg_jn_nature_box switch.data matches 811.. run scoreboard players reset #rg_jn_nature_box switch.data
execute if score #rg_jn_nature_box switch.data matches 1.. run schedule function switch:maps/survival/jn_nature_box/regenerate 1t


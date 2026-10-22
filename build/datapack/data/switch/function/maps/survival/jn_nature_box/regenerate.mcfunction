
#> switch:maps/survival/jn_nature_box/regenerate
#
# @within	switch:maps/survival/jn_nature_box/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_nature_box switch.data 1
execute if score #rg_jn_nature_box switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_nature_box set value 2b
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 0 10000 19 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 0 10000 19 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 19 10000 38 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 19 10000 38 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 38 10000 58 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 38 10000 58 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 58 10000 77 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 58 10000 77 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 77 10000 96 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 77 10000 96 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 96 10000 115 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 96 10000 115 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 115 10000 134 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 115 10000 134 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 134 10000 154 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 134 10000 154 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 154 10000 173 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 154 10000 173 10134
execute if score #rg_jn_nature_box switch.data matches 1 in minecraft:overworld run forceload add 173 10000 192 10134
execute if score #rg_jn_nature_box switch.data matches 1 in switch:game run forceload add 173 10000 192 10134

execute if score #rg_jn_nature_box switch.data matches 1 run scoreboard players set #rg_jn_nature_box_y switch.data 100
execute if score #rg_jn_nature_box switch.data matches 1 run scoreboard players set #rg_jn_nature_box_mod switch.data 0
execute if score #rg_jn_nature_box switch.data matches ..810 summon marker run function switch:maps/survival/jn_nature_box/regeneration_on_marker

execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run kill @e[type=item,x=96,y=100,z=10067,distance=..1000]
execute if score #rg_jn_nature_box switch.data matches 811.. run data remove storage switch:maps to_regenerate.jn_nature_box

execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 0 10000 19 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 0 10000 19 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 19 10000 38 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 19 10000 38 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 38 10000 58 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 38 10000 58 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 58 10000 77 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 58 10000 77 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 77 10000 96 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 77 10000 96 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 96 10000 115 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 96 10000 115 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 115 10000 134 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 115 10000 134 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 134 10000 154 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 134 10000 154 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 154 10000 173 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 154 10000 173 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in minecraft:overworld run forceload remove 173 10000 192 10134
execute if score #rg_jn_nature_box switch.data matches 811.. in switch:game run forceload remove 173 10000 192 10134

execute if score #rg_jn_nature_box switch.data matches 811.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Nature Box","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"40","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_jn_nature_box switch.data matches 811.. run function switch:engine/log_message/apply {message:"Map `Nature Box` just regenerated!"}

execute if score #rg_jn_nature_box switch.data matches 811.. run scoreboard players reset #rg_jn_nature_box switch.data
execute if score #rg_jn_nature_box switch.data matches 1.. run schedule function switch:maps/survival/jn_nature_box/regenerate 1t



#> switch:maps/survival/hider_mansion/regenerate
#
# @within	switch:maps/survival/hider_mansion/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_hider_mansion switch.data 1
execute if score #rg_hider_mansion switch.data matches 1 run data modify storage switch:maps to_regenerate.hider_mansion set value 2b
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71000 71000 71017 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71000 71000 71017 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71017 71000 71034 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71017 71000 71034 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71034 71000 71051 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71034 71000 71051 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71051 71000 71068 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71051 71000 71068 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71068 71000 71085 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71068 71000 71085 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71085 71000 71102 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71085 71000 71102 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71102 71000 71119 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71102 71000 71119 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71119 71000 71136 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71119 71000 71136 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71136 71000 71153 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71136 71000 71153 71160
execute if score #rg_hider_mansion switch.data matches 1 in minecraft:overworld run forceload add 71153 71000 71170 71160
execute if score #rg_hider_mansion switch.data matches 1 in switch:game run forceload add 71153 71000 71170 71160

execute if score #rg_hider_mansion switch.data matches 1 run scoreboard players set #rg_hider_mansion_y switch.data 100
execute if score #rg_hider_mansion switch.data matches 1 run scoreboard players set #rg_hider_mansion_mod switch.data 0
execute if score #rg_hider_mansion switch.data matches ..710 summon marker run function switch:maps/survival/hider_mansion/regeneration_on_marker

execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run kill @e[type=item,x=71085,y=100,z=71080,distance=..1000]
execute if score #rg_hider_mansion switch.data matches 711.. run data remove storage switch:maps to_regenerate.hider_mansion

execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71000 71000 71017 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71000 71000 71017 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71017 71000 71034 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71017 71000 71034 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71034 71000 71051 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71034 71000 71051 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71051 71000 71068 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71051 71000 71068 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71068 71000 71085 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71068 71000 71085 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71085 71000 71102 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71085 71000 71102 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71102 71000 71119 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71102 71000 71119 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71119 71000 71136 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71119 71000 71136 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71136 71000 71153 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71136 71000 71153 71160
execute if score #rg_hider_mansion switch.data matches 711.. in minecraft:overworld run forceload remove 71153 71000 71170 71160
execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run forceload remove 71153 71000 71170 71160

execute if score #rg_hider_mansion switch.data matches 711.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Hider Mansion","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"35","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_hider_mansion switch.data matches 711.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Hider Mansion` just regenerated!"}'
execute if score #rg_hider_mansion switch.data matches 711.. run function switch:engine/log_message/apply

execute if score #rg_hider_mansion switch.data matches 711.. in switch:game run function switch:maps/regenerate_doors_macro {name:"hider_mansion"}
execute if score #rg_hider_mansion switch.data matches 711.. run scoreboard players reset #rg_hider_mansion switch.data
execute if score #rg_hider_mansion switch.data matches 1.. run schedule function switch:maps/survival/hider_mansion/regenerate 1t


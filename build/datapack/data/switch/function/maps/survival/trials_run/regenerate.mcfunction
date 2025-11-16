
#> switch:maps/survival/trials_run/regenerate
#
# @within	switch:maps/survival/trials_run/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_trials_run switch.data 1
execute if score #rg_trials_run switch.data matches 1 run data modify storage switch:maps to_regenerate.trials_run set value 2b
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67000 67000 67010 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67000 67000 67010 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67010 67000 67020 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67010 67000 67020 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67020 67000 67030 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67020 67000 67030 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67030 67000 67040 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67030 67000 67040 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67040 67000 67050 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67040 67000 67050 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67050 67000 67060 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67050 67000 67060 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67060 67000 67070 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67060 67000 67070 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67070 67000 67080 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67070 67000 67080 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67080 67000 67090 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67080 67000 67090 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67090 67000 67100 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67090 67000 67100 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67100 67000 67110 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67100 67000 67110 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67110 67000 67120 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67110 67000 67120 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67120 67000 67130 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67120 67000 67130 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67130 67000 67140 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67130 67000 67140 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67140 67000 67150 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67140 67000 67150 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67150 67000 67160 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67150 67000 67160 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67160 67000 67170 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67160 67000 67170 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67170 67000 67180 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67170 67000 67180 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67180 67000 67190 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67180 67000 67190 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67190 67000 67200 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67190 67000 67200 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67200 67000 67210 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67200 67000 67210 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67210 67000 67220 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67210 67000 67220 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67220 67000 67230 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67220 67000 67230 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67230 67000 67240 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67230 67000 67240 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67240 67000 67250 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67240 67000 67250 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67250 67000 67260 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67250 67000 67260 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67260 67000 67270 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67260 67000 67270 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67270 67000 67280 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67270 67000 67280 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67280 67000 67290 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67280 67000 67290 67300
execute if score #rg_trials_run switch.data matches 1 in minecraft:overworld run forceload add 67290 67000 67300 67300
execute if score #rg_trials_run switch.data matches 1 in switch:game run forceload add 67290 67000 67300 67300

execute if score #rg_trials_run switch.data matches 1 run scoreboard players set #rg_trials_run_y switch.data 100
execute if score #rg_trials_run switch.data matches 1 run scoreboard players set #rg_trials_run_mod switch.data 0
execute if score #rg_trials_run switch.data matches ..6450 summon marker run function switch:maps/survival/trials_run/regeneration_on_marker

execute if score #rg_trials_run switch.data matches 6451.. in switch:game run kill @e[type=item,x=67150,y=100,z=67150,distance=..1000]
execute if score #rg_trials_run switch.data matches 6451.. run data remove storage switch:maps to_regenerate.trials_run

execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67000 67000 67010 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67000 67000 67010 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67010 67000 67020 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67010 67000 67020 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67020 67000 67030 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67020 67000 67030 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67030 67000 67040 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67030 67000 67040 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67040 67000 67050 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67040 67000 67050 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67050 67000 67060 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67050 67000 67060 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67060 67000 67070 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67060 67000 67070 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67070 67000 67080 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67070 67000 67080 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67080 67000 67090 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67080 67000 67090 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67090 67000 67100 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67090 67000 67100 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67100 67000 67110 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67100 67000 67110 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67110 67000 67120 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67110 67000 67120 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67120 67000 67130 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67120 67000 67130 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67130 67000 67140 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67130 67000 67140 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67140 67000 67150 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67140 67000 67150 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67150 67000 67160 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67150 67000 67160 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67160 67000 67170 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67160 67000 67170 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67170 67000 67180 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67170 67000 67180 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67180 67000 67190 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67180 67000 67190 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67190 67000 67200 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67190 67000 67200 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67200 67000 67210 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67200 67000 67210 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67210 67000 67220 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67210 67000 67220 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67220 67000 67230 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67220 67000 67230 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67230 67000 67240 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67230 67000 67240 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67240 67000 67250 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67240 67000 67250 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67250 67000 67260 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67250 67000 67260 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67260 67000 67270 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67260 67000 67270 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67270 67000 67280 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67270 67000 67280 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67280 67000 67290 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67280 67000 67290 67300
execute if score #rg_trials_run switch.data matches 6451.. in minecraft:overworld run forceload remove 67290 67000 67300 67300
execute if score #rg_trials_run switch.data matches 6451.. in switch:game run forceload remove 67290 67000 67300 67300

execute if score #rg_trials_run switch.data matches 6451.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Trials Run","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"5","color":"gold"},{"text":"m","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_trials_run switch.data matches 6451.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Trials Run` just regenerated!"}'
execute if score #rg_trials_run switch.data matches 6451.. run function switch:engine/log_message/apply

execute if score #rg_trials_run switch.data matches 6451.. in switch:game run function switch:maps/regenerate_doors_macro {name:"trials_run"}
execute if score #rg_trials_run switch.data matches 6451.. run scoreboard players reset #rg_trials_run switch.data
execute if score #rg_trials_run switch.data matches 1.. run schedule function switch:maps/survival/trials_run/regenerate 1t


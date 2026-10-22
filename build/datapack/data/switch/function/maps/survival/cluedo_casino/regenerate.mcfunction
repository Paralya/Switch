
#> switch:maps/survival/cluedo_casino/regenerate
#
# @within	switch:maps/survival/cluedo_casino/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_cluedo_casino switch.data 1
execute if score #rg_cluedo_casino switch.data matches 1 run data modify storage switch:maps to_regenerate.cluedo_casino set value 2b
execute if score #rg_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 6000 -12000 6025 -11931
execute if score #rg_cluedo_casino switch.data matches 1 in switch:game run forceload add 6000 -12000 6025 -11931
execute if score #rg_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 6025 -12000 6050 -11931
execute if score #rg_cluedo_casino switch.data matches 1 in switch:game run forceload add 6025 -12000 6050 -11931
execute if score #rg_cluedo_casino switch.data matches 1 in minecraft:overworld run forceload add 6050 -12000 6075 -11931
execute if score #rg_cluedo_casino switch.data matches 1 in switch:game run forceload add 6050 -12000 6075 -11931

execute if score #rg_cluedo_casino switch.data matches 1 run scoreboard players set #rg_cluedo_casino_y switch.data 100
execute if score #rg_cluedo_casino switch.data matches 1 run scoreboard players set #rg_cluedo_casino_mod switch.data 0
execute if score #rg_cluedo_casino switch.data matches ..180 summon marker run function switch:maps/survival/cluedo_casino/regeneration_on_marker

execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run kill @e[type=item,x=6037,y=100,z=-11965,distance=..1000]
execute if score #rg_cluedo_casino switch.data matches 181.. run data remove storage switch:maps to_regenerate.cluedo_casino

execute if score #rg_cluedo_casino switch.data matches 181.. in minecraft:overworld run forceload remove 6000 -12000 6025 -11931
execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run forceload remove 6000 -12000 6025 -11931
execute if score #rg_cluedo_casino switch.data matches 181.. in minecraft:overworld run forceload remove 6025 -12000 6050 -11931
execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run forceload remove 6025 -12000 6050 -11931
execute if score #rg_cluedo_casino switch.data matches 181.. in minecraft:overworld run forceload remove 6050 -12000 6075 -11931
execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run forceload remove 6050 -12000 6075 -11931

execute if score #rg_cluedo_casino switch.data matches 181.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Cluedo Casino","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"9","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_cluedo_casino switch.data matches 181.. run function switch:engine/log_message/apply {message:"Map `Cluedo Casino` just regenerated!"}

execute if score #rg_cluedo_casino switch.data matches 181.. in switch:game run function switch:maps/regenerate_doors_macro {name:"cluedo_casino"}
execute if score #rg_cluedo_casino switch.data matches 181.. run scoreboard players reset #rg_cluedo_casino switch.data
execute if score #rg_cluedo_casino switch.data matches 1.. run schedule function switch:maps/survival/cluedo_casino/regenerate 1t


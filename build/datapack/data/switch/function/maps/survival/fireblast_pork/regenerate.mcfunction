
#> switch:maps/survival/fireblast_pork/regenerate
#
# @within	switch:maps/survival/fireblast_pork/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_fireblast_pork switch.data 1
execute if score #rg_fireblast_pork switch.data matches 1 run data modify storage switch:maps to_regenerate.fireblast_pork set value 2b
execute if score #rg_fireblast_pork switch.data matches 1 in minecraft:overworld run forceload add 165000 165000 165025 165075
execute if score #rg_fireblast_pork switch.data matches 1 in switch:game run forceload add 165000 165000 165025 165075
execute if score #rg_fireblast_pork switch.data matches 1 in minecraft:overworld run forceload add 165025 165000 165050 165075
execute if score #rg_fireblast_pork switch.data matches 1 in switch:game run forceload add 165025 165000 165050 165075
execute if score #rg_fireblast_pork switch.data matches 1 in minecraft:overworld run forceload add 165050 165000 165075 165075
execute if score #rg_fireblast_pork switch.data matches 1 in switch:game run forceload add 165050 165000 165075 165075

execute if score #rg_fireblast_pork switch.data matches 1 run scoreboard players set #rg_fireblast_pork_y switch.data 100
execute if score #rg_fireblast_pork switch.data matches 1 run scoreboard players set #rg_fireblast_pork_mod switch.data 0
execute if score #rg_fireblast_pork switch.data matches ..171 summon marker run function switch:maps/survival/fireblast_pork/regeneration_on_marker

execute if score #rg_fireblast_pork switch.data matches 172.. in switch:game run kill @e[type=item,x=165037,y=100,z=165037,distance=..1000]
execute if score #rg_fireblast_pork switch.data matches 172.. run data remove storage switch:maps to_regenerate.fireblast_pork

execute if score #rg_fireblast_pork switch.data matches 172.. in minecraft:overworld run forceload remove 165000 165000 165025 165075
execute if score #rg_fireblast_pork switch.data matches 172.. in switch:game run forceload remove 165000 165000 165025 165075
execute if score #rg_fireblast_pork switch.data matches 172.. in minecraft:overworld run forceload remove 165025 165000 165050 165075
execute if score #rg_fireblast_pork switch.data matches 172.. in switch:game run forceload remove 165025 165000 165050 165075
execute if score #rg_fireblast_pork switch.data matches 172.. in minecraft:overworld run forceload remove 165050 165000 165075 165075
execute if score #rg_fireblast_pork switch.data matches 172.. in switch:game run forceload remove 165050 165000 165075 165075

execute if score #rg_fireblast_pork switch.data matches 172.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Vegan Pork","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_fireblast_pork switch.data matches 172.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Vegan Pork` just regenerated!"}'
execute if score #rg_fireblast_pork switch.data matches 172.. run function switch:engine/log_message/apply

execute if score #rg_fireblast_pork switch.data matches 172.. in switch:game run function switch:maps/regenerate_doors_macro {name:"fireblast_pork"}
execute if score #rg_fireblast_pork switch.data matches 172.. run scoreboard players reset #rg_fireblast_pork switch.data
execute if score #rg_fireblast_pork switch.data matches 1.. run schedule function switch:maps/survival/fireblast_pork/regenerate 1t


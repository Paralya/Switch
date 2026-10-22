
#> switch:maps/survival/arti_box/regenerate
#
# @within	switch:maps/survival/arti_box/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_arti_box switch.data 1
execute if score #rg_arti_box switch.data matches 1 run data modify storage switch:maps to_regenerate.arti_box set value 2b
execute if score #rg_arti_box switch.data matches 1 in minecraft:overworld run forceload add 10000 -4000 10024 -3953
execute if score #rg_arti_box switch.data matches 1 in switch:game run forceload add 10000 -4000 10024 -3953
execute if score #rg_arti_box switch.data matches 1 in minecraft:overworld run forceload add 10024 -4000 10047 -3953
execute if score #rg_arti_box switch.data matches 1 in switch:game run forceload add 10024 -4000 10047 -3953

execute if score #rg_arti_box switch.data matches 1 run scoreboard players set #rg_arti_box_y switch.data 100
execute if score #rg_arti_box switch.data matches 1 run scoreboard players set #rg_arti_box_mod switch.data 0
execute if score #rg_arti_box switch.data matches ..70 summon marker run function switch:maps/survival/arti_box/regeneration_on_marker

execute if score #rg_arti_box switch.data matches 71.. in switch:game run kill @e[type=item,x=10023,y=100,z=-3976,distance=..1000]
execute if score #rg_arti_box switch.data matches 71.. run data remove storage switch:maps to_regenerate.arti_box

execute if score #rg_arti_box switch.data matches 71.. in minecraft:overworld run forceload remove 10000 -4000 10024 -3953
execute if score #rg_arti_box switch.data matches 71.. in switch:game run forceload remove 10000 -4000 10024 -3953
execute if score #rg_arti_box switch.data matches 71.. in minecraft:overworld run forceload remove 10024 -4000 10047 -3953
execute if score #rg_arti_box switch.data matches 71.. in switch:game run forceload remove 10024 -4000 10047 -3953

execute if score #rg_arti_box switch.data matches 71.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Arti Box","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_arti_box switch.data matches 71.. run function switch:engine/log_message/apply {message:"Map `Arti Box` just regenerated!"}

execute if score #rg_arti_box switch.data matches 71.. in switch:game run function switch:maps/regenerate_doors_macro {name:"arti_box"}
execute if score #rg_arti_box switch.data matches 71.. run scoreboard players reset #rg_arti_box switch.data
execute if score #rg_arti_box switch.data matches 1.. run schedule function switch:maps/survival/arti_box/regenerate 1t


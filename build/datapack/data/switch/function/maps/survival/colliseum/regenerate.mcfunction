
#> switch:maps/survival/colliseum/regenerate
#
# @within	switch:maps/survival/colliseum/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_colliseum switch.data 1
execute if score #rg_colliseum switch.data matches 1 run data modify storage switch:maps to_regenerate.colliseum set value 2b
execute if score #rg_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59000 59000 59020 59124
execute if score #rg_colliseum switch.data matches 1 in switch:game run forceload add 59000 59000 59020 59124
execute if score #rg_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59020 59000 59040 59124
execute if score #rg_colliseum switch.data matches 1 in switch:game run forceload add 59020 59000 59040 59124
execute if score #rg_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59040 59000 59060 59124
execute if score #rg_colliseum switch.data matches 1 in switch:game run forceload add 59040 59000 59060 59124
execute if score #rg_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59060 59000 59080 59124
execute if score #rg_colliseum switch.data matches 1 in switch:game run forceload add 59060 59000 59080 59124
execute if score #rg_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59080 59000 59100 59124
execute if score #rg_colliseum switch.data matches 1 in switch:game run forceload add 59080 59000 59100 59124
execute if score #rg_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59100 59000 59120 59124
execute if score #rg_colliseum switch.data matches 1 in switch:game run forceload add 59100 59000 59120 59124
execute if score #rg_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59120 59000 59140 59124
execute if score #rg_colliseum switch.data matches 1 in switch:game run forceload add 59120 59000 59140 59124
execute if score #rg_colliseum switch.data matches 1 in minecraft:overworld run forceload add 59140 59000 59160 59124
execute if score #rg_colliseum switch.data matches 1 in switch:game run forceload add 59140 59000 59160 59124

execute if score #rg_colliseum switch.data matches 1 run scoreboard players set #rg_colliseum_y switch.data 0
execute if score #rg_colliseum switch.data matches 1 run scoreboard players set #rg_colliseum_mod switch.data 0
execute if score #rg_colliseum switch.data matches ..384 summon marker run function switch:maps/survival/colliseum/regeneration_on_marker

execute if score #rg_colliseum switch.data matches 385.. in switch:game run kill @e[type=item,x=59080,y=0,z=59062,distance=..1000]
execute if score #rg_colliseum switch.data matches 385.. run data remove storage switch:maps to_regenerate.colliseum

execute if score #rg_colliseum switch.data matches 385.. in minecraft:overworld run forceload remove 59000 59000 59020 59124
execute if score #rg_colliseum switch.data matches 385.. in switch:game run forceload remove 59000 59000 59020 59124

execute if score #rg_colliseum switch.data matches 385.. in minecraft:overworld run forceload remove 59020 59000 59040 59124
execute if score #rg_colliseum switch.data matches 385.. in switch:game run forceload remove 59020 59000 59040 59124

execute if score #rg_colliseum switch.data matches 385.. in minecraft:overworld run forceload remove 59040 59000 59060 59124
execute if score #rg_colliseum switch.data matches 385.. in switch:game run forceload remove 59040 59000 59060 59124

execute if score #rg_colliseum switch.data matches 385.. in minecraft:overworld run forceload remove 59060 59000 59080 59124
execute if score #rg_colliseum switch.data matches 385.. in switch:game run forceload remove 59060 59000 59080 59124

execute if score #rg_colliseum switch.data matches 385.. in minecraft:overworld run forceload remove 59080 59000 59100 59124
execute if score #rg_colliseum switch.data matches 385.. in switch:game run forceload remove 59080 59000 59100 59124

execute if score #rg_colliseum switch.data matches 385.. in minecraft:overworld run forceload remove 59100 59000 59120 59124
execute if score #rg_colliseum switch.data matches 385.. in switch:game run forceload remove 59100 59000 59120 59124

execute if score #rg_colliseum switch.data matches 385.. in minecraft:overworld run forceload remove 59120 59000 59140 59124
execute if score #rg_colliseum switch.data matches 385.. in switch:game run forceload remove 59120 59000 59140 59124

execute if score #rg_colliseum switch.data matches 385.. in minecraft:overworld run forceload remove 59140 59000 59160 59124
execute if score #rg_colliseum switch.data matches 385.. in switch:game run forceload remove 59140 59000 59160 59124

execute if score #rg_colliseum switch.data matches 385.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"colliseum","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_colliseum switch.data matches 385.. run data modify storage switch:main MessageToLog set value '{"text":"Map `colliseum` just regenerated!"}'
execute if score #rg_colliseum switch.data matches 385.. run function switch:engine/log_message/apply

execute if score #rg_colliseum switch.data matches 385.. in switch:game run function switch:maps/regenerate_doors_macro {name:"colliseum"}
execute if score #rg_colliseum switch.data matches 385.. run scoreboard players reset #rg_colliseum switch.data
execute if score #rg_colliseum switch.data matches 1.. run schedule function switch:maps/survival/colliseum/regenerate 1t


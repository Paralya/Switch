
#> switch:maps/survival/overgrown_forest/regenerate
#
# @within	switch:maps/survival/overgrown_forest/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_overgrown_forest switch.data 1
execute if score #rg_overgrown_forest switch.data matches 1 run data modify storage switch:maps to_regenerate.overgrown_forest set value 2b
execute if score #rg_overgrown_forest switch.data matches 1 in minecraft:overworld run forceload add 139000 139000 139023 139103
execute if score #rg_overgrown_forest switch.data matches 1 in switch:game run forceload add 139000 139000 139023 139103
execute if score #rg_overgrown_forest switch.data matches 1 in minecraft:overworld run forceload add 139023 139000 139046 139103
execute if score #rg_overgrown_forest switch.data matches 1 in switch:game run forceload add 139023 139000 139046 139103
execute if score #rg_overgrown_forest switch.data matches 1 in minecraft:overworld run forceload add 139046 139000 139068 139103
execute if score #rg_overgrown_forest switch.data matches 1 in switch:game run forceload add 139046 139000 139068 139103
execute if score #rg_overgrown_forest switch.data matches 1 in minecraft:overworld run forceload add 139068 139000 139091 139103
execute if score #rg_overgrown_forest switch.data matches 1 in switch:game run forceload add 139068 139000 139091 139103

execute if score #rg_overgrown_forest switch.data matches 1 run scoreboard players set #rg_overgrown_forest_y switch.data 0
execute if score #rg_overgrown_forest switch.data matches 1 run scoreboard players set #rg_overgrown_forest_mod switch.data 0
execute if score #rg_overgrown_forest switch.data matches ..204 summon marker run function switch:maps/survival/overgrown_forest/regeneration_on_marker

execute if score #rg_overgrown_forest switch.data matches 205.. in switch:game run kill @e[type=item,x=139045,y=0,z=139051,distance=..1000]
execute if score #rg_overgrown_forest switch.data matches 205.. run data remove storage switch:maps to_regenerate.overgrown_forest

execute if score #rg_overgrown_forest switch.data matches 205.. in minecraft:overworld run forceload remove 139000 139000 139023 139103
execute if score #rg_overgrown_forest switch.data matches 205.. in switch:game run forceload remove 139000 139000 139023 139103

execute if score #rg_overgrown_forest switch.data matches 205.. in minecraft:overworld run forceload remove 139023 139000 139046 139103
execute if score #rg_overgrown_forest switch.data matches 205.. in switch:game run forceload remove 139023 139000 139046 139103

execute if score #rg_overgrown_forest switch.data matches 205.. in minecraft:overworld run forceload remove 139046 139000 139068 139103
execute if score #rg_overgrown_forest switch.data matches 205.. in switch:game run forceload remove 139046 139000 139068 139103

execute if score #rg_overgrown_forest switch.data matches 205.. in minecraft:overworld run forceload remove 139068 139000 139091 139103
execute if score #rg_overgrown_forest switch.data matches 205.. in switch:game run forceload remove 139068 139000 139091 139103

execute if score #rg_overgrown_forest switch.data matches 205.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"overgrown_forest","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"10","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_overgrown_forest switch.data matches 205.. run data modify storage switch:main MessageToLog set value '{"text":"Map `overgrown_forest` just regenerated!"}'
execute if score #rg_overgrown_forest switch.data matches 205.. run function switch:engine/log_message/apply

execute if score #rg_overgrown_forest switch.data matches 205.. in switch:game run function switch:maps/regenerate_doors_macro {name:"overgrown_forest"}
execute if score #rg_overgrown_forest switch.data matches 205.. run scoreboard players reset #rg_overgrown_forest switch.data
execute if score #rg_overgrown_forest switch.data matches 1.. run schedule function switch:maps/survival/overgrown_forest/regenerate 1t



#> switch:maps/survival/octogone_nether_ice/regenerate
#
# @within	switch:maps/survival/octogone_nether_ice/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_octogone_nether_ice switch.data 1
execute if score #rg_octogone_nether_ice switch.data matches 1 run data modify storage switch:maps to_regenerate.octogone_nether_ice set value 2b
execute if score #rg_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 160000 160000 160020 160080
execute if score #rg_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 160000 160000 160020 160080
execute if score #rg_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 160020 160000 160040 160080
execute if score #rg_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 160020 160000 160040 160080
execute if score #rg_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 160040 160000 160060 160080
execute if score #rg_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 160040 160000 160060 160080
execute if score #rg_octogone_nether_ice switch.data matches 1 in minecraft:overworld run forceload add 160060 160000 160080 160080
execute if score #rg_octogone_nether_ice switch.data matches 1 in switch:game run forceload add 160060 160000 160080 160080

execute if score #rg_octogone_nether_ice switch.data matches 1 run scoreboard players set #rg_octogone_nether_ice_y switch.data 100
execute if score #rg_octogone_nether_ice switch.data matches 1 run scoreboard players set #rg_octogone_nether_ice_mod switch.data 0
execute if score #rg_octogone_nether_ice switch.data matches ..252 summon marker run function switch:maps/survival/octogone_nether_ice/regeneration_on_marker

execute if score #rg_octogone_nether_ice switch.data matches 253.. in switch:game run kill @e[type=item,x=160040,y=100,z=160040,distance=..1000]
execute if score #rg_octogone_nether_ice switch.data matches 253.. run data remove storage switch:maps to_regenerate.octogone_nether_ice

execute if score #rg_octogone_nether_ice switch.data matches 253.. in minecraft:overworld run forceload remove 160000 160000 160020 160080
execute if score #rg_octogone_nether_ice switch.data matches 253.. in switch:game run forceload remove 160000 160000 160020 160080
execute if score #rg_octogone_nether_ice switch.data matches 253.. in minecraft:overworld run forceload remove 160020 160000 160040 160080
execute if score #rg_octogone_nether_ice switch.data matches 253.. in switch:game run forceload remove 160020 160000 160040 160080
execute if score #rg_octogone_nether_ice switch.data matches 253.. in minecraft:overworld run forceload remove 160040 160000 160060 160080
execute if score #rg_octogone_nether_ice switch.data matches 253.. in switch:game run forceload remove 160040 160000 160060 160080
execute if score #rg_octogone_nether_ice switch.data matches 253.. in minecraft:overworld run forceload remove 160060 160000 160080 160080
execute if score #rg_octogone_nether_ice switch.data matches 253.. in switch:game run forceload remove 160060 160000 160080 160080

execute if score #rg_octogone_nether_ice switch.data matches 253.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Octogone Nether Ice","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_octogone_nether_ice switch.data matches 253.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Octogone Nether Ice` just regenerated!"}'
execute if score #rg_octogone_nether_ice switch.data matches 253.. run function switch:engine/log_message/apply

execute if score #rg_octogone_nether_ice switch.data matches 253.. in switch:game run function switch:maps/regenerate_doors_macro {name:"octogone_nether_ice"}
execute if score #rg_octogone_nether_ice switch.data matches 253.. run scoreboard players reset #rg_octogone_nether_ice switch.data
execute if score #rg_octogone_nether_ice switch.data matches 1.. run schedule function switch:maps/survival/octogone_nether_ice/regenerate 1t


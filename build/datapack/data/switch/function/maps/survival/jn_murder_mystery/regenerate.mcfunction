
#> switch:maps/survival/jn_murder_mystery/regenerate
#
# @within	switch:maps/survival/jn_murder_mystery/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_jn_murder_mystery switch.data 1
execute if score #rg_jn_murder_mystery switch.data matches 1 run data modify storage switch:maps to_regenerate.jn_murder_mystery set value 2b
execute if score #rg_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add 134000 134000 134021 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in switch:game run forceload add 134000 134000 134021 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add 134021 134000 134043 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in switch:game run forceload add 134021 134000 134043 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add 134043 134000 134064 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in switch:game run forceload add 134043 134000 134064 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add 134064 134000 134085 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in switch:game run forceload add 134064 134000 134085 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add 134085 134000 134106 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in switch:game run forceload add 134085 134000 134106 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add 134106 134000 134128 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in switch:game run forceload add 134106 134000 134128 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in minecraft:overworld run forceload add 134128 134000 134149 134123
execute if score #rg_jn_murder_mystery switch.data matches 1 in switch:game run forceload add 134128 134000 134149 134123

execute if score #rg_jn_murder_mystery switch.data matches 1 run scoreboard players set #rg_jn_murder_mystery_y switch.data 100
execute if score #rg_jn_murder_mystery switch.data matches 1 run scoreboard players set #rg_jn_murder_mystery_mod switch.data 0
execute if score #rg_jn_murder_mystery switch.data matches ..441 summon marker run function switch:maps/survival/jn_murder_mystery/regeneration_on_marker

execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run kill @e[type=item,x=134074,y=100,z=134061,distance=..1000]
execute if score #rg_jn_murder_mystery switch.data matches 442.. run data remove storage switch:maps to_regenerate.jn_murder_mystery

execute if score #rg_jn_murder_mystery switch.data matches 442.. in minecraft:overworld run forceload remove 134000 134000 134021 134123
execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run forceload remove 134000 134000 134021 134123

execute if score #rg_jn_murder_mystery switch.data matches 442.. in minecraft:overworld run forceload remove 134021 134000 134043 134123
execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run forceload remove 134021 134000 134043 134123

execute if score #rg_jn_murder_mystery switch.data matches 442.. in minecraft:overworld run forceload remove 134043 134000 134064 134123
execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run forceload remove 134043 134000 134064 134123

execute if score #rg_jn_murder_mystery switch.data matches 442.. in minecraft:overworld run forceload remove 134064 134000 134085 134123
execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run forceload remove 134064 134000 134085 134123

execute if score #rg_jn_murder_mystery switch.data matches 442.. in minecraft:overworld run forceload remove 134085 134000 134106 134123
execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run forceload remove 134085 134000 134106 134123

execute if score #rg_jn_murder_mystery switch.data matches 442.. in minecraft:overworld run forceload remove 134106 134000 134128 134123
execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run forceload remove 134106 134000 134128 134123

execute if score #rg_jn_murder_mystery switch.data matches 442.. in minecraft:overworld run forceload remove 134128 134000 134149 134123
execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run forceload remove 134128 134000 134149 134123

execute if score #rg_jn_murder_mystery switch.data matches 442.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"jn_murder_mystery","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_jn_murder_mystery switch.data matches 442.. run data modify storage switch:main MessageToLog set value '{"text":"Map `jn_murder_mystery` just regenerated!"}'
execute if score #rg_jn_murder_mystery switch.data matches 442.. run function switch:engine/log_message/apply

execute if score #rg_jn_murder_mystery switch.data matches 442.. in switch:game run function switch:maps/regenerate_doors_macro {name:"jn_murder_mystery"}
execute if score #rg_jn_murder_mystery switch.data matches 442.. run scoreboard players reset #rg_jn_murder_mystery switch.data
execute if score #rg_jn_murder_mystery switch.data matches 1.. run schedule function switch:maps/survival/jn_murder_mystery/regenerate 1t


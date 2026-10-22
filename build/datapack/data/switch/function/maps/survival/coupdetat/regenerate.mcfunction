
#> switch:maps/survival/coupdetat/regenerate
#
# @within	switch:modes/_coupdetat/process_end
#			switch:maps/survival/coupdetat/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_coupdetat switch.data 1
execute if score #rg_coupdetat switch.data matches 1 run data modify storage switch:maps to_regenerate.coupdetat set value 2b
execute if score #rg_coupdetat switch.data matches 1 in minecraft:overworld run forceload add -4000 2000 -3988 2022
execute if score #rg_coupdetat switch.data matches 1 in switch:game run forceload add -4000 2000 -3988 2022
execute if score #rg_coupdetat switch.data matches 1 in minecraft:overworld run forceload add -3988 2000 -3977 2022
execute if score #rg_coupdetat switch.data matches 1 in switch:game run forceload add -3988 2000 -3977 2022

execute if score #rg_coupdetat switch.data matches 1 run scoreboard players set #rg_coupdetat_y switch.data 100
execute if score #rg_coupdetat switch.data matches 1 run scoreboard players set #rg_coupdetat_mod switch.data 0
execute if score #rg_coupdetat switch.data matches ..48 summon marker run function switch:maps/survival/coupdetat/regeneration_on_marker

execute if score #rg_coupdetat switch.data matches 49.. in switch:game run kill @e[type=item,x=-3988,y=100,z=2011,distance=..1000]
execute if score #rg_coupdetat switch.data matches 49.. run data remove storage switch:maps to_regenerate.coupdetat

execute if score #rg_coupdetat switch.data matches 49.. in minecraft:overworld run forceload remove -4000 2000 -3988 2022
execute if score #rg_coupdetat switch.data matches 49.. in switch:game run forceload remove -4000 2000 -3988 2022
execute if score #rg_coupdetat switch.data matches 49.. in minecraft:overworld run forceload remove -3988 2000 -3977 2022
execute if score #rg_coupdetat switch.data matches 49.. in switch:game run forceload remove -3988 2000 -3977 2022

execute if score #rg_coupdetat switch.data matches 49.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Coup d'état","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_coupdetat switch.data matches 49.. run function switch:engine/log_message/apply {message:"Map `Coup d'état` just regenerated!"}

execute if score #rg_coupdetat switch.data matches 49.. in switch:game run function switch:maps/regenerate_doors_macro {name:"coupdetat"}
execute if score #rg_coupdetat switch.data matches 49.. run scoreboard players reset #rg_coupdetat switch.data
execute if score #rg_coupdetat switch.data matches 1.. run schedule function switch:maps/survival/coupdetat/regenerate 1t


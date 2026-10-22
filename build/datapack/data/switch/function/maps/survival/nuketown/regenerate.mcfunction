
#> switch:maps/survival/nuketown/regenerate
#
# @within	switch:maps/survival/nuketown/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_nuketown switch.data 1
execute if score #rg_nuketown switch.data matches 1 run data modify storage switch:maps to_regenerate.nuketown set value 2b
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -4000 8000 -3987 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -4000 8000 -3987 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3987 8000 -3974 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3987 8000 -3974 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3974 8000 -3961 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3974 8000 -3961 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3961 8000 -3948 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3961 8000 -3948 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3948 8000 -3935 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3948 8000 -3935 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3935 8000 -3922 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3935 8000 -3922 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3922 8000 -3909 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3922 8000 -3909 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3909 8000 -3896 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3909 8000 -3896 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3896 8000 -3884 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3896 8000 -3884 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3884 8000 -3871 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3884 8000 -3871 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3871 8000 -3858 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3871 8000 -3858 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3858 8000 -3845 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3858 8000 -3845 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3845 8000 -3832 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3845 8000 -3832 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3832 8000 -3819 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3832 8000 -3819 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3819 8000 -3806 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3819 8000 -3806 8220
execute if score #rg_nuketown switch.data matches 1 in minecraft:overworld run forceload add -3806 8000 -3793 8220
execute if score #rg_nuketown switch.data matches 1 in switch:game run forceload add -3806 8000 -3793 8220

execute if score #rg_nuketown switch.data matches 1 run scoreboard players set #rg_nuketown_y switch.data 100
execute if score #rg_nuketown switch.data matches 1 run scoreboard players set #rg_nuketown_mod switch.data 0
execute if score #rg_nuketown switch.data matches ..832 summon marker run function switch:maps/survival/nuketown/regeneration_on_marker

execute if score #rg_nuketown switch.data matches 833.. in switch:game run kill @e[type=item,x=-3896,y=100,z=8110,distance=..1000]
execute if score #rg_nuketown switch.data matches 833.. run data remove storage switch:maps to_regenerate.nuketown

execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -4000 8000 -3987 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -4000 8000 -3987 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3987 8000 -3974 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3987 8000 -3974 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3974 8000 -3961 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3974 8000 -3961 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3961 8000 -3948 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3961 8000 -3948 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3948 8000 -3935 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3948 8000 -3935 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3935 8000 -3922 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3935 8000 -3922 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3922 8000 -3909 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3922 8000 -3909 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3909 8000 -3896 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3909 8000 -3896 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3896 8000 -3884 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3896 8000 -3884 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3884 8000 -3871 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3884 8000 -3871 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3871 8000 -3858 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3871 8000 -3858 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3858 8000 -3845 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3858 8000 -3845 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3845 8000 -3832 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3845 8000 -3832 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3832 8000 -3819 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3832 8000 -3819 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3819 8000 -3806 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3819 8000 -3806 8220
execute if score #rg_nuketown switch.data matches 833.. in minecraft:overworld run forceload remove -3806 8000 -3793 8220
execute if score #rg_nuketown switch.data matches 833.. in switch:game run forceload remove -3806 8000 -3793 8220

execute if score #rg_nuketown switch.data matches 833.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Nuketown","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_nuketown switch.data matches 833.. run function switch:engine/log_message/apply {message:"Map `Nuketown` just regenerated!"}

execute if score #rg_nuketown switch.data matches 833.. in switch:game run function switch:maps/regenerate_doors_macro {name:"nuketown"}
execute if score #rg_nuketown switch.data matches 833.. run scoreboard players reset #rg_nuketown switch.data
execute if score #rg_nuketown switch.data matches 1.. run schedule function switch:maps/survival/nuketown/regenerate 1t


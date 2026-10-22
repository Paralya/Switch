
#> switch:maps/survival/ctf_flowers/regenerate
#
# @within	switch:maps/survival/ctf_flowers/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_ctf_flowers switch.data 1
execute if score #rg_ctf_flowers switch.data matches 1 run data modify storage switch:maps to_regenerate.ctf_flowers set value 2b
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -12000 -8000 -11975 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add -12000 -8000 -11975 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11975 -8000 -11950 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add -11975 -8000 -11950 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11950 -8000 -11924 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add -11950 -8000 -11924 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11924 -8000 -11899 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add -11924 -8000 -11899 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11899 -8000 -11874 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add -11899 -8000 -11874 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11874 -8000 -11848 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add -11874 -8000 -11848 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11848 -8000 -11823 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add -11848 -8000 -11823 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in minecraft:overworld run forceload add -11823 -8000 -11798 -7895
execute if score #rg_ctf_flowers switch.data matches 1 in switch:game run forceload add -11823 -8000 -11798 -7895

execute if score #rg_ctf_flowers switch.data matches 1 run scoreboard players set #rg_ctf_flowers_y switch.data 100
execute if score #rg_ctf_flowers switch.data matches 1 run scoreboard players set #rg_ctf_flowers_mod switch.data 0
execute if score #rg_ctf_flowers switch.data matches ..800 summon marker run function switch:maps/survival/ctf_flowers/regeneration_on_marker

execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run kill @e[type=item,x=-11899,y=100,z=-7947,distance=..1000]
execute if score #rg_ctf_flowers switch.data matches 801.. run data remove storage switch:maps to_regenerate.ctf_flowers

execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove -12000 -8000 -11975 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove -12000 -8000 -11975 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove -11975 -8000 -11950 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove -11975 -8000 -11950 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove -11950 -8000 -11924 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove -11950 -8000 -11924 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove -11924 -8000 -11899 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove -11924 -8000 -11899 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove -11899 -8000 -11874 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove -11899 -8000 -11874 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove -11874 -8000 -11848 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove -11874 -8000 -11848 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove -11848 -8000 -11823 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove -11848 -8000 -11823 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in minecraft:overworld run forceload remove -11823 -8000 -11798 -7895
execute if score #rg_ctf_flowers switch.data matches 801.. in switch:game run forceload remove -11823 -8000 -11798 -7895

execute if score #rg_ctf_flowers switch.data matches 801.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Fairy Garden","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"40","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_ctf_flowers switch.data matches 801.. run function switch:engine/log_message/apply {message:"Map `Fairy Garden` just regenerated!"}

execute if score #rg_ctf_flowers switch.data matches 801.. run scoreboard players reset #rg_ctf_flowers switch.data
execute if score #rg_ctf_flowers switch.data matches 1.. run schedule function switch:maps/survival/ctf_flowers/regenerate 1t



#> switch:maps/survival/hills_land/regenerate
#
# @within	switch:maps/survival/hills_land/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_hills_land switch.data 1
execute if score #rg_hills_land switch.data matches 1 run data modify storage switch:maps to_regenerate.hills_land set value 2b
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6895 -5393 6908 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6895 -5393 6908 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6908 -5393 6921 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6908 -5393 6921 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6921 -5393 6934 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6921 -5393 6934 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6934 -5393 6947 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6934 -5393 6947 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6947 -5393 6959 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6947 -5393 6959 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6959 -5393 6972 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6959 -5393 6972 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6972 -5393 6985 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6972 -5393 6985 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6985 -5393 6998 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6985 -5393 6998 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 6998 -5393 7011 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 6998 -5393 7011 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7011 -5393 7024 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7011 -5393 7024 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7024 -5393 7037 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7024 -5393 7037 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7037 -5393 7050 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7037 -5393 7050 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7050 -5393 7063 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7050 -5393 7063 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7063 -5393 7075 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7063 -5393 7075 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7075 -5393 7088 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7075 -5393 7088 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7088 -5393 7101 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7088 -5393 7101 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7101 -5393 7114 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7101 -5393 7114 -5166
execute if score #rg_hills_land switch.data matches 1 in minecraft:overworld run forceload add 7114 -5393 7127 -5166
execute if score #rg_hills_land switch.data matches 1 in switch:game run forceload add 7114 -5393 7127 -5166

execute if score #rg_hills_land switch.data matches 1 run scoreboard players set #rg_hills_land_y switch.data 85
execute if score #rg_hills_land switch.data matches 1 run scoreboard players set #rg_hills_land_mod switch.data 0
execute if score #rg_hills_land switch.data matches ..1188 summon marker run function switch:maps/survival/hills_land/regeneration_on_marker

execute if score #rg_hills_land switch.data matches 1189.. in switch:game run kill @e[type=item,x=7011,y=85,z=-5279,distance=..1000]
execute if score #rg_hills_land switch.data matches 1189.. run data remove storage switch:maps to_regenerate.hills_land

execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6895 -5393 6908 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6895 -5393 6908 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6908 -5393 6921 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6908 -5393 6921 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6921 -5393 6934 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6921 -5393 6934 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6934 -5393 6947 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6934 -5393 6947 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6947 -5393 6959 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6947 -5393 6959 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6959 -5393 6972 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6959 -5393 6972 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6972 -5393 6985 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6972 -5393 6985 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6985 -5393 6998 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6985 -5393 6998 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 6998 -5393 7011 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 6998 -5393 7011 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7011 -5393 7024 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7011 -5393 7024 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7024 -5393 7037 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7024 -5393 7037 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7037 -5393 7050 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7037 -5393 7050 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7050 -5393 7063 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7050 -5393 7063 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7063 -5393 7075 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7063 -5393 7075 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7075 -5393 7088 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7075 -5393 7088 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7088 -5393 7101 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7088 -5393 7101 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7101 -5393 7114 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7101 -5393 7114 -5166
execute if score #rg_hills_land switch.data matches 1189.. in minecraft:overworld run forceload remove 7114 -5393 7127 -5166
execute if score #rg_hills_land switch.data matches 1189.. in switch:game run forceload remove 7114 -5393 7127 -5166

execute if score #rg_hills_land switch.data matches 1189.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Hills Land","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"59","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_hills_land switch.data matches 1189.. run function switch:engine/log_message/apply {message:"Map `Hills Land` just regenerated!"}

execute if score #rg_hills_land switch.data matches 1189.. run scoreboard players reset #rg_hills_land switch.data
execute if score #rg_hills_land switch.data matches 1.. run schedule function switch:maps/survival/hills_land/regenerate 1t


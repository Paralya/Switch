
#> switch:maps/survival/vilarles_castillo/regenerate
#
# @within	switch:maps/survival/vilarles_castillo/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_vilarles_castillo switch.data 1
execute if score #rg_vilarles_castillo switch.data matches 1 run data modify storage switch:maps to_regenerate.vilarles_castillo set value 2b
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -8000 -8000 -7984 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -8000 -8000 -7984 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7984 -8000 -7968 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7984 -8000 -7968 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7968 -8000 -7952 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7968 -8000 -7952 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7952 -8000 -7936 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7952 -8000 -7936 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7936 -8000 -7920 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7936 -8000 -7920 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7920 -8000 -7903 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7920 -8000 -7903 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7903 -8000 -7887 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7903 -8000 -7887 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7887 -8000 -7871 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7887 -8000 -7871 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7871 -8000 -7855 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7871 -8000 -7855 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7855 -8000 -7839 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7855 -8000 -7839 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in minecraft:overworld run forceload add -7839 -8000 -7823 -7827
execute if score #rg_vilarles_castillo switch.data matches 1 in switch:game run forceload add -7839 -8000 -7823 -7827

execute if score #rg_vilarles_castillo switch.data matches 1 run scoreboard players set #rg_vilarles_castillo_y switch.data 100
execute if score #rg_vilarles_castillo switch.data matches 1 run scoreboard players set #rg_vilarles_castillo_mod switch.data 0
execute if score #rg_vilarles_castillo switch.data matches ..1727 summon marker run function switch:maps/survival/vilarles_castillo/regeneration_on_marker

execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run kill @e[type=item,x=-7911,y=100,z=-7913,distance=..1000]
execute if score #rg_vilarles_castillo switch.data matches 1728.. run data remove storage switch:maps to_regenerate.vilarles_castillo

execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -8000 -8000 -7984 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -8000 -8000 -7984 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7984 -8000 -7968 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7984 -8000 -7968 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7968 -8000 -7952 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7968 -8000 -7952 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7952 -8000 -7936 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7952 -8000 -7936 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7936 -8000 -7920 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7936 -8000 -7920 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7920 -8000 -7903 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7920 -8000 -7903 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7903 -8000 -7887 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7903 -8000 -7887 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7887 -8000 -7871 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7887 -8000 -7871 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7871 -8000 -7855 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7871 -8000 -7855 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7855 -8000 -7839 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7855 -8000 -7839 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in minecraft:overworld run forceload remove -7839 -8000 -7823 -7827
execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run forceload remove -7839 -8000 -7823 -7827

execute if score #rg_vilarles_castillo switch.data matches 1728.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Castillo","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_vilarles_castillo switch.data matches 1728.. run function switch:engine/log_message/apply {message:"Map `Castillo` just regenerated!"}

execute if score #rg_vilarles_castillo switch.data matches 1728.. in switch:game run function switch:maps/regenerate_doors_macro {name:"vilarles_castillo"}
execute if score #rg_vilarles_castillo switch.data matches 1728.. run scoreboard players reset #rg_vilarles_castillo switch.data
execute if score #rg_vilarles_castillo switch.data matches 1.. run schedule function switch:maps/survival/vilarles_castillo/regenerate 1t


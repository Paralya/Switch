
#> switch:maps/survival/snow_hills/regenerate
#
# @within	switch:maps/survival/snow_hills/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_snow_hills switch.data 1
execute if score #rg_snow_hills switch.data matches 1 run data modify storage switch:maps to_regenerate.snow_hills set value 2b
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -8000 -4000 -7984 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -8000 -4000 -7984 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7984 -4000 -7968 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7984 -4000 -7968 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7968 -4000 -7952 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7968 -4000 -7952 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7952 -4000 -7936 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7952 -4000 -7936 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7936 -4000 -7920 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7936 -4000 -7920 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7920 -4000 -7904 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7920 -4000 -7904 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7904 -4000 -7888 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7904 -4000 -7888 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7888 -4000 -7873 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7888 -4000 -7873 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7873 -4000 -7857 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7873 -4000 -7857 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7857 -4000 -7841 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7857 -4000 -7841 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7841 -4000 -7825 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7841 -4000 -7825 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7825 -4000 -7809 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7825 -4000 -7809 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7809 -4000 -7793 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7809 -4000 -7793 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7793 -4000 -7777 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7793 -4000 -7777 -3815
execute if score #rg_snow_hills switch.data matches 1 in minecraft:overworld run forceload add -7777 -4000 -7761 -3815
execute if score #rg_snow_hills switch.data matches 1 in switch:game run forceload add -7777 -4000 -7761 -3815

execute if score #rg_snow_hills switch.data matches 1 run scoreboard players set #rg_snow_hills_y switch.data 100
execute if score #rg_snow_hills switch.data matches 1 run scoreboard players set #rg_snow_hills_mod switch.data 0
execute if score #rg_snow_hills switch.data matches ..915 summon marker run function switch:maps/survival/snow_hills/regeneration_on_marker

execute if score #rg_snow_hills switch.data matches 916.. in switch:game run kill @e[type=item,x=-7880,y=100,z=-3907,distance=..1000]
execute if score #rg_snow_hills switch.data matches 916.. run data remove storage switch:maps to_regenerate.snow_hills

execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -8000 -4000 -7984 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -8000 -4000 -7984 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7984 -4000 -7968 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7984 -4000 -7968 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7968 -4000 -7952 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7968 -4000 -7952 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7952 -4000 -7936 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7952 -4000 -7936 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7936 -4000 -7920 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7936 -4000 -7920 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7920 -4000 -7904 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7920 -4000 -7904 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7904 -4000 -7888 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7904 -4000 -7888 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7888 -4000 -7873 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7888 -4000 -7873 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7873 -4000 -7857 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7873 -4000 -7857 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7857 -4000 -7841 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7857 -4000 -7841 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7841 -4000 -7825 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7841 -4000 -7825 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7825 -4000 -7809 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7825 -4000 -7809 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7809 -4000 -7793 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7809 -4000 -7793 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7793 -4000 -7777 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7793 -4000 -7777 -3815
execute if score #rg_snow_hills switch.data matches 916.. in minecraft:overworld run forceload remove -7777 -4000 -7761 -3815
execute if score #rg_snow_hills switch.data matches 916.. in switch:game run forceload remove -7777 -4000 -7761 -3815

execute if score #rg_snow_hills switch.data matches 916.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Snow Hills","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"45","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snow_hills switch.data matches 916.. run function switch:engine/log_message/apply {message:"Map `Snow Hills` just regenerated!"}

execute if score #rg_snow_hills switch.data matches 916.. run scoreboard players reset #rg_snow_hills switch.data
execute if score #rg_snow_hills switch.data matches 1.. run schedule function switch:maps/survival/snow_hills/regenerate 1t



#> switch:maps/survival/pitchout_halloween/regenerate
#
# @within	switch:maps/survival/pitchout_halloween/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_pitchout_halloween switch.data 1
execute if score #rg_pitchout_halloween switch.data matches 1 run data modify storage switch:maps to_regenerate.pitchout_halloween set value 2b
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10000 10000 10020 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10000 10000 10020 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10020 10000 10041 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10020 10000 10041 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10041 10000 10061 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10041 10000 10061 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10061 10000 10081 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10061 10000 10081 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10081 10000 10102 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10081 10000 10102 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 10102 10000 10122 10122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 10102 10000 10122 10122

execute if score #rg_pitchout_halloween switch.data matches 1 run scoreboard players set #rg_pitchout_halloween_y switch.data 100
execute if score #rg_pitchout_halloween switch.data matches 1 run scoreboard players set #rg_pitchout_halloween_mod switch.data 0
execute if score #rg_pitchout_halloween switch.data matches ..174 summon marker run function switch:maps/survival/pitchout_halloween/regeneration_on_marker

execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run kill @e[type=item,x=10061,y=100,z=10061,distance=..1000]
execute if score #rg_pitchout_halloween switch.data matches 175.. run data remove storage switch:maps to_regenerate.pitchout_halloween

execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 10000 10000 10020 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 10000 10000 10020 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 10020 10000 10041 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 10020 10000 10041 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 10041 10000 10061 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 10041 10000 10061 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 10061 10000 10081 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 10061 10000 10081 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 10081 10000 10102 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 10081 10000 10102 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 10102 10000 10122 10122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 10102 10000 10122 10122

execute if score #rg_pitchout_halloween switch.data matches 175.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Pitchout Halloween","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_pitchout_halloween switch.data matches 175.. run function switch:engine/log_message/apply {message:"Map `Pitchout Halloween` just regenerated!"}

execute if score #rg_pitchout_halloween switch.data matches 175.. run scoreboard players reset #rg_pitchout_halloween switch.data
execute if score #rg_pitchout_halloween switch.data matches 1.. run schedule function switch:maps/survival/pitchout_halloween/regenerate 1t


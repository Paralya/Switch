
#> switch:maps/survival/pitchout_halloween/regenerate
#
# @within	switch:maps/survival/pitchout_halloween/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_pitchout_halloween switch.data 1
execute if score #rg_pitchout_halloween switch.data matches 1 run data modify storage switch:maps to_regenerate.pitchout_halloween set value 2b
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 125000 125000 125020 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 125000 125000 125020 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 125020 125000 125041 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 125020 125000 125041 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 125041 125000 125061 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 125041 125000 125061 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 125061 125000 125081 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 125061 125000 125081 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 125081 125000 125102 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 125081 125000 125102 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in minecraft:overworld run forceload add 125102 125000 125122 125122
execute if score #rg_pitchout_halloween switch.data matches 1 in switch:game run forceload add 125102 125000 125122 125122

execute if score #rg_pitchout_halloween switch.data matches 1 run scoreboard players set #rg_pitchout_halloween_y switch.data 100
execute if score #rg_pitchout_halloween switch.data matches 1 run scoreboard players set #rg_pitchout_halloween_mod switch.data 0
execute if score #rg_pitchout_halloween switch.data matches ..174 summon marker run function switch:maps/survival/pitchout_halloween/regeneration_on_marker

execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run kill @e[type=item,x=125061,y=100,z=125061,distance=..1000]
execute if score #rg_pitchout_halloween switch.data matches 175.. run data remove storage switch:maps to_regenerate.pitchout_halloween

execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 125000 125000 125020 125122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 125000 125000 125020 125122

execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 125020 125000 125041 125122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 125020 125000 125041 125122

execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 125041 125000 125061 125122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 125041 125000 125061 125122

execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 125061 125000 125081 125122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 125061 125000 125081 125122

execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 125081 125000 125102 125122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 125081 125000 125102 125122

execute if score #rg_pitchout_halloween switch.data matches 175.. in minecraft:overworld run forceload remove 125102 125000 125122 125122
execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run forceload remove 125102 125000 125122 125122

execute if score #rg_pitchout_halloween switch.data matches 175.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Pitchout Halloween","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"8","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_pitchout_halloween switch.data matches 175.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Pitchout Halloween` just regenerated!"}'
execute if score #rg_pitchout_halloween switch.data matches 175.. run function switch:engine/log_message/apply

execute if score #rg_pitchout_halloween switch.data matches 175.. in switch:game run function switch:maps/regenerate_doors_macro {name:"pitchout_halloween"}
execute if score #rg_pitchout_halloween switch.data matches 175.. run scoreboard players reset #rg_pitchout_halloween switch.data
execute if score #rg_pitchout_halloween switch.data matches 1.. run schedule function switch:maps/survival/pitchout_halloween/regenerate 1t



#> switch:maps/survival/nuketown_no_barrier/regenerate
#
# @within	switch:maps/survival/nuketown_no_barrier/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_nuketown_no_barrier switch.data 1
execute if score #rg_nuketown_no_barrier switch.data matches 1 run data modify storage switch:maps to_regenerate.nuketown_no_barrier set value 2b
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111000 111000 111013 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111000 111000 111013 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111013 111000 111026 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111013 111000 111026 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111026 111000 111039 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111026 111000 111039 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111039 111000 111052 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111039 111000 111052 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111052 111000 111065 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111052 111000 111065 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111065 111000 111078 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111065 111000 111078 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111078 111000 111091 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111078 111000 111091 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111091 111000 111104 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111091 111000 111104 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111104 111000 111116 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111104 111000 111116 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111116 111000 111129 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111116 111000 111129 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111129 111000 111142 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111129 111000 111142 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111142 111000 111155 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111142 111000 111155 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111155 111000 111168 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111155 111000 111168 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111168 111000 111181 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111168 111000 111181 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111181 111000 111194 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111181 111000 111194 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111194 111000 111207 111220
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111194 111000 111207 111220

execute if score #rg_nuketown_no_barrier switch.data matches 1 run scoreboard players set #rg_nuketown_no_barrier_y switch.data 0
execute if score #rg_nuketown_no_barrier switch.data matches 1 run scoreboard players set #rg_nuketown_no_barrier_mod switch.data 0
execute if score #rg_nuketown_no_barrier switch.data matches ..832 summon marker run function switch:maps/survival/nuketown_no_barrier/regeneration_on_marker

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run kill @e[type=item,x=111103,y=0,z=111110,distance=..1000]
execute if score #rg_nuketown_no_barrier switch.data matches 833.. run data remove storage switch:maps to_regenerate.nuketown_no_barrier

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111000 111000 111013 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111000 111000 111013 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111013 111000 111026 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111013 111000 111026 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111026 111000 111039 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111026 111000 111039 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111039 111000 111052 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111039 111000 111052 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111052 111000 111065 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111052 111000 111065 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111065 111000 111078 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111065 111000 111078 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111078 111000 111091 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111078 111000 111091 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111091 111000 111104 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111091 111000 111104 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111104 111000 111116 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111104 111000 111116 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111116 111000 111129 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111116 111000 111129 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111129 111000 111142 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111129 111000 111142 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111142 111000 111155 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111142 111000 111155 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111155 111000 111168 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111155 111000 111168 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111168 111000 111181 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111168 111000 111181 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111181 111000 111194 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111181 111000 111194 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 111194 111000 111207 111220
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 111194 111000 111207 111220

execute if score #rg_nuketown_no_barrier switch.data matches 833.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"nuketown_no_barrier","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_nuketown_no_barrier switch.data matches 833.. run data modify storage switch:main MessageToLog set value '{"text":"Map `nuketown_no_barrier` just regenerated!"}'
execute if score #rg_nuketown_no_barrier switch.data matches 833.. run function switch:engine/log_message/apply

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run function switch:maps/regenerate_doors_macro {name:"nuketown_no_barrier"}
execute if score #rg_nuketown_no_barrier switch.data matches 833.. run scoreboard players reset #rg_nuketown_no_barrier switch.data
execute if score #rg_nuketown_no_barrier switch.data matches 1.. run schedule function switch:maps/survival/nuketown_no_barrier/regenerate 1t


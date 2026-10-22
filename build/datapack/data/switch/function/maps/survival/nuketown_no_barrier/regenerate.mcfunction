
#> switch:maps/survival/nuketown_no_barrier/regenerate
#
# @within	switch:maps/survival/nuketown_no_barrier/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_nuketown_no_barrier switch.data 1
execute if score #rg_nuketown_no_barrier switch.data matches 1 run data modify storage switch:maps to_regenerate.nuketown_no_barrier set value 2b
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6000 -10000 6013 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6000 -10000 6013 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6013 -10000 6026 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6013 -10000 6026 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6026 -10000 6039 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6026 -10000 6039 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6039 -10000 6052 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6039 -10000 6052 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6052 -10000 6065 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6052 -10000 6065 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6065 -10000 6078 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6065 -10000 6078 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6078 -10000 6091 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6078 -10000 6091 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6091 -10000 6104 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6091 -10000 6104 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6104 -10000 6116 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6104 -10000 6116 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6116 -10000 6129 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6116 -10000 6129 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6129 -10000 6142 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6129 -10000 6142 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6142 -10000 6155 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6142 -10000 6155 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6155 -10000 6168 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6155 -10000 6168 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6168 -10000 6181 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6168 -10000 6181 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6181 -10000 6194 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6181 -10000 6194 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6194 -10000 6207 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6194 -10000 6207 -9780

execute if score #rg_nuketown_no_barrier switch.data matches 1 run scoreboard players set #rg_nuketown_no_barrier_y switch.data 100
execute if score #rg_nuketown_no_barrier switch.data matches 1 run scoreboard players set #rg_nuketown_no_barrier_mod switch.data 0
execute if score #rg_nuketown_no_barrier switch.data matches ..832 summon marker run function switch:maps/survival/nuketown_no_barrier/regeneration_on_marker

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run kill @e[type=item,x=6103,y=100,z=-9890,distance=..1000]
execute if score #rg_nuketown_no_barrier switch.data matches 833.. run data remove storage switch:maps to_regenerate.nuketown_no_barrier

execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6000 -10000 6013 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6000 -10000 6013 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6013 -10000 6026 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6013 -10000 6026 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6026 -10000 6039 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6026 -10000 6039 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6039 -10000 6052 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6039 -10000 6052 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6052 -10000 6065 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6052 -10000 6065 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6065 -10000 6078 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6065 -10000 6078 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6078 -10000 6091 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6078 -10000 6091 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6091 -10000 6104 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6091 -10000 6104 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6104 -10000 6116 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6104 -10000 6116 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6116 -10000 6129 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6116 -10000 6129 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6129 -10000 6142 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6129 -10000 6142 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6142 -10000 6155 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6142 -10000 6155 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6155 -10000 6168 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6155 -10000 6168 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6168 -10000 6181 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6168 -10000 6181 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6181 -10000 6194 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6181 -10000 6194 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in minecraft:overworld run forceload remove 6194 -10000 6207 -9780
execute if score #rg_nuketown_no_barrier switch.data matches 833.. in switch:game run forceload remove 6194 -10000 6207 -9780

execute if score #rg_nuketown_no_barrier switch.data matches 833.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Nuketown No Barrier","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"41","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_nuketown_no_barrier switch.data matches 833.. run function switch:engine/log_message/apply {message:"Map `Nuketown No Barrier` just regenerated!"}

execute if score #rg_nuketown_no_barrier switch.data matches 833.. run scoreboard players reset #rg_nuketown_no_barrier switch.data
execute if score #rg_nuketown_no_barrier switch.data matches 1.. run schedule function switch:maps/survival/nuketown_no_barrier/regenerate 1t


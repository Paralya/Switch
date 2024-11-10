
#> switch:maps/survival/warden_forest/regenerate
#
# @within	switch:maps/survival/warden_forest/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_warden_forest switch.data 1
execute if score #rg_warden_forest switch.data matches 1 run data modify storage switch:maps to_regenerate.warden_forest set value 2b
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 9940 9940 9960 10060
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 9940 9940 9960 10060
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 9960 9940 9980 10060
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 9960 9940 9980 10060
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 9980 9940 10000 10060
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 9980 9940 10000 10060
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10000 9940 10020 10060
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10000 9940 10020 10060
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10020 9940 10040 10060
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10020 9940 10040 10060
execute if score #rg_warden_forest switch.data matches 1 in minecraft:overworld run forceload add 10040 9940 10060 10060
execute if score #rg_warden_forest switch.data matches 1 in switch:game run forceload add 10040 9940 10060 10060

execute if score #rg_warden_forest switch.data matches 1 run scoreboard players set #rg_warden_forest_y switch.data 0
execute if score #rg_warden_forest switch.data matches 1 run scoreboard players set #rg_warden_forest_mod switch.data 0
execute if score #rg_warden_forest switch.data matches ..390 summon marker run function switch:maps/survival/warden_forest/regeneration_on_marker

execute if score #rg_warden_forest switch.data matches 391.. in switch:game run kill @e[type=item,x=10000,y=0,z=10000,distance=..1000]
execute if score #rg_warden_forest switch.data matches 391.. run data remove storage switch:maps to_regenerate.warden_forest

execute if score #rg_warden_forest switch.data matches 391.. in minecraft:overworld run forceload remove 9940 9940 9960 10060
execute if score #rg_warden_forest switch.data matches 391.. in switch:game run forceload remove 9940 9940 9960 10060

execute if score #rg_warden_forest switch.data matches 391.. in minecraft:overworld run forceload remove 9960 9940 9980 10060
execute if score #rg_warden_forest switch.data matches 391.. in switch:game run forceload remove 9960 9940 9980 10060

execute if score #rg_warden_forest switch.data matches 391.. in minecraft:overworld run forceload remove 9980 9940 10000 10060
execute if score #rg_warden_forest switch.data matches 391.. in switch:game run forceload remove 9980 9940 10000 10060

execute if score #rg_warden_forest switch.data matches 391.. in minecraft:overworld run forceload remove 10000 9940 10020 10060
execute if score #rg_warden_forest switch.data matches 391.. in switch:game run forceload remove 10000 9940 10020 10060

execute if score #rg_warden_forest switch.data matches 391.. in minecraft:overworld run forceload remove 10020 9940 10040 10060
execute if score #rg_warden_forest switch.data matches 391.. in switch:game run forceload remove 10020 9940 10040 10060

execute if score #rg_warden_forest switch.data matches 391.. in minecraft:overworld run forceload remove 10040 9940 10060 10060
execute if score #rg_warden_forest switch.data matches 391.. in switch:game run forceload remove 10040 9940 10060 10060

execute if score #rg_warden_forest switch.data matches 391.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"warden_forest","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_warden_forest switch.data matches 391.. run data modify storage switch:main MessageToLog set value '{"text":"Map `warden_forest` just regenerated!"}'
execute if score #rg_warden_forest switch.data matches 391.. run function switch:engine/log_message/apply

execute if score #rg_warden_forest switch.data matches 391.. in switch:game run function switch:maps/regenerate_doors_macro {name:"warden_forest"}
execute if score #rg_warden_forest switch.data matches 391.. run scoreboard players reset #rg_warden_forest switch.data
execute if score #rg_warden_forest switch.data matches 1.. run schedule function switch:maps/survival/warden_forest/regenerate 1t


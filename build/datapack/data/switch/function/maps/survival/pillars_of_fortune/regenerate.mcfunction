
#> switch:maps/survival/pillars_of_fortune/regenerate
#
# @within	switch:maps/survival/pillars_of_fortune/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_pillars_of_fortune switch.data 1
execute if score #rg_pillars_of_fortune switch.data matches 1 run data modify storage switch:maps to_regenerate.pillars_of_fortune set value 2b
execute if score #rg_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 10000 -12000 10020 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 10000 -12000 10020 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 10020 -12000 10040 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 10020 -12000 10040 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 10040 -12000 10060 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 10040 -12000 10060 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 10060 -12000 10080 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 10060 -12000 10080 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in minecraft:overworld run forceload add 10080 -12000 10100 -11900
execute if score #rg_pillars_of_fortune switch.data matches 1 in switch:game run forceload add 10080 -12000 10100 -11900

execute if score #rg_pillars_of_fortune switch.data matches 1 run scoreboard players set #rg_pillars_of_fortune_y switch.data 100
execute if score #rg_pillars_of_fortune switch.data matches 1 run scoreboard players set #rg_pillars_of_fortune_mod switch.data 0
execute if score #rg_pillars_of_fortune switch.data matches ..455 summon marker run function switch:maps/survival/pillars_of_fortune/regeneration_on_marker

execute if score #rg_pillars_of_fortune switch.data matches 456.. in switch:game run kill @e[type=item,x=10050,y=100,z=-11950,distance=..1000]
execute if score #rg_pillars_of_fortune switch.data matches 456.. run data remove storage switch:maps to_regenerate.pillars_of_fortune

execute if score #rg_pillars_of_fortune switch.data matches 456.. in minecraft:overworld run forceload remove 10000 -12000 10020 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in switch:game run forceload remove 10000 -12000 10020 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in minecraft:overworld run forceload remove 10020 -12000 10040 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in switch:game run forceload remove 10020 -12000 10040 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in minecraft:overworld run forceload remove 10040 -12000 10060 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in switch:game run forceload remove 10040 -12000 10060 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in minecraft:overworld run forceload remove 10060 -12000 10080 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in switch:game run forceload remove 10060 -12000 10080 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in minecraft:overworld run forceload remove 10080 -12000 10100 -11900
execute if score #rg_pillars_of_fortune switch.data matches 456.. in switch:game run forceload remove 10080 -12000 10100 -11900

execute if score #rg_pillars_of_fortune switch.data matches 456.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Icy Ground Circle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"22","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_pillars_of_fortune switch.data matches 456.. run function switch:engine/log_message/apply {message:"Map `Icy Ground Circle` just regenerated!"}

execute if score #rg_pillars_of_fortune switch.data matches 456.. run scoreboard players reset #rg_pillars_of_fortune switch.data
execute if score #rg_pillars_of_fortune switch.data matches 1.. run schedule function switch:maps/survival/pillars_of_fortune/regenerate 1t


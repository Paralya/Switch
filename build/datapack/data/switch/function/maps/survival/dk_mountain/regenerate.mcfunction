
#> switch:maps/survival/dk_mountain/regenerate
#
# @within	switch:maps/survival/dk_mountain/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_dk_mountain switch.data 1
execute if score #rg_dk_mountain switch.data matches 1 run data modify storage switch:maps to_regenerate.dk_mountain set value 2b
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19650 20485 19674 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19650 20485 19674 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19674 20485 19698 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19674 20485 19698 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19698 20485 19722 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19698 20485 19722 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19722 20485 19746 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19722 20485 19746 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19746 20485 19770 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19746 20485 19770 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19770 20485 19794 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19770 20485 19794 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19794 20485 19818 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19794 20485 19818 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19818 20485 19842 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19818 20485 19842 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19842 20485 19866 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19842 20485 19866 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19866 20485 19890 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19866 20485 19890 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19890 20485 19914 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19890 20485 19914 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19914 20485 19938 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19914 20485 19938 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19938 20485 19962 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19938 20485 19962 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19962 20485 19986 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19962 20485 19986 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 19986 20485 20010 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 19986 20485 20010 20603
execute if score #rg_dk_mountain switch.data matches 1 in minecraft:overworld run forceload add 20010 20485 20034 20603
execute if score #rg_dk_mountain switch.data matches 1 in switch:game run forceload add 20010 20485 20034 20603

execute if score #rg_dk_mountain switch.data matches 1 run scoreboard players set #rg_dk_mountain_y switch.data 70
execute if score #rg_dk_mountain switch.data matches 1 run scoreboard players set #rg_dk_mountain_mod switch.data 0
execute if score #rg_dk_mountain switch.data matches ..2288 summon marker run function switch:maps/survival/dk_mountain/regeneration_on_marker

execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run kill @e[type=item,x=19842,y=70,z=20544,distance=..1000]
execute if score #rg_dk_mountain switch.data matches 2289.. run data remove storage switch:maps to_regenerate.dk_mountain

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19650 20485 19674 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19650 20485 19674 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19674 20485 19698 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19674 20485 19698 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19698 20485 19722 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19698 20485 19722 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19722 20485 19746 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19722 20485 19746 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19746 20485 19770 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19746 20485 19770 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19770 20485 19794 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19770 20485 19794 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19794 20485 19818 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19794 20485 19818 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19818 20485 19842 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19818 20485 19842 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19842 20485 19866 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19842 20485 19866 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19866 20485 19890 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19866 20485 19890 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19890 20485 19914 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19890 20485 19914 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19914 20485 19938 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19914 20485 19938 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19938 20485 19962 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19938 20485 19962 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19962 20485 19986 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19962 20485 19986 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 19986 20485 20010 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 19986 20485 20010 20603

execute if score #rg_dk_mountain switch.data matches 2289.. in minecraft:overworld run forceload remove 20010 20485 20034 20603
execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run forceload remove 20010 20485 20034 20603

execute if score #rg_dk_mountain switch.data matches 2289.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"DK Mountain","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"54","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_dk_mountain switch.data matches 2289.. run data modify storage switch:main MessageToLog set value '{"text":"Map `DK Mountain` just regenerated!"}'
execute if score #rg_dk_mountain switch.data matches 2289.. run function switch:engine/log_message/apply

execute if score #rg_dk_mountain switch.data matches 2289.. in switch:game run function switch:maps/regenerate_doors_macro {name:"dk_mountain"}
execute if score #rg_dk_mountain switch.data matches 2289.. run scoreboard players reset #rg_dk_mountain switch.data
execute if score #rg_dk_mountain switch.data matches 1.. run schedule function switch:maps/survival/dk_mountain/regenerate 1t


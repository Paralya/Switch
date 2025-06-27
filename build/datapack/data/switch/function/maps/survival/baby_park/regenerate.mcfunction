
#> switch:maps/survival/baby_park/regenerate
#
# @within	switch:maps/survival/baby_park/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_baby_park switch.data 1
execute if score #rg_baby_park switch.data matches 1 run data modify storage switch:maps to_regenerate.baby_park set value 2b
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21000 21000 21015 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21000 21000 21015 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21015 21000 21030 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21015 21000 21030 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21030 21000 21045 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21030 21000 21045 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21045 21000 21060 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21045 21000 21060 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21060 21000 21075 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21060 21000 21075 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21075 21000 21090 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21075 21000 21090 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21090 21000 21105 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21090 21000 21105 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21105 21000 21120 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21105 21000 21120 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21120 21000 21135 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21120 21000 21135 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21135 21000 21150 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21135 21000 21150 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21150 21000 21165 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21150 21000 21165 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21165 21000 21180 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21165 21000 21180 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21180 21000 21195 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21180 21000 21195 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21195 21000 21210 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21195 21000 21210 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21210 21000 21225 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21210 21000 21225 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21225 21000 21240 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21225 21000 21240 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21240 21000 21255 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21240 21000 21255 21191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21255 21000 21270 21191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21255 21000 21270 21191

execute if score #rg_baby_park switch.data matches 1 run scoreboard players set #rg_baby_park_y switch.data 100
execute if score #rg_baby_park switch.data matches 1 run scoreboard players set #rg_baby_park_mod switch.data 0
execute if score #rg_baby_park switch.data matches ..1728 summon marker run function switch:maps/survival/baby_park/regeneration_on_marker

execute if score #rg_baby_park switch.data matches 1729.. in switch:game run kill @e[type=item,x=21135,y=100,z=21095,distance=..1000]
execute if score #rg_baby_park switch.data matches 1729.. run data remove storage switch:maps to_regenerate.baby_park

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21000 21000 21015 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21000 21000 21015 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21015 21000 21030 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21015 21000 21030 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21030 21000 21045 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21030 21000 21045 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21045 21000 21060 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21045 21000 21060 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21060 21000 21075 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21060 21000 21075 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21075 21000 21090 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21075 21000 21090 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21090 21000 21105 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21090 21000 21105 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21105 21000 21120 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21105 21000 21120 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21120 21000 21135 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21120 21000 21135 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21135 21000 21150 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21135 21000 21150 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21150 21000 21165 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21150 21000 21165 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21165 21000 21180 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21165 21000 21180 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21180 21000 21195 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21180 21000 21195 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21195 21000 21210 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21195 21000 21210 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21210 21000 21225 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21210 21000 21225 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21225 21000 21240 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21225 21000 21240 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21240 21000 21255 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21240 21000 21255 21191

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21255 21000 21270 21191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21255 21000 21270 21191

execute if score #rg_baby_park switch.data matches 1729.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Baby Park","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_baby_park switch.data matches 1729.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Baby Park` just regenerated!"}'
execute if score #rg_baby_park switch.data matches 1729.. run function switch:engine/log_message/apply

execute if score #rg_baby_park switch.data matches 1729.. in switch:game run function switch:maps/regenerate_doors_macro {name:"baby_park"}
execute if score #rg_baby_park switch.data matches 1729.. run scoreboard players reset #rg_baby_park switch.data
execute if score #rg_baby_park switch.data matches 1.. run schedule function switch:maps/survival/baby_park/regenerate 1t



#> switch:maps/survival/baby_park/regenerate
#
# @within	switch:maps/survival/baby_park/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_baby_park switch.data 1
execute if score #rg_baby_park switch.data matches 1 run data modify storage switch:maps to_regenerate.baby_park set value 2b
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20862 20908 20877 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20862 20908 20877 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20877 20908 20892 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20877 20908 20892 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20892 20908 20907 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20892 20908 20907 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20907 20908 20922 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20907 20908 20922 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20922 20908 20937 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20922 20908 20937 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20937 20908 20952 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20937 20908 20952 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20952 20908 20967 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20952 20908 20967 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20967 20908 20982 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20967 20908 20982 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20982 20908 20997 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20982 20908 20997 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 20997 20908 21012 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 20997 20908 21012 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21012 20908 21027 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21012 20908 21027 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21027 20908 21042 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21027 20908 21042 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21042 20908 21057 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21042 20908 21057 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21057 20908 21072 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21057 20908 21072 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21072 20908 21087 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21072 20908 21087 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21087 20908 21102 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21087 20908 21102 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21102 20908 21117 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21102 20908 21117 21099
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add 21117 20908 21132 21099
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add 21117 20908 21132 21099

execute if score #rg_baby_park switch.data matches 1 run scoreboard players set #rg_baby_park_y switch.data 0
execute if score #rg_baby_park switch.data matches 1 run scoreboard players set #rg_baby_park_mod switch.data 0
execute if score #rg_baby_park switch.data matches ..1728 summon marker run function switch:maps/survival/baby_park/regeneration_on_marker

execute if score #rg_baby_park switch.data matches 1729.. in switch:game run kill @e[type=item,x=20997,y=0,z=21003,distance=..1000]
execute if score #rg_baby_park switch.data matches 1729.. run data remove storage switch:maps to_regenerate.baby_park

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20862 20908 20877 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20862 20908 20877 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20877 20908 20892 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20877 20908 20892 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20892 20908 20907 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20892 20908 20907 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20907 20908 20922 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20907 20908 20922 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20922 20908 20937 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20922 20908 20937 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20937 20908 20952 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20937 20908 20952 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20952 20908 20967 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20952 20908 20967 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20967 20908 20982 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20967 20908 20982 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20982 20908 20997 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20982 20908 20997 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 20997 20908 21012 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 20997 20908 21012 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21012 20908 21027 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21012 20908 21027 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21027 20908 21042 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21027 20908 21042 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21042 20908 21057 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21042 20908 21057 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21057 20908 21072 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21057 20908 21072 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21072 20908 21087 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21072 20908 21087 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21087 20908 21102 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21087 20908 21102 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21102 20908 21117 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21102 20908 21117 21099

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove 21117 20908 21132 21099
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove 21117 20908 21132 21099

execute if score #rg_baby_park switch.data matches 1729.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"baby_park","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_baby_park switch.data matches 1729.. run data modify storage switch:main MessageToLog set value '{"text":"Map `baby_park` just regenerated!"}'
execute if score #rg_baby_park switch.data matches 1729.. run function switch:engine/log_message/apply

execute if score #rg_baby_park switch.data matches 1729.. in switch:game run function switch:maps/regenerate_doors_macro {name:"baby_park"}
execute if score #rg_baby_park switch.data matches 1729.. run scoreboard players reset #rg_baby_park switch.data
execute if score #rg_baby_park switch.data matches 1.. run schedule function switch:maps/survival/baby_park/regenerate 1t


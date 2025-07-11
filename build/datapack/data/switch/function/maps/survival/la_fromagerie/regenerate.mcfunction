
#> switch:maps/survival/la_fromagerie/regenerate
#
# @within	switch:maps/survival/la_fromagerie/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_la_fromagerie switch.data 1
execute if score #rg_la_fromagerie switch.data matches 1 run data modify storage switch:maps to_regenerate.la_fromagerie set value 2b
execute if score #rg_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59000 59000 59020 59099
execute if score #rg_la_fromagerie switch.data matches 1 in switch:game run forceload add 59000 59000 59020 59099
execute if score #rg_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59020 59000 59040 59099
execute if score #rg_la_fromagerie switch.data matches 1 in switch:game run forceload add 59020 59000 59040 59099
execute if score #rg_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59040 59000 59059 59099
execute if score #rg_la_fromagerie switch.data matches 1 in switch:game run forceload add 59040 59000 59059 59099
execute if score #rg_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59059 59000 59079 59099
execute if score #rg_la_fromagerie switch.data matches 1 in switch:game run forceload add 59059 59000 59079 59099
execute if score #rg_la_fromagerie switch.data matches 1 in minecraft:overworld run forceload add 59079 59000 59099 59099
execute if score #rg_la_fromagerie switch.data matches 1 in switch:game run forceload add 59079 59000 59099 59099

execute if score #rg_la_fromagerie switch.data matches 1 run scoreboard players set #rg_la_fromagerie_y switch.data 100
execute if score #rg_la_fromagerie switch.data matches 1 run scoreboard players set #rg_la_fromagerie_mod switch.data 0
execute if score #rg_la_fromagerie switch.data matches ..335 summon marker run function switch:maps/survival/la_fromagerie/regeneration_on_marker

execute if score #rg_la_fromagerie switch.data matches 336.. in switch:game run kill @e[type=item,x=59049,y=100,z=59049,distance=..1000]
execute if score #rg_la_fromagerie switch.data matches 336.. run data remove storage switch:maps to_regenerate.la_fromagerie

execute if score #rg_la_fromagerie switch.data matches 336.. in minecraft:overworld run forceload remove 59000 59000 59020 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in switch:game run forceload remove 59000 59000 59020 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in minecraft:overworld run forceload remove 59020 59000 59040 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in switch:game run forceload remove 59020 59000 59040 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in minecraft:overworld run forceload remove 59040 59000 59059 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in switch:game run forceload remove 59040 59000 59059 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in minecraft:overworld run forceload remove 59059 59000 59079 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in switch:game run forceload remove 59059 59000 59079 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in minecraft:overworld run forceload remove 59079 59000 59099 59099
execute if score #rg_la_fromagerie switch.data matches 336.. in switch:game run forceload remove 59079 59000 59099 59099

execute if score #rg_la_fromagerie switch.data matches 336.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"La Fromagerie","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"16","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_la_fromagerie switch.data matches 336.. run data modify storage switch:main MessageToLog set value '{"text":"Map `La Fromagerie` just regenerated!"}'
execute if score #rg_la_fromagerie switch.data matches 336.. run function switch:engine/log_message/apply

execute if score #rg_la_fromagerie switch.data matches 336.. in switch:game run function switch:maps/regenerate_doors_macro {name:"la_fromagerie"}
execute if score #rg_la_fromagerie switch.data matches 336.. run scoreboard players reset #rg_la_fromagerie switch.data
execute if score #rg_la_fromagerie switch.data matches 1.. run schedule function switch:maps/survival/la_fromagerie/regenerate 1t



#> switch:maps/survival/snowball_painter/regenerate
#
# @within	switch:maps/survival/snowball_painter/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_snowball_painter switch.data 1
execute if score #rg_snowball_painter switch.data matches 1 run data modify storage switch:maps to_regenerate.snowball_painter set value 2b
execute if score #rg_snowball_painter switch.data matches 1 in minecraft:overworld run forceload add 112000 112000 112022 112042
execute if score #rg_snowball_painter switch.data matches 1 in switch:game run forceload add 112000 112000 112022 112042
execute if score #rg_snowball_painter switch.data matches 1 in minecraft:overworld run forceload add 112022 112000 112043 112042
execute if score #rg_snowball_painter switch.data matches 1 in switch:game run forceload add 112022 112000 112043 112042

execute if score #rg_snowball_painter switch.data matches 1 run scoreboard players set #rg_snowball_painter_y switch.data 100
execute if score #rg_snowball_painter switch.data matches 1 run scoreboard players set #rg_snowball_painter_mod switch.data 0
execute if score #rg_snowball_painter switch.data matches ..68 summon marker run function switch:maps/survival/snowball_painter/regeneration_on_marker

execute if score #rg_snowball_painter switch.data matches 69.. in switch:game run kill @e[type=item,x=112021,y=100,z=112021,distance=..1000]
execute if score #rg_snowball_painter switch.data matches 69.. run data remove storage switch:maps to_regenerate.snowball_painter

execute if score #rg_snowball_painter switch.data matches 69.. in minecraft:overworld run forceload remove 112000 112000 112022 112042
execute if score #rg_snowball_painter switch.data matches 69.. in switch:game run forceload remove 112000 112000 112022 112042

execute if score #rg_snowball_painter switch.data matches 69.. in minecraft:overworld run forceload remove 112022 112000 112043 112042
execute if score #rg_snowball_painter switch.data matches 69.. in switch:game run forceload remove 112022 112000 112043 112042

execute if score #rg_snowball_painter switch.data matches 69.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Snowball Painter","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_snowball_painter switch.data matches 69.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Snowball Painter` just regenerated!"}'
execute if score #rg_snowball_painter switch.data matches 69.. run function switch:engine/log_message/apply

execute if score #rg_snowball_painter switch.data matches 69.. in switch:game run function switch:maps/regenerate_doors_macro {name:"snowball_painter"}
execute if score #rg_snowball_painter switch.data matches 69.. run scoreboard players reset #rg_snowball_painter switch.data
execute if score #rg_snowball_painter switch.data matches 1.. run schedule function switch:maps/survival/snowball_painter/regenerate 1t


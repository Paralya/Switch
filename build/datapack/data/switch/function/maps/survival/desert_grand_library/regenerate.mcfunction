
#> switch:maps/survival/desert_grand_library/regenerate
#
# @within	switch:maps/survival/desert_grand_library/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_desert_grand_library switch.data 1
execute if score #rg_desert_grand_library switch.data matches 1 run data modify storage switch:maps to_regenerate.desert_grand_library set value 2b
execute if score #rg_desert_grand_library switch.data matches 1 in minecraft:overworld run forceload add 46971 46971 46993 47042
execute if score #rg_desert_grand_library switch.data matches 1 in switch:game run forceload add 46971 46971 46993 47042
execute if score #rg_desert_grand_library switch.data matches 1 in minecraft:overworld run forceload add 46993 46971 47014 47042
execute if score #rg_desert_grand_library switch.data matches 1 in switch:game run forceload add 46993 46971 47014 47042
execute if score #rg_desert_grand_library switch.data matches 1 in minecraft:overworld run forceload add 47014 46971 47036 47042
execute if score #rg_desert_grand_library switch.data matches 1 in switch:game run forceload add 47014 46971 47036 47042

execute if score #rg_desert_grand_library switch.data matches 1 run scoreboard players set #rg_desert_grand_library_y switch.data 0
execute if score #rg_desert_grand_library switch.data matches 1 run scoreboard players set #rg_desert_grand_library_mod switch.data 0
execute if score #rg_desert_grand_library switch.data matches ..129 summon marker run function switch:maps/survival/desert_grand_library/regeneration_on_marker

execute if score #rg_desert_grand_library switch.data matches 130.. in switch:game run kill @e[type=item,x=47003,y=0,z=47006,distance=..1000]
execute if score #rg_desert_grand_library switch.data matches 130.. run data remove storage switch:maps to_regenerate.desert_grand_library

execute if score #rg_desert_grand_library switch.data matches 130.. in minecraft:overworld run forceload remove 46971 46971 46993 47042
execute if score #rg_desert_grand_library switch.data matches 130.. in switch:game run forceload remove 46971 46971 46993 47042

execute if score #rg_desert_grand_library switch.data matches 130.. in minecraft:overworld run forceload remove 46993 46971 47014 47042
execute if score #rg_desert_grand_library switch.data matches 130.. in switch:game run forceload remove 46993 46971 47014 47042

execute if score #rg_desert_grand_library switch.data matches 130.. in minecraft:overworld run forceload remove 47014 46971 47036 47042
execute if score #rg_desert_grand_library switch.data matches 130.. in switch:game run forceload remove 47014 46971 47036 47042

execute if score #rg_desert_grand_library switch.data matches 130.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"desert_grand_library","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"6","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_desert_grand_library switch.data matches 130.. run data modify storage switch:main MessageToLog set value '{"text":"Map `desert_grand_library` just regenerated!"}'
execute if score #rg_desert_grand_library switch.data matches 130.. run function switch:engine/log_message/apply

execute if score #rg_desert_grand_library switch.data matches 130.. in switch:game run function switch:maps/regenerate_doors_macro {name:"desert_grand_library"}
execute if score #rg_desert_grand_library switch.data matches 130.. run scoreboard players reset #rg_desert_grand_library switch.data
execute if score #rg_desert_grand_library switch.data matches 1.. run schedule function switch:maps/survival/desert_grand_library/regenerate 1t


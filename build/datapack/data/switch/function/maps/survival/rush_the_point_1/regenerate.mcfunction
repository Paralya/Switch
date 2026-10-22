
#> switch:maps/survival/rush_the_point_1/regenerate
#
# @within	switch:maps/survival/rush_the_point_1/regenerate 1t [ scheduled ]
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_rush_the_point_1 switch.data 1
execute if score #rg_rush_the_point_1 switch.data matches 1 run data modify storage switch:maps to_regenerate.rush_the_point_1 set value 2b
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1999 4001 -1985 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1999 4001 -1985 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1985 4001 -1971 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1985 4001 -1971 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1971 4001 -1957 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1971 4001 -1957 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1957 4001 -1942 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1957 4001 -1942 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1942 4001 -1928 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1942 4001 -1928 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1928 4001 -1914 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1928 4001 -1914 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1914 4001 -1900 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1914 4001 -1900 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1900 4001 -1886 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1900 4001 -1886 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1886 4001 -1872 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1886 4001 -1872 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1872 4001 -1858 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1872 4001 -1858 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1858 4001 -1843 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1858 4001 -1843 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1843 4001 -1829 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1843 4001 -1829 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1829 4001 -1815 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1829 4001 -1815 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in minecraft:overworld run forceload add -1815 4001 -1801 4199
execute if score #rg_rush_the_point_1 switch.data matches 1 in switch:game run forceload add -1815 4001 -1801 4199

execute if score #rg_rush_the_point_1 switch.data matches 1 run scoreboard players set #rg_rush_the_point_1_y switch.data 0
execute if score #rg_rush_the_point_1 switch.data matches 1 run scoreboard players set #rg_rush_the_point_1_mod switch.data 0
execute if score #rg_rush_the_point_1 switch.data matches ..256 summon marker run function switch:maps/survival/rush_the_point_1/regeneration_on_marker

execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run kill @e[type=item,x=-1900,y=0,z=4100,distance=..1000]
execute if score #rg_rush_the_point_1 switch.data matches 257.. run data remove storage switch:maps to_regenerate.rush_the_point_1

execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1999 4001 -1985 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1999 4001 -1985 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1985 4001 -1971 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1985 4001 -1971 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1971 4001 -1957 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1971 4001 -1957 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1957 4001 -1942 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1957 4001 -1942 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1942 4001 -1928 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1942 4001 -1928 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1928 4001 -1914 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1928 4001 -1914 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1914 4001 -1900 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1914 4001 -1900 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1900 4001 -1886 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1900 4001 -1886 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1886 4001 -1872 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1886 4001 -1872 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1872 4001 -1858 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1872 4001 -1858 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1858 4001 -1843 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1858 4001 -1843 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1843 4001 -1829 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1843 4001 -1829 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1829 4001 -1815 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1829 4001 -1815 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in minecraft:overworld run forceload remove -1815 4001 -1801 4199
execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run forceload remove -1815 4001 -1801 4199

execute if score #rg_rush_the_point_1 switch.data matches 257.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Rush the Point 1","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_rush_the_point_1 switch.data matches 257.. run function switch:engine/log_message/apply {message:"Map `Rush the Point 1` just regenerated!"}

execute if score #rg_rush_the_point_1 switch.data matches 257.. in switch:game run function switch:maps/regenerate_doors_macro {name:"rush_the_point_1"}
execute if score #rg_rush_the_point_1 switch.data matches 257.. run scoreboard players reset #rg_rush_the_point_1 switch.data
execute if score #rg_rush_the_point_1 switch.data matches 1.. run schedule function switch:maps/survival/rush_the_point_1/regenerate 1t


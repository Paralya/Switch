
#> switch:maps/survival/bowser_castle/regenerate
#
# @within	switch:maps/survival/bowser_castle/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_bowser_castle switch.data 1
execute if score #rg_bowser_castle switch.data matches 1 run data modify storage switch:maps to_regenerate.bowser_castle set value 2b
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -6000 -2000 -5988 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -6000 -2000 -5988 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5988 -2000 -5976 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5988 -2000 -5976 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5976 -2000 -5964 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5976 -2000 -5964 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5964 -2000 -5952 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5964 -2000 -5952 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5952 -2000 -5941 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5952 -2000 -5941 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5941 -2000 -5929 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5941 -2000 -5929 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5929 -2000 -5917 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5929 -2000 -5917 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5917 -2000 -5905 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5917 -2000 -5905 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5905 -2000 -5893 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5905 -2000 -5893 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5893 -2000 -5881 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5893 -2000 -5881 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5881 -2000 -5869 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5881 -2000 -5869 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5869 -2000 -5857 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5869 -2000 -5857 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5857 -2000 -5845 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5857 -2000 -5845 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5845 -2000 -5833 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5845 -2000 -5833 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5833 -2000 -5822 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5833 -2000 -5822 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5822 -2000 -5810 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5822 -2000 -5810 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5810 -2000 -5798 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5810 -2000 -5798 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5798 -2000 -5786 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5798 -2000 -5786 -1755
execute if score #rg_bowser_castle switch.data matches 1 in minecraft:overworld run forceload add -5786 -2000 -5774 -1755
execute if score #rg_bowser_castle switch.data matches 1 in switch:game run forceload add -5786 -2000 -5774 -1755

execute if score #rg_bowser_castle switch.data matches 1 run scoreboard players set #rg_bowser_castle_y switch.data 100
execute if score #rg_bowser_castle switch.data matches 1 run scoreboard players set #rg_bowser_castle_mod switch.data 0
execute if score #rg_bowser_castle switch.data matches ..1558 summon marker run function switch:maps/survival/bowser_castle/regeneration_on_marker

execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run kill @e[type=item,x=-5887,y=100,z=-1877,distance=..1000]
execute if score #rg_bowser_castle switch.data matches 1559.. run data remove storage switch:maps to_regenerate.bowser_castle

execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -6000 -2000 -5988 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -6000 -2000 -5988 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5988 -2000 -5976 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5988 -2000 -5976 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5976 -2000 -5964 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5976 -2000 -5964 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5964 -2000 -5952 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5964 -2000 -5952 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5952 -2000 -5941 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5952 -2000 -5941 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5941 -2000 -5929 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5941 -2000 -5929 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5929 -2000 -5917 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5929 -2000 -5917 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5917 -2000 -5905 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5917 -2000 -5905 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5905 -2000 -5893 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5905 -2000 -5893 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5893 -2000 -5881 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5893 -2000 -5881 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5881 -2000 -5869 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5881 -2000 -5869 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5869 -2000 -5857 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5869 -2000 -5857 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5857 -2000 -5845 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5857 -2000 -5845 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5845 -2000 -5833 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5845 -2000 -5833 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5833 -2000 -5822 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5833 -2000 -5822 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5822 -2000 -5810 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5822 -2000 -5810 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5810 -2000 -5798 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5810 -2000 -5798 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5798 -2000 -5786 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5798 -2000 -5786 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in minecraft:overworld run forceload remove -5786 -2000 -5774 -1755
execute if score #rg_bowser_castle switch.data matches 1559.. in switch:game run forceload remove -5786 -2000 -5774 -1755

execute if score #rg_bowser_castle switch.data matches 1559.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Bowser Castle","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"17","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_bowser_castle switch.data matches 1559.. run function switch:engine/log_message/apply {message:"Map `Bowser Castle` just regenerated!"}

execute if score #rg_bowser_castle switch.data matches 1559.. run scoreboard players reset #rg_bowser_castle switch.data
execute if score #rg_bowser_castle switch.data matches 1.. run schedule function switch:maps/survival/bowser_castle/regenerate 1t


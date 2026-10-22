
#> switch:maps/survival/stardust_prison/regenerate
#
# @within	switch:maps/survival/stardust_prison/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_prison switch.data 1
execute if score #rg_stardust_prison switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_prison set value 2b
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -2000 -10000 -1985 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -2000 -10000 -1985 -9822
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1985 -10000 -1971 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -1985 -10000 -1971 -9822
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1971 -10000 -1956 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -1971 -10000 -1956 -9822
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1956 -10000 -1941 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -1956 -10000 -1941 -9822
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1941 -10000 -1927 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -1941 -10000 -1927 -9822
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1927 -10000 -1912 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -1927 -10000 -1912 -9822
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1912 -10000 -1897 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -1912 -10000 -1897 -9822
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1897 -10000 -1883 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -1897 -10000 -1883 -9822
execute if score #rg_stardust_prison switch.data matches 1 in minecraft:overworld run forceload add -1883 -10000 -1868 -9822
execute if score #rg_stardust_prison switch.data matches 1 in switch:game run forceload add -1883 -10000 -1868 -9822

execute if score #rg_stardust_prison switch.data matches 1 run scoreboard players set #rg_stardust_prison_y switch.data 100
execute if score #rg_stardust_prison switch.data matches 1 run scoreboard players set #rg_stardust_prison_mod switch.data 0
execute if score #rg_stardust_prison switch.data matches ..522 summon marker run function switch:maps/survival/stardust_prison/regeneration_on_marker

execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run kill @e[type=item,x=-1934,y=100,z=-9911,distance=..1000]
execute if score #rg_stardust_prison switch.data matches 523.. run data remove storage switch:maps to_regenerate.stardust_prison

execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -2000 -10000 -1985 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -2000 -10000 -1985 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -1985 -10000 -1971 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -1985 -10000 -1971 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -1971 -10000 -1956 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -1971 -10000 -1956 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -1956 -10000 -1941 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -1956 -10000 -1941 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -1941 -10000 -1927 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -1941 -10000 -1927 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -1927 -10000 -1912 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -1927 -10000 -1912 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -1912 -10000 -1897 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -1912 -10000 -1897 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -1897 -10000 -1883 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -1897 -10000 -1883 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in minecraft:overworld run forceload remove -1883 -10000 -1868 -9822
execute if score #rg_stardust_prison switch.data matches 523.. in switch:game run forceload remove -1883 -10000 -1868 -9822

execute if score #rg_stardust_prison switch.data matches 523.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust Prison","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_prison switch.data matches 523.. run function switch:engine/log_message/apply {message:"Map `Stardust Prison` just regenerated!"}

execute if score #rg_stardust_prison switch.data matches 523.. run scoreboard players reset #rg_stardust_prison switch.data
execute if score #rg_stardust_prison switch.data matches 1.. run schedule function switch:maps/survival/stardust_prison/regenerate 1t


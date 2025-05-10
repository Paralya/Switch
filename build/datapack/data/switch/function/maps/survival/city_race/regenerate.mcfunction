
#> switch:maps/survival/city_race/regenerate
#
# @within	switch:maps/survival/city_race/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_city_race switch.data 1
execute if score #rg_city_race switch.data matches 1 run data modify storage switch:maps to_regenerate.city_race set value 2b
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19817 19470 19829 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19817 19470 19829 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19829 19470 19840 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19829 19470 19840 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19840 19470 19852 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19840 19470 19852 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19852 19470 19864 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19852 19470 19864 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19864 19470 19875 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19864 19470 19875 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19875 19470 19887 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19875 19470 19887 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19887 19470 19899 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19887 19470 19899 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19899 19470 19910 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19899 19470 19910 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19910 19470 19922 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19910 19470 19922 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19922 19470 19934 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19922 19470 19934 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19934 19470 19945 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19934 19470 19945 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19945 19470 19957 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19945 19470 19957 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19957 19470 19969 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19957 19470 19969 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19969 19470 19980 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19969 19470 19980 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19980 19470 19992 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19980 19470 19992 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 19992 19470 20004 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 19992 19470 20004 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 20004 19470 20015 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 20004 19470 20015 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 20015 19470 20027 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 20015 19470 20027 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 20027 19470 20039 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 20027 19470 20039 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 20039 19470 20050 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 20039 19470 20050 19731
execute if score #rg_city_race switch.data matches 1 in minecraft:overworld run forceload add 20050 19470 20062 19731
execute if score #rg_city_race switch.data matches 1 in switch:game run forceload add 20050 19470 20062 19731

execute if score #rg_city_race switch.data matches 1 run scoreboard players set #rg_city_race_y switch.data 85
execute if score #rg_city_race switch.data matches 1 run scoreboard players set #rg_city_race_mod switch.data 0
execute if score #rg_city_race switch.data matches ..2520 summon marker run function switch:maps/survival/city_race/regeneration_on_marker

execute if score #rg_city_race switch.data matches 2521.. in switch:game run kill @e[type=item,x=19939,y=85,z=19600,distance=..1000]
execute if score #rg_city_race switch.data matches 2521.. run data remove storage switch:maps to_regenerate.city_race

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19817 19470 19829 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19817 19470 19829 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19829 19470 19840 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19829 19470 19840 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19840 19470 19852 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19840 19470 19852 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19852 19470 19864 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19852 19470 19864 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19864 19470 19875 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19864 19470 19875 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19875 19470 19887 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19875 19470 19887 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19887 19470 19899 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19887 19470 19899 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19899 19470 19910 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19899 19470 19910 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19910 19470 19922 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19910 19470 19922 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19922 19470 19934 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19922 19470 19934 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19934 19470 19945 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19934 19470 19945 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19945 19470 19957 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19945 19470 19957 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19957 19470 19969 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19957 19470 19969 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19969 19470 19980 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19969 19470 19980 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19980 19470 19992 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19980 19470 19992 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 19992 19470 20004 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 19992 19470 20004 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 20004 19470 20015 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 20004 19470 20015 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 20015 19470 20027 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 20015 19470 20027 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 20027 19470 20039 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 20027 19470 20039 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 20039 19470 20050 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 20039 19470 20050 19731

execute if score #rg_city_race switch.data matches 2521.. in minecraft:overworld run forceload remove 20050 19470 20062 19731
execute if score #rg_city_race switch.data matches 2521.. in switch:game run forceload remove 20050 19470 20062 19731

execute if score #rg_city_race switch.data matches 2521.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"city_race","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"2","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_city_race switch.data matches 2521.. run data modify storage switch:main MessageToLog set value '{"text":"Map `city_race` just regenerated!"}'
execute if score #rg_city_race switch.data matches 2521.. run function switch:engine/log_message/apply

execute if score #rg_city_race switch.data matches 2521.. in switch:game run function switch:maps/regenerate_doors_macro {name:"city_race"}
execute if score #rg_city_race switch.data matches 2521.. run scoreboard players reset #rg_city_race switch.data
execute if score #rg_city_race switch.data matches 1.. run schedule function switch:maps/survival/city_race/regenerate 1t


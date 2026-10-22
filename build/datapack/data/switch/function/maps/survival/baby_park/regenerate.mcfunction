
#> switch:maps/survival/baby_park/regenerate
#
# @within	switch:maps/survival/baby_park/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_baby_park switch.data 1
execute if score #rg_baby_park switch.data matches 1 run data modify storage switch:maps to_regenerate.baby_park set value 2b
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -4000 0 -3985 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -4000 0 -3985 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3985 0 -3970 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3985 0 -3970 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3970 0 -3955 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3970 0 -3955 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3955 0 -3940 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3955 0 -3940 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3940 0 -3925 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3940 0 -3925 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3925 0 -3910 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3925 0 -3910 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3910 0 -3895 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3910 0 -3895 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3895 0 -3880 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3895 0 -3880 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3880 0 -3865 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3880 0 -3865 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3865 0 -3850 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3865 0 -3850 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3850 0 -3835 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3850 0 -3835 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3835 0 -3820 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3835 0 -3820 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3820 0 -3805 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3820 0 -3805 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3805 0 -3790 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3805 0 -3790 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3790 0 -3775 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3790 0 -3775 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3775 0 -3760 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3775 0 -3760 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3760 0 -3745 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3760 0 -3745 191
execute if score #rg_baby_park switch.data matches 1 in minecraft:overworld run forceload add -3745 0 -3730 191
execute if score #rg_baby_park switch.data matches 1 in switch:game run forceload add -3745 0 -3730 191

execute if score #rg_baby_park switch.data matches 1 run scoreboard players set #rg_baby_park_y switch.data 100
execute if score #rg_baby_park switch.data matches 1 run scoreboard players set #rg_baby_park_mod switch.data 0
execute if score #rg_baby_park switch.data matches ..1728 summon marker run function switch:maps/survival/baby_park/regeneration_on_marker

execute if score #rg_baby_park switch.data matches 1729.. in switch:game run kill @e[type=item,x=-3865,y=100,z=95,distance=..1000]
execute if score #rg_baby_park switch.data matches 1729.. run data remove storage switch:maps to_regenerate.baby_park

execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -4000 0 -3985 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -4000 0 -3985 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3985 0 -3970 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3985 0 -3970 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3970 0 -3955 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3970 0 -3955 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3955 0 -3940 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3955 0 -3940 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3940 0 -3925 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3940 0 -3925 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3925 0 -3910 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3925 0 -3910 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3910 0 -3895 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3910 0 -3895 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3895 0 -3880 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3895 0 -3880 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3880 0 -3865 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3880 0 -3865 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3865 0 -3850 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3865 0 -3850 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3850 0 -3835 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3850 0 -3835 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3835 0 -3820 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3835 0 -3820 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3820 0 -3805 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3820 0 -3805 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3805 0 -3790 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3805 0 -3790 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3790 0 -3775 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3790 0 -3775 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3775 0 -3760 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3775 0 -3760 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3760 0 -3745 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3760 0 -3745 191
execute if score #rg_baby_park switch.data matches 1729.. in minecraft:overworld run forceload remove -3745 0 -3730 191
execute if score #rg_baby_park switch.data matches 1729.. in switch:game run forceload remove -3745 0 -3730 191

execute if score #rg_baby_park switch.data matches 1729.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Baby Park","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"26","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_baby_park switch.data matches 1729.. run function switch:engine/log_message/apply {message:"Map `Baby Park` just regenerated!"}

execute if score #rg_baby_park switch.data matches 1729.. run scoreboard players reset #rg_baby_park switch.data
execute if score #rg_baby_park switch.data matches 1.. run schedule function switch:maps/survival/baby_park/regenerate 1t


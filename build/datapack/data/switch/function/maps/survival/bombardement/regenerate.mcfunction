
#> switch:maps/survival/bombardement/regenerate
#
# @within	switch:maps/survival/bombardement/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_bombardement switch.data 1
execute if score #rg_bombardement switch.data matches 1 run data modify storage switch:maps to_regenerate.bombardement set value 2b
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10000 2000 10023 2087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 10000 2000 10023 2087
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10023 2000 10046 2087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 10023 2000 10046 2087
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10046 2000 10069 2087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 10046 2000 10069 2087
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10069 2000 10092 2087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 10069 2000 10092 2087
execute if score #rg_bombardement switch.data matches 1 in minecraft:overworld run forceload add 10092 2000 10115 2087
execute if score #rg_bombardement switch.data matches 1 in switch:game run forceload add 10092 2000 10115 2087

execute if score #rg_bombardement switch.data matches 1 run scoreboard players set #rg_bombardement_y switch.data 100
execute if score #rg_bombardement switch.data matches 1 run scoreboard players set #rg_bombardement_mod switch.data 0
execute if score #rg_bombardement switch.data matches ..390 summon marker run function switch:maps/survival/bombardement/regeneration_on_marker

execute if score #rg_bombardement switch.data matches 391.. in switch:game run kill @e[type=item,x=10057,y=100,z=2043,distance=..1000]
execute if score #rg_bombardement switch.data matches 391.. run data remove storage switch:maps to_regenerate.bombardement

execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 10000 2000 10023 2087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 10000 2000 10023 2087
execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 10023 2000 10046 2087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 10023 2000 10046 2087
execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 10046 2000 10069 2087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 10046 2000 10069 2087
execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 10069 2000 10092 2087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 10069 2000 10092 2087
execute if score #rg_bombardement switch.data matches 391.. in minecraft:overworld run forceload remove 10092 2000 10115 2087
execute if score #rg_bombardement switch.data matches 391.. in switch:game run forceload remove 10092 2000 10115 2087

execute if score #rg_bombardement switch.data matches 391.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Bombardement","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_bombardement switch.data matches 391.. run function switch:engine/log_message/apply {message:"Map `Bombardement` just regenerated!"}

execute if score #rg_bombardement switch.data matches 391.. run scoreboard players reset #rg_bombardement switch.data
execute if score #rg_bombardement switch.data matches 1.. run schedule function switch:maps/survival/bombardement/regenerate 1t


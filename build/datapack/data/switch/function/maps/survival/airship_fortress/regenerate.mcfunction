
#> switch:maps/survival/airship_fortress/regenerate
#
# @within	switch:maps/survival/airship_fortress/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_airship_fortress switch.data 1
execute if score #rg_airship_fortress switch.data matches 1 run data modify storage switch:maps to_regenerate.airship_fortress set value 2b
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7169 -5149 7184 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7169 -5149 7184 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7184 -5149 7198 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7184 -5149 7198 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7198 -5149 7213 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7198 -5149 7213 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7213 -5149 7227 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7213 -5149 7227 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7227 -5149 7242 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7227 -5149 7242 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7242 -5149 7256 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7242 -5149 7256 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7256 -5149 7271 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7256 -5149 7271 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7271 -5149 7286 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7271 -5149 7286 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7286 -5149 7300 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7286 -5149 7300 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7300 -5149 7315 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7300 -5149 7315 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7315 -5149 7329 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7315 -5149 7329 -4950
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 7329 -5149 7344 -4950
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 7329 -5149 7344 -4950

execute if score #rg_airship_fortress switch.data matches 1 run scoreboard players set #rg_airship_fortress_y switch.data 70
execute if score #rg_airship_fortress switch.data matches 1 run scoreboard players set #rg_airship_fortress_mod switch.data 0
execute if score #rg_airship_fortress switch.data matches ..1332 summon marker run function switch:maps/survival/airship_fortress/regeneration_on_marker

execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run kill @e[type=item,x=7256,y=70,z=-5049,distance=..1000]
execute if score #rg_airship_fortress switch.data matches 1333.. run data remove storage switch:maps to_regenerate.airship_fortress

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7169 -5149 7184 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7169 -5149 7184 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7184 -5149 7198 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7184 -5149 7198 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7198 -5149 7213 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7198 -5149 7213 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7213 -5149 7227 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7213 -5149 7227 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7227 -5149 7242 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7227 -5149 7242 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7242 -5149 7256 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7242 -5149 7256 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7256 -5149 7271 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7256 -5149 7271 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7271 -5149 7286 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7271 -5149 7286 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7286 -5149 7300 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7286 -5149 7300 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7300 -5149 7315 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7300 -5149 7315 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7315 -5149 7329 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7315 -5149 7329 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 7329 -5149 7344 -4950
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 7329 -5149 7344 -4950

execute if score #rg_airship_fortress switch.data matches 1333.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Airship Fortress","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_airship_fortress switch.data matches 1333.. run function switch:engine/log_message/apply {message:"Map `Airship Fortress` just regenerated!"}

execute if score #rg_airship_fortress switch.data matches 1333.. run scoreboard players reset #rg_airship_fortress switch.data
execute if score #rg_airship_fortress switch.data matches 1.. run schedule function switch:maps/survival/airship_fortress/regenerate 1t


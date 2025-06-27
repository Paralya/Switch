
#> switch:maps/survival/airship_fortress/regenerate
#
# @within	switch:maps/survival/airship_fortress/regenerate 1t
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_airship_fortress switch.data 1
execute if score #rg_airship_fortress switch.data matches 1 run data modify storage switch:maps to_regenerate.airship_fortress set value 2b
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20606 20227 20621 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20606 20227 20621 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20621 20227 20635 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20621 20227 20635 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20635 20227 20650 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20635 20227 20650 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20650 20227 20664 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20650 20227 20664 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20664 20227 20679 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20664 20227 20679 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20679 20227 20694 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20679 20227 20694 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20694 20227 20708 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20694 20227 20708 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20708 20227 20723 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20708 20227 20723 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20723 20227 20737 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20723 20227 20737 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20737 20227 20752 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20737 20227 20752 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20752 20227 20766 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20752 20227 20766 20426
execute if score #rg_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20766 20227 20781 20426
execute if score #rg_airship_fortress switch.data matches 1 in switch:game run forceload add 20766 20227 20781 20426

execute if score #rg_airship_fortress switch.data matches 1 run scoreboard players set #rg_airship_fortress_y switch.data 70
execute if score #rg_airship_fortress switch.data matches 1 run scoreboard players set #rg_airship_fortress_mod switch.data 0
execute if score #rg_airship_fortress switch.data matches ..1332 summon marker run function switch:maps/survival/airship_fortress/regeneration_on_marker

execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run kill @e[type=item,x=20693,y=70,z=20326,distance=..1000]
execute if score #rg_airship_fortress switch.data matches 1333.. run data remove storage switch:maps to_regenerate.airship_fortress

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20606 20227 20621 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20606 20227 20621 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20621 20227 20635 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20621 20227 20635 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20635 20227 20650 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20635 20227 20650 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20650 20227 20664 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20650 20227 20664 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20664 20227 20679 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20664 20227 20679 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20679 20227 20694 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20679 20227 20694 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20694 20227 20708 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20694 20227 20708 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20708 20227 20723 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20708 20227 20723 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20723 20227 20737 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20723 20227 20737 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20737 20227 20752 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20737 20227 20752 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20752 20227 20766 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20752 20227 20766 20426

execute if score #rg_airship_fortress switch.data matches 1333.. in minecraft:overworld run forceload remove 20766 20227 20781 20426
execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run forceload remove 20766 20227 20781 20426

execute if score #rg_airship_fortress switch.data matches 1333.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Airship Fortress","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]

execute if score #rg_airship_fortress switch.data matches 1333.. run data modify storage switch:main MessageToLog set value '{"text":"Map `Airship Fortress` just regenerated!"}'
execute if score #rg_airship_fortress switch.data matches 1333.. run function switch:engine/log_message/apply

execute if score #rg_airship_fortress switch.data matches 1333.. in switch:game run function switch:maps/regenerate_doors_macro {name:"airship_fortress"}
execute if score #rg_airship_fortress switch.data matches 1333.. run scoreboard players reset #rg_airship_fortress switch.data
execute if score #rg_airship_fortress switch.data matches 1.. run schedule function switch:maps/survival/airship_fortress/regenerate 1t


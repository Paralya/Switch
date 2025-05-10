
#> switch:maps/survival/airship_fortress/scan_doors
#
# @within	switch:maps/survival/airship_fortress/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_airship_fortress switch.data 1

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20606 20227 20621 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20606 20227 20621 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20621 20227 20635 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20621 20227 20635 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20635 20227 20650 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20635 20227 20650 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20650 20227 20664 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20650 20227 20664 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20664 20227 20679 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20664 20227 20679 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20679 20227 20694 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20679 20227 20694 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20694 20227 20708 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20694 20227 20708 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20708 20227 20723 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20708 20227 20723 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20723 20227 20737 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20723 20227 20737 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20737 20227 20752 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20737 20227 20752 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20752 20227 20766 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20752 20227 20766 20426

execute if score #scan_airship_fortress switch.data matches 1 in minecraft:overworld run forceload add 20766 20227 20781 20426
execute if score #scan_airship_fortress switch.data matches 1 in switch:game run forceload add 20766 20227 20781 20426

execute if score #scan_airship_fortress switch.data matches 1 run data modify storage switch:maps to_scan.airship_fortress set value 2b
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #start_x_airship_fortress switch.data 20607
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #start_y_airship_fortress switch.data 71
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #start_z_airship_fortress switch.data 20228
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #end_x_airship_fortress switch.data 20780
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #end_y_airship_fortress switch.data 179
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players set #end_z_airship_fortress switch.data 20425
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players operation #curr_x_airship_fortress switch.data = #start_x_airship_fortress switch.data
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players operation #curr_y_airship_fortress switch.data = #start_y_airship_fortress switch.data
execute if score #scan_airship_fortress switch.data matches 1 run scoreboard players operation #curr_z_airship_fortress switch.data = #start_z_airship_fortress switch.data
execute if score #scan_airship_fortress switch.data matches 1 run data modify storage switch:doors airship_fortress set value []


execute if score #scan_airship_fortress switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_airship_fortress switch.data matches 30.. summon marker run function switch:maps/survival/airship_fortress/scan_doors_on_marker

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20606 20227 20621 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20606 20227 20621 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20621 20227 20635 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20621 20227 20635 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20635 20227 20650 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20635 20227 20650 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20650 20227 20664 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20650 20227 20664 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20664 20227 20679 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20664 20227 20679 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20679 20227 20694 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20679 20227 20694 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20694 20227 20708 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20694 20227 20708 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20708 20227 20723 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20708 20227 20723 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20723 20227 20737 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20723 20227 20737 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20737 20227 20752 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20737 20227 20752 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20752 20227 20766 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20752 20227 20766 20426

execute if score #scan_airship_fortress switch.data matches 782 in minecraft:overworld run forceload remove 20766 20227 20781 20426
execute if score #scan_airship_fortress switch.data matches 782 in switch:game run forceload remove 20766 20227 20781 20426

execute if score #scan_airship_fortress switch.data matches 782 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"airship_fortress","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"39","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_airship_fortress switch.data matches 782 run data remove storage switch:maps to_scan.airship_fortress
execute if score #scan_airship_fortress switch.data matches 782 run scoreboard players reset #scan_airship_fortress switch.data

execute if score #scan_airship_fortress switch.data matches 1.. run schedule function switch:maps/survival/airship_fortress/scan_doors 1t


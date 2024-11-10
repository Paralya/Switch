
#> switch:maps/survival/huge_cargo/scan_doors
#
# @within	switch:maps/survival/huge_cargo/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_huge_cargo switch.data 1

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41000 40892 41024 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41000 40892 41024 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41024 40892 41049 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41024 40892 41049 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41049 40892 41073 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41049 40892 41073 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41073 40892 41097 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41073 40892 41097 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41097 40892 41121 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41097 40892 41121 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41121 40892 41146 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41121 40892 41146 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41146 40892 41170 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41146 40892 41170 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41170 40892 41194 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41170 40892 41194 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41194 40892 41218 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41194 40892 41218 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41218 40892 41243 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41218 40892 41243 41000

execute if score #scan_huge_cargo switch.data matches 1 in minecraft:overworld run forceload add 41243 40892 41267 41000
execute if score #scan_huge_cargo switch.data matches 1 in switch:game run forceload add 41243 40892 41267 41000

execute if score #scan_huge_cargo switch.data matches 1 run data modify storage switch:maps to_scan.huge_cargo set value 2b
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players set #start_x_huge_cargo switch.data 41001
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players set #start_y_huge_cargo switch.data -63
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players set #start_z_huge_cargo switch.data 40893
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players set #end_x_huge_cargo switch.data 41266
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players set #end_y_huge_cargo switch.data 88
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players set #end_z_huge_cargo switch.data 40999
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players operation #curr_x_huge_cargo switch.data = #start_x_huge_cargo switch.data
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players operation #curr_y_huge_cargo switch.data = #start_y_huge_cargo switch.data
execute if score #scan_huge_cargo switch.data matches 1 run scoreboard players operation #curr_z_huge_cargo switch.data = #start_z_huge_cargo switch.data
execute if score #scan_huge_cargo switch.data matches 1 run data modify storage switch:doors huge_cargo set value []


execute if score #scan_huge_cargo switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_huge_cargo switch.data matches 30.. summon marker run function switch:maps/survival/huge_cargo/scan_doors_on_marker

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41000 40892 41024 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41000 40892 41024 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41024 40892 41049 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41024 40892 41049 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41049 40892 41073 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41049 40892 41073 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41073 40892 41097 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41073 40892 41097 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41097 40892 41121 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41097 40892 41121 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41121 40892 41146 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41121 40892 41146 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41146 40892 41170 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41146 40892 41170 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41170 40892 41194 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41170 40892 41194 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41194 40892 41218 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41194 40892 41218 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41218 40892 41243 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41218 40892 41243 41000

execute if score #scan_huge_cargo switch.data matches 896 in minecraft:overworld run forceload remove 41243 40892 41267 41000
execute if score #scan_huge_cargo switch.data matches 896 in switch:game run forceload remove 41243 40892 41267 41000

execute if score #scan_huge_cargo switch.data matches 896 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"huge_cargo","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"44","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_huge_cargo switch.data matches 896 run data remove storage switch:maps to_scan.huge_cargo
execute if score #scan_huge_cargo switch.data matches 896 run scoreboard players reset #scan_huge_cargo switch.data

execute if score #scan_huge_cargo switch.data matches 1.. run schedule function switch:maps/survival/huge_cargo/scan_doors 1t


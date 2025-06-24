
#> switch:maps/survival/nuketown/scan_doors
#
# @within	switch:maps/survival/nuketown/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_nuketown switch.data 1

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72000 72000 72013 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72000 72000 72013 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72013 72000 72026 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72013 72000 72026 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72026 72000 72039 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72026 72000 72039 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72039 72000 72052 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72039 72000 72052 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72052 72000 72065 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72052 72000 72065 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72065 72000 72078 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72065 72000 72078 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72078 72000 72091 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72078 72000 72091 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72091 72000 72104 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72091 72000 72104 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72104 72000 72116 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72104 72000 72116 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72116 72000 72129 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72116 72000 72129 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72129 72000 72142 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72129 72000 72142 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72142 72000 72155 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72142 72000 72155 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72155 72000 72168 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72155 72000 72168 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72168 72000 72181 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72168 72000 72181 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72181 72000 72194 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72181 72000 72194 72220

execute if score #scan_nuketown switch.data matches 1 in minecraft:overworld run forceload add 72194 72000 72207 72220
execute if score #scan_nuketown switch.data matches 1 in switch:game run forceload add 72194 72000 72207 72220

execute if score #scan_nuketown switch.data matches 1 run data modify storage switch:maps to_scan.nuketown set value 2b
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #start_x_nuketown switch.data 72001
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #start_y_nuketown switch.data 101
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #start_z_nuketown switch.data 72001
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #end_x_nuketown switch.data 72206
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #end_y_nuketown switch.data 150
execute if score #scan_nuketown switch.data matches 1 run scoreboard players set #end_z_nuketown switch.data 72219
execute if score #scan_nuketown switch.data matches 1 run scoreboard players operation #curr_x_nuketown switch.data = #start_x_nuketown switch.data
execute if score #scan_nuketown switch.data matches 1 run scoreboard players operation #curr_y_nuketown switch.data = #start_y_nuketown switch.data
execute if score #scan_nuketown switch.data matches 1 run scoreboard players operation #curr_z_nuketown switch.data = #start_z_nuketown switch.data
execute if score #scan_nuketown switch.data matches 1 run data modify storage switch:doors nuketown set value []

execute if score #scan_nuketown switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_nuketown switch.data matches 30.. summon marker run function switch:maps/survival/nuketown/scan_doors_on_marker

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72000 72000 72013 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72000 72000 72013 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72013 72000 72026 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72013 72000 72026 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72026 72000 72039 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72026 72000 72039 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72039 72000 72052 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72039 72000 72052 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72052 72000 72065 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72052 72000 72065 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72065 72000 72078 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72065 72000 72078 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72078 72000 72091 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72078 72000 72091 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72091 72000 72104 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72091 72000 72104 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72104 72000 72116 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72104 72000 72116 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72116 72000 72129 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72116 72000 72129 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72129 72000 72142 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72129 72000 72142 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72142 72000 72155 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72142 72000 72155 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72155 72000 72168 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72155 72000 72168 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72168 72000 72181 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72168 72000 72181 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72181 72000 72194 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72181 72000 72194 72220

execute if score #scan_nuketown switch.data matches 482 in minecraft:overworld run forceload remove 72194 72000 72207 72220
execute if score #scan_nuketown switch.data matches 482 in switch:game run forceload remove 72194 72000 72207 72220

execute if score #scan_nuketown switch.data matches 482 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"nuketown","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"24","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_nuketown switch.data matches 482 run data remove storage switch:maps to_scan.nuketown
execute if score #scan_nuketown switch.data matches 482 run scoreboard players reset #scan_nuketown switch.data

execute if score #scan_nuketown switch.data matches 1.. run schedule function switch:maps/survival/nuketown/scan_doors 1t


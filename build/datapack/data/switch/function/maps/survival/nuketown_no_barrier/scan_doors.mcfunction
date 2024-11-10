
#> switch:maps/survival/nuketown_no_barrier/scan_doors
#
# @within	switch:maps/survival/nuketown_no_barrier/scan_doors 1t
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_nuketown_no_barrier switch.data 1

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111000 111000 111013 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111000 111000 111013 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111013 111000 111026 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111013 111000 111026 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111026 111000 111039 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111026 111000 111039 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111039 111000 111052 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111039 111000 111052 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111052 111000 111065 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111052 111000 111065 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111065 111000 111078 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111065 111000 111078 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111078 111000 111091 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111078 111000 111091 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111091 111000 111104 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111091 111000 111104 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111104 111000 111116 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111104 111000 111116 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111116 111000 111129 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111116 111000 111129 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111129 111000 111142 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111129 111000 111142 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111142 111000 111155 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111142 111000 111155 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111155 111000 111168 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111155 111000 111168 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111168 111000 111181 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111168 111000 111181 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111181 111000 111194 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111181 111000 111194 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 111194 111000 111207 111220
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 111194 111000 111207 111220

execute if score #scan_nuketown_no_barrier switch.data matches 1 run data modify storage switch:maps to_scan.nuketown_no_barrier set value 2b
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #start_x_nuketown_no_barrier switch.data 111001
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #start_y_nuketown_no_barrier switch.data 1
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #start_z_nuketown_no_barrier switch.data 111001
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #end_x_nuketown_no_barrier switch.data 111206
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #end_y_nuketown_no_barrier switch.data 50
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #end_z_nuketown_no_barrier switch.data 111219
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players operation #curr_x_nuketown_no_barrier switch.data = #start_x_nuketown_no_barrier switch.data
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players operation #curr_y_nuketown_no_barrier switch.data = #start_y_nuketown_no_barrier switch.data
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players operation #curr_z_nuketown_no_barrier switch.data = #start_z_nuketown_no_barrier switch.data
execute if score #scan_nuketown_no_barrier switch.data matches 1 run data modify storage switch:doors nuketown_no_barrier set value []


execute if score #scan_nuketown_no_barrier switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_nuketown_no_barrier switch.data matches 30.. summon marker run function switch:maps/survival/nuketown_no_barrier/scan_doors_on_marker

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111000 111000 111013 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111000 111000 111013 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111013 111000 111026 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111013 111000 111026 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111026 111000 111039 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111026 111000 111039 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111039 111000 111052 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111039 111000 111052 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111052 111000 111065 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111052 111000 111065 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111065 111000 111078 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111065 111000 111078 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111078 111000 111091 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111078 111000 111091 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111091 111000 111104 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111091 111000 111104 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111104 111000 111116 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111104 111000 111116 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111116 111000 111129 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111116 111000 111129 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111129 111000 111142 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111129 111000 111142 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111142 111000 111155 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111142 111000 111155 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111155 111000 111168 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111155 111000 111168 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111168 111000 111181 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111168 111000 111181 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111181 111000 111194 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111181 111000 111194 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 111194 111000 111207 111220
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 111194 111000 111207 111220

execute if score #scan_nuketown_no_barrier switch.data matches 482 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"nuketown_no_barrier","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"24","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_nuketown_no_barrier switch.data matches 482 run data remove storage switch:maps to_scan.nuketown_no_barrier
execute if score #scan_nuketown_no_barrier switch.data matches 482 run scoreboard players reset #scan_nuketown_no_barrier switch.data

execute if score #scan_nuketown_no_barrier switch.data matches 1.. run schedule function switch:maps/survival/nuketown_no_barrier/scan_doors 1t


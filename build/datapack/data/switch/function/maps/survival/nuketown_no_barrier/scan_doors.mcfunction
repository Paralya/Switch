
#> switch:maps/survival/nuketown_no_barrier/scan_doors
#
# @within	switch:maps/survival/nuketown_no_barrier/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_nuketown_no_barrier switch.data 1

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6000 -10000 6013 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6000 -10000 6013 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6013 -10000 6026 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6013 -10000 6026 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6026 -10000 6039 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6026 -10000 6039 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6039 -10000 6052 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6039 -10000 6052 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6052 -10000 6065 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6052 -10000 6065 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6065 -10000 6078 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6065 -10000 6078 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6078 -10000 6091 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6078 -10000 6091 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6091 -10000 6104 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6091 -10000 6104 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6104 -10000 6116 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6104 -10000 6116 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6116 -10000 6129 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6116 -10000 6129 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6129 -10000 6142 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6129 -10000 6142 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6142 -10000 6155 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6142 -10000 6155 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6155 -10000 6168 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6155 -10000 6168 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6168 -10000 6181 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6168 -10000 6181 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6181 -10000 6194 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6181 -10000 6194 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 in minecraft:overworld run forceload add 6194 -10000 6207 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 1 in switch:game run forceload add 6194 -10000 6207 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 1 run data modify storage switch:maps to_scan.nuketown_no_barrier set value 2b
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #start_x_nuketown_no_barrier switch.data 6001
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #start_y_nuketown_no_barrier switch.data 101
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #start_z_nuketown_no_barrier switch.data -9999
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #end_x_nuketown_no_barrier switch.data 6206
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #end_y_nuketown_no_barrier switch.data 150
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players set #end_z_nuketown_no_barrier switch.data -9781
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players operation #curr_x_nuketown_no_barrier switch.data = #start_x_nuketown_no_barrier switch.data
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players operation #curr_y_nuketown_no_barrier switch.data = #start_y_nuketown_no_barrier switch.data
execute if score #scan_nuketown_no_barrier switch.data matches 1 run scoreboard players operation #curr_z_nuketown_no_barrier switch.data = #start_z_nuketown_no_barrier switch.data
execute if score #scan_nuketown_no_barrier switch.data matches 1 run data modify storage switch:doors nuketown_no_barrier set value []

execute if score #scan_nuketown_no_barrier switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_nuketown_no_barrier switch.data matches 30.. summon marker run function switch:maps/survival/nuketown_no_barrier/scan_doors_on_marker

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6000 -10000 6013 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6000 -10000 6013 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6013 -10000 6026 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6013 -10000 6026 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6026 -10000 6039 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6026 -10000 6039 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6039 -10000 6052 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6039 -10000 6052 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6052 -10000 6065 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6052 -10000 6065 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6065 -10000 6078 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6065 -10000 6078 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6078 -10000 6091 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6078 -10000 6091 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6091 -10000 6104 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6091 -10000 6104 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6104 -10000 6116 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6104 -10000 6116 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6116 -10000 6129 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6116 -10000 6129 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6129 -10000 6142 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6129 -10000 6142 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6142 -10000 6155 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6142 -10000 6155 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6155 -10000 6168 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6155 -10000 6168 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6168 -10000 6181 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6168 -10000 6181 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6181 -10000 6194 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6181 -10000 6194 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 in minecraft:overworld run forceload remove 6194 -10000 6207 -9780
execute if score #scan_nuketown_no_barrier switch.data matches 482 in switch:game run forceload remove 6194 -10000 6207 -9780

execute if score #scan_nuketown_no_barrier switch.data matches 482 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"nuketown_no_barrier","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"24","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_nuketown_no_barrier switch.data matches 482 run data remove storage switch:maps to_scan.nuketown_no_barrier
execute if score #scan_nuketown_no_barrier switch.data matches 482 run scoreboard players reset #scan_nuketown_no_barrier switch.data

execute if score #scan_nuketown_no_barrier switch.data matches 1.. run schedule function switch:maps/survival/nuketown_no_barrier/scan_doors 1t


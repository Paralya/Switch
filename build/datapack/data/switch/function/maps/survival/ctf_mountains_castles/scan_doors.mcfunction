
#> switch:maps/survival/ctf_mountains_castles/scan_doors
#
# @within	switch:maps/survival/ctf_mountains_castles/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_ctf_mountains_castles switch.data 1

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -12000 -6000 -11981 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -12000 -6000 -11981 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11981 -6000 -11962 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11981 -6000 -11962 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11962 -6000 -11943 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11962 -6000 -11943 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11943 -6000 -11923 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11943 -6000 -11923 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11923 -6000 -11904 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11923 -6000 -11904 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11904 -6000 -11885 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11904 -6000 -11885 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11885 -6000 -11866 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11885 -6000 -11866 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11866 -6000 -11847 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11866 -6000 -11847 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11847 -6000 -11828 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11847 -6000 -11828 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11828 -6000 -11808 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11828 -6000 -11808 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11808 -6000 -11789 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11808 -6000 -11789 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11789 -6000 -11770 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11789 -6000 -11770 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11770 -6000 -11751 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11770 -6000 -11751 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11751 -6000 -11732 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11751 -6000 -11732 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11732 -6000 -11713 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11732 -6000 -11713 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11713 -6000 -11693 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11713 -6000 -11693 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11693 -6000 -11674 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11693 -6000 -11674 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11674 -6000 -11655 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11674 -6000 -11655 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 in minecraft:overworld run forceload add -11655 -6000 -11636 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1 in switch:game run forceload add -11655 -6000 -11636 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1 run data modify storage switch:maps to_scan.ctf_mountains_castles set value 2b
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_x_ctf_mountains_castles switch.data -11999
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_y_ctf_mountains_castles switch.data 101
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #start_z_ctf_mountains_castles switch.data -5999
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_x_ctf_mountains_castles switch.data -11637
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_y_ctf_mountains_castles switch.data 261
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players set #end_z_ctf_mountains_castles switch.data -5843
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_x_ctf_mountains_castles switch.data = #start_x_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_y_ctf_mountains_castles switch.data = #start_y_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run scoreboard players operation #curr_z_ctf_mountains_castles switch.data = #start_z_ctf_mountains_castles switch.data
execute if score #scan_ctf_mountains_castles switch.data matches 1 run data modify storage switch:doors ctf_mountains_castles set value []

execute if score #scan_ctf_mountains_castles switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_ctf_mountains_castles switch.data matches 30.. summon marker run function switch:maps/survival/ctf_mountains_castles/scan_doors_on_marker

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -12000 -6000 -11981 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -12000 -6000 -11981 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11981 -6000 -11962 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11981 -6000 -11962 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11962 -6000 -11943 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11962 -6000 -11943 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11943 -6000 -11923 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11943 -6000 -11923 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11923 -6000 -11904 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11923 -6000 -11904 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11904 -6000 -11885 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11904 -6000 -11885 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11885 -6000 -11866 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11885 -6000 -11866 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11866 -6000 -11847 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11866 -6000 -11847 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11847 -6000 -11828 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11847 -6000 -11828 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11828 -6000 -11808 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11828 -6000 -11808 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11808 -6000 -11789 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11808 -6000 -11789 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11789 -6000 -11770 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11789 -6000 -11770 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11770 -6000 -11751 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11770 -6000 -11751 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11751 -6000 -11732 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11751 -6000 -11732 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11732 -6000 -11713 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11732 -6000 -11713 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11713 -6000 -11693 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11713 -6000 -11693 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11693 -6000 -11674 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11693 -6000 -11674 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11674 -6000 -11655 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11674 -6000 -11655 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 in minecraft:overworld run forceload remove -11655 -6000 -11636 -5842
execute if score #scan_ctf_mountains_castles switch.data matches 1866 in switch:game run forceload remove -11655 -6000 -11636 -5842

execute if score #scan_ctf_mountains_castles switch.data matches 1866 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"ctf_mountains_castles","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"93","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_ctf_mountains_castles switch.data matches 1866 run data remove storage switch:maps to_scan.ctf_mountains_castles
execute if score #scan_ctf_mountains_castles switch.data matches 1866 run scoreboard players reset #scan_ctf_mountains_castles switch.data

execute if score #scan_ctf_mountains_castles switch.data matches 1.. run schedule function switch:maps/survival/ctf_mountains_castles/scan_doors 1t


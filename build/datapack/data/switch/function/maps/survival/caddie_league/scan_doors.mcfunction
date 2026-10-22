
#> switch:maps/survival/caddie_league/scan_doors
#
# @within	switch:maps/survival/caddie_league/scan_doors 1t [ scheduled ]
#			switch:maps/loop_scan_doors_of_every_maps
#

scoreboard players add #scan_caddie_league switch.data 1

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3912 6000 -3901 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3912 6000 -3901 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3901 6000 -3889 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3901 6000 -3889 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3889 6000 -3878 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3889 6000 -3878 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3878 6000 -3867 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3878 6000 -3867 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3867 6000 -3855 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3867 6000 -3855 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3855 6000 -3844 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3855 6000 -3844 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3844 6000 -3833 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3844 6000 -3833 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3833 6000 -3821 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3833 6000 -3821 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3821 6000 -3810 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3821 6000 -3810 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3810 6000 -3799 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3810 6000 -3799 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3799 6000 -3787 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3799 6000 -3787 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3787 6000 -3776 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3787 6000 -3776 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3776 6000 -3765 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3776 6000 -3765 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3765 6000 -3753 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3765 6000 -3753 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3753 6000 -3742 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3753 6000 -3742 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3742 6000 -3731 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3742 6000 -3731 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3731 6000 -3719 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3731 6000 -3719 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3719 6000 -3708 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3719 6000 -3708 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3708 6000 -3697 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3708 6000 -3697 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3697 6000 -3685 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3697 6000 -3685 6256

execute if score #scan_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3685 6000 -3674 6256
execute if score #scan_caddie_league switch.data matches 1 in switch:game run forceload add -3685 6000 -3674 6256

execute if score #scan_caddie_league switch.data matches 1 run data modify storage switch:maps to_scan.caddie_league set value 2b
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #start_x_caddie_league switch.data -3911
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #start_y_caddie_league switch.data 101
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #start_z_caddie_league switch.data 6001
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #end_x_caddie_league switch.data -3675
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #end_y_caddie_league switch.data 150
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players set #end_z_caddie_league switch.data 6255
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players operation #curr_x_caddie_league switch.data = #start_x_caddie_league switch.data
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players operation #curr_y_caddie_league switch.data = #start_y_caddie_league switch.data
execute if score #scan_caddie_league switch.data matches 1 run scoreboard players operation #curr_z_caddie_league switch.data = #start_z_caddie_league switch.data
execute if score #scan_caddie_league switch.data matches 1 run data modify storage switch:doors caddie_league set value []

execute if score #scan_caddie_league switch.data matches 30.. run scoreboard players set #blocks_in_loop switch.data 5000
execute if score #scan_caddie_league switch.data matches 30.. summon marker run function switch:maps/survival/caddie_league/scan_doors_on_marker

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3912 6000 -3901 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3912 6000 -3901 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3901 6000 -3889 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3901 6000 -3889 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3889 6000 -3878 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3889 6000 -3878 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3878 6000 -3867 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3878 6000 -3867 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3867 6000 -3855 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3867 6000 -3855 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3855 6000 -3844 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3855 6000 -3844 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3844 6000 -3833 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3844 6000 -3833 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3833 6000 -3821 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3833 6000 -3821 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3821 6000 -3810 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3821 6000 -3810 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3810 6000 -3799 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3810 6000 -3799 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3799 6000 -3787 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3799 6000 -3787 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3787 6000 -3776 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3787 6000 -3776 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3776 6000 -3765 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3776 6000 -3765 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3765 6000 -3753 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3765 6000 -3753 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3753 6000 -3742 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3753 6000 -3742 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3742 6000 -3731 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3742 6000 -3731 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3731 6000 -3719 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3731 6000 -3719 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3719 6000 -3708 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3719 6000 -3708 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3708 6000 -3697 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3708 6000 -3697 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3697 6000 -3685 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3697 6000 -3685 6256

execute if score #scan_caddie_league switch.data matches 635 in minecraft:overworld run forceload remove -3685 6000 -3674 6256
execute if score #scan_caddie_league switch.data matches 635 in switch:game run forceload remove -3685 6000 -3674 6256

execute if score #scan_caddie_league switch.data matches 635 run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Doors of map '","color":"yellow"},{"text":"caddie_league","color":"gold"},{"text":"' just been scanned in ","color":"yellow"},{"text":"31","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #scan_caddie_league switch.data matches 635 run data remove storage switch:maps to_scan.caddie_league
execute if score #scan_caddie_league switch.data matches 635 run scoreboard players reset #scan_caddie_league switch.data

execute if score #scan_caddie_league switch.data matches 1.. run schedule function switch:maps/survival/caddie_league/scan_doors 1t


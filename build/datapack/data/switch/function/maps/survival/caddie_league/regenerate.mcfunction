
#> switch:maps/survival/caddie_league/regenerate
#
# @within	switch:maps/survival/caddie_league/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_caddie_league switch.data 1
execute if score #rg_caddie_league switch.data matches 1 run data modify storage switch:maps to_regenerate.caddie_league set value 2b
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3912 6000 -3901 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3912 6000 -3901 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3901 6000 -3889 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3901 6000 -3889 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3889 6000 -3878 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3889 6000 -3878 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3878 6000 -3867 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3878 6000 -3867 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3867 6000 -3855 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3867 6000 -3855 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3855 6000 -3844 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3855 6000 -3844 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3844 6000 -3833 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3844 6000 -3833 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3833 6000 -3821 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3833 6000 -3821 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3821 6000 -3810 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3821 6000 -3810 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3810 6000 -3799 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3810 6000 -3799 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3799 6000 -3787 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3799 6000 -3787 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3787 6000 -3776 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3787 6000 -3776 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3776 6000 -3765 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3776 6000 -3765 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3765 6000 -3753 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3765 6000 -3753 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3753 6000 -3742 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3753 6000 -3742 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3742 6000 -3731 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3742 6000 -3731 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3731 6000 -3719 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3731 6000 -3719 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3719 6000 -3708 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3719 6000 -3708 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3708 6000 -3697 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3708 6000 -3697 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3697 6000 -3685 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3697 6000 -3685 6256
execute if score #rg_caddie_league switch.data matches 1 in minecraft:overworld run forceload add -3685 6000 -3674 6256
execute if score #rg_caddie_league switch.data matches 1 in switch:game run forceload add -3685 6000 -3674 6256

execute if score #rg_caddie_league switch.data matches 1 run scoreboard players set #rg_caddie_league_y switch.data 100
execute if score #rg_caddie_league switch.data matches 1 run scoreboard players set #rg_caddie_league_mod switch.data 0
execute if score #rg_caddie_league switch.data matches ..1092 summon marker run function switch:maps/survival/caddie_league/regeneration_on_marker

execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run kill @e[type=item,x=-3793,y=100,z=6128,distance=..1000]
execute if score #rg_caddie_league switch.data matches 1093.. run data remove storage switch:maps to_regenerate.caddie_league

execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3912 6000 -3901 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3912 6000 -3901 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3901 6000 -3889 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3901 6000 -3889 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3889 6000 -3878 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3889 6000 -3878 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3878 6000 -3867 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3878 6000 -3867 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3867 6000 -3855 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3867 6000 -3855 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3855 6000 -3844 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3855 6000 -3844 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3844 6000 -3833 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3844 6000 -3833 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3833 6000 -3821 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3833 6000 -3821 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3821 6000 -3810 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3821 6000 -3810 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3810 6000 -3799 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3810 6000 -3799 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3799 6000 -3787 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3799 6000 -3787 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3787 6000 -3776 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3787 6000 -3776 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3776 6000 -3765 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3776 6000 -3765 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3765 6000 -3753 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3765 6000 -3753 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3753 6000 -3742 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3753 6000 -3742 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3742 6000 -3731 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3742 6000 -3731 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3731 6000 -3719 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3731 6000 -3719 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3719 6000 -3708 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3719 6000 -3708 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3708 6000 -3697 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3708 6000 -3697 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3697 6000 -3685 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3697 6000 -3685 6256
execute if score #rg_caddie_league switch.data matches 1093.. in minecraft:overworld run forceload remove -3685 6000 -3674 6256
execute if score #rg_caddie_league switch.data matches 1093.. in switch:game run forceload remove -3685 6000 -3674 6256

execute if score #rg_caddie_league switch.data matches 1093.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Caddie League","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"54","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_caddie_league switch.data matches 1093.. run function switch:engine/log_message/apply {message:"Map `Caddie League` just regenerated!"}

execute if score #rg_caddie_league switch.data matches 1093.. run scoreboard players reset #rg_caddie_league switch.data
execute if score #rg_caddie_league switch.data matches 1.. run schedule function switch:maps/survival/caddie_league/regenerate 1t


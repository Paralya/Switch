
scoreboard players add #rg_snow_travel switch.data 1
execute if score #rg_snow_travel switch.data matches 1 run forceload add 22896 22904 22910 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 22910 22904 22924 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 22924 22904 22937 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 22937 22904 22951 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 22951 22904 22965 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 22965 22904 22979 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 22979 22904 22993 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 22993 22904 23006 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 23006 22904 23020 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 23020 22904 23034 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 23034 22904 23048 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 23048 22904 23062 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 23062 22904 23075 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 23075 22904 23089 23109
execute if score #rg_snow_travel switch.data matches 1 run forceload add 23089 22904 23103 23109

execute if score #rg_snow_travel switch.data matches 1 run scoreboard players set #rg_snow_travel_y switch.data 0
execute if score #rg_snow_travel switch.data matches 1 run scoreboard players set #rg_snow_travel_mod switch.data 0
execute if score #rg_snow_travel switch.data matches ..1305 summon marker run function switch:maps/survival/snow_travel/regeneration_on_marker

execute if score #rg_snow_travel switch.data matches 1306.. run kill @e[type=item,x=22999,y=0,z=23006,distance=..1000]
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 22896 22904 22910 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 22910 22904 22924 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 22924 22904 22937 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 22937 22904 22951 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 22951 22904 22965 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 22965 22904 22979 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 22979 22904 22993 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 22993 22904 23006 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 23006 22904 23020 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 23020 22904 23034 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 23034 22904 23048 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 23048 22904 23062 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 23062 22904 23075 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 23075 22904 23089 23109
execute if score #rg_snow_travel switch.data matches 1306.. run forceload remove 23089 22904 23103 23109
execute if score #rg_snow_travel switch.data matches 1306.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"snow_travel","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"05","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snow_travel switch.data matches 1306.. run scoreboard players reset #rg_snow_travel switch.data

execute if score #rg_snow_travel switch.data matches 1.. run schedule function switch:maps/survival/snow_travel/regenerate 1t


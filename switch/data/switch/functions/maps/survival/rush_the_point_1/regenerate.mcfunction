
scoreboard players add #rg_rush_the_point_1 switch.data 1
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 13901 13901 13915 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 13915 13901 13929 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 13929 13901 13943 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 13943 13901 13958 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 13958 13901 13972 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 13972 13901 13986 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 13986 13901 14000 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 14000 13901 14014 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 14014 13901 14028 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 14028 13901 14042 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 14042 13901 14057 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 14057 13901 14071 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 14071 13901 14085 14099
execute if score #rg_rush_the_point_1 switch.data matches 1 run forceload add 14085 13901 14099 14099

execute if score #rg_rush_the_point_1 switch.data matches 1 run scoreboard players set #rg_rush_the_point_1_y switch.data -64
execute if score #rg_rush_the_point_1 switch.data matches 1 run scoreboard players set #rg_rush_the_point_1_mod switch.data 0
execute if score #rg_rush_the_point_1 switch.data matches ..255 summon marker run function switch:maps/survival/rush_the_point_1/regeneration_on_marker

execute if score #rg_rush_the_point_1 switch.data matches 256.. run kill @e[type=item,x=14000,y=0,z=14000,distance=..1000]
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 13901 13901 13915 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 13915 13901 13929 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 13929 13901 13943 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 13943 13901 13958 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 13958 13901 13972 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 13972 13901 13986 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 13986 13901 14000 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 14000 13901 14014 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 14014 13901 14028 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 14028 13901 14042 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 14042 13901 14057 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 14057 13901 14071 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 14071 13901 14085 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run forceload remove 14085 13901 14099 14099
execute if score #rg_rush_the_point_1 switch.data matches 256.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"rush_the_point_1","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"12","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_rush_the_point_1 switch.data matches 256.. run scoreboard players reset #rg_rush_the_point_1 switch.data

execute if score #rg_rush_the_point_1 switch.data matches 1.. run schedule function switch:maps/survival/rush_the_point_1/regenerate 1t


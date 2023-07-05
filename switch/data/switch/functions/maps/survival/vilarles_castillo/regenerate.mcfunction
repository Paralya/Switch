
scoreboard players add #rg_vilarles_castillo switch.data 1
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 51899 51853 51912 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 51912 51853 51926 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 51926 51853 51940 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 51940 51853 51953 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 51953 51853 51966 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 51966 51853 51980 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 51980 51853 51994 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 51994 51853 52007 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 52007 51853 52020 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 52020 51853 52034 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 52034 51853 52048 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 52048 51853 52061 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 52061 51853 52074 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 52074 51853 52088 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 52088 51853 52102 52071
execute if score #rg_vilarles_castillo switch.data matches 1 run forceload add 52102 51853 52115 52071

execute if score #rg_vilarles_castillo switch.data matches 1 run scoreboard players set #rg_vilarles_castillo_y switch.data -64
execute if score #rg_vilarles_castillo switch.data matches 1 run scoreboard players set #rg_vilarles_castillo_mod switch.data 0
execute if score #rg_vilarles_castillo switch.data matches ..2512 summon marker run function switch:maps/survival/vilarles_castillo/regeneration_on_marker

execute if score #rg_vilarles_castillo switch.data matches 2513.. run kill @e[type=item,x=52007,y=-64,z=51962,distance=..1000]
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 51899 51853 51912 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 51912 51853 51926 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 51926 51853 51940 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 51940 51853 51953 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 51953 51853 51966 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 51966 51853 51980 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 51980 51853 51994 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 51994 51853 52007 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 52007 51853 52020 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 52020 51853 52034 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 52034 51853 52048 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 52048 51853 52061 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 52061 51853 52074 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 52074 51853 52088 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 52088 51853 52102 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run forceload remove 52102 51853 52115 52071
execute if score #rg_vilarles_castillo switch.data matches 2513.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"vilarles_castillo","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"2","color":"gold"},{"text":"m","color":"yellow"},{"text":"05","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_vilarles_castillo switch.data matches 2513.. run data modify storage switch:main MessageToLog set value '{"text": "La map `vilarles_castillo` a fini sa régénération !"}'
execute if score #rg_vilarles_castillo switch.data matches 2513.. run function switch:engine/log_message/apply
execute if score #rg_vilarles_castillo switch.data matches 2513.. run scoreboard players reset #rg_vilarles_castillo switch.data

execute if score #rg_vilarles_castillo switch.data matches 1.. run schedule function switch:maps/survival/vilarles_castillo/regenerate 1t


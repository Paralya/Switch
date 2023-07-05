
scoreboard players add #rg_lg_medieval switch.data 1
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95000 95000 95015 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95015 95000 95029 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95029 95000 95044 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95044 95000 95058 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95058 95000 95073 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95073 95000 95088 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95088 95000 95102 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95102 95000 95117 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95117 95000 95131 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95131 95000 95146 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95146 95000 95161 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95161 95000 95175 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95175 95000 95190 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95190 95000 95204 95203
execute if score #rg_lg_medieval switch.data matches 1 run forceload add 95204 95000 95219 95203

execute if score #rg_lg_medieval switch.data matches 1 run scoreboard players set #rg_lg_medieval_y switch.data -63
execute if score #rg_lg_medieval switch.data matches 1 run scoreboard players set #rg_lg_medieval_mod switch.data 0
execute if score #rg_lg_medieval switch.data matches ..1575 summon marker run function switch:maps/survival/lg_medieval/regeneration_on_marker

execute if score #rg_lg_medieval switch.data matches 1576.. run kill @e[type=item,x=95109,y=-63,z=95101,distance=..1000]
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95000 95000 95015 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95015 95000 95029 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95029 95000 95044 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95044 95000 95058 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95058 95000 95073 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95073 95000 95088 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95088 95000 95102 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95102 95000 95117 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95117 95000 95131 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95131 95000 95146 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95146 95000 95161 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95161 95000 95175 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95175 95000 95190 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95190 95000 95204 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run forceload remove 95204 95000 95219 95203
execute if score #rg_lg_medieval switch.data matches 1576.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"lg_medieval","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"18","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_lg_medieval switch.data matches 1576.. run data modify storage switch:main MessageToLog set value '{"text": "La map `lg_medieval` a fini sa régénération !"}'
execute if score #rg_lg_medieval switch.data matches 1576.. run function switch:engine/log_message/apply
execute if score #rg_lg_medieval switch.data matches 1576.. run scoreboard players reset #rg_lg_medieval switch.data

execute if score #rg_lg_medieval switch.data matches 1.. run schedule function switch:maps/survival/lg_medieval/regenerate 1t


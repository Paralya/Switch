
scoreboard players add #rg_tnt_run_futuristic switch.data 1
execute if score #rg_tnt_run_futuristic switch.data matches 1 run forceload add 109000 109000 109030 109046
execute if score #rg_tnt_run_futuristic switch.data matches 1 run forceload add 109030 109000 109059 109046

execute if score #rg_tnt_run_futuristic switch.data matches 1 run scoreboard players set #rg_tnt_run_futuristic_y switch.data 0
execute if score #rg_tnt_run_futuristic switch.data matches 1 run scoreboard players set #rg_tnt_run_futuristic_mod switch.data 0
execute if score #rg_tnt_run_futuristic switch.data matches ..138 summon marker run function switch:maps/survival/tnt_run_futuristic/regeneration_on_marker

execute if score #rg_tnt_run_futuristic switch.data matches 139.. run kill @e[type=item,x=109029,y=0,z=109023,distance=..1000]
execute if score #rg_tnt_run_futuristic switch.data matches 139.. run forceload remove 109000 109000 109030 109046
execute if score #rg_tnt_run_futuristic switch.data matches 139.. run forceload remove 109030 109000 109059 109046
execute if score #rg_tnt_run_futuristic switch.data matches 139.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"tnt_run_futuristic","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"06","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_tnt_run_futuristic switch.data matches 139.. run scoreboard players reset #rg_tnt_run_futuristic switch.data

execute if score #rg_tnt_run_futuristic switch.data matches 1.. run schedule function switch:maps/survival/tnt_run_futuristic/regenerate 1t


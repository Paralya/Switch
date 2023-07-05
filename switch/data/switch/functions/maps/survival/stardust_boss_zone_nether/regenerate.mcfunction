
scoreboard players add #rg_stardust_boss_zone_nether switch.data 1
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run forceload add 104000 104000 104016 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run forceload add 104016 104000 104033 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run forceload add 104033 104000 104050 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run forceload add 104050 104000 104066 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run forceload add 104066 104000 104082 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run forceload add 104082 104000 104099 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run forceload add 104099 104000 104116 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run forceload add 104116 104000 104132 104165

execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #rg_stardust_boss_zone_nether_y switch.data -63
execute if score #rg_stardust_boss_zone_nether switch.data matches 1 run scoreboard players set #rg_stardust_boss_zone_nether_mod switch.data 0
execute if score #rg_stardust_boss_zone_nether switch.data matches ..1032 summon marker run function switch:maps/survival/stardust_boss_zone_nether/regeneration_on_marker

execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run kill @e[type=item,x=104066,y=-63,z=104082,distance=..1000]
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run forceload remove 104000 104000 104016 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run forceload remove 104016 104000 104033 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run forceload remove 104033 104000 104050 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run forceload remove 104050 104000 104066 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run forceload remove 104066 104000 104082 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run forceload remove 104082 104000 104099 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run forceload remove 104099 104000 104116 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run forceload remove 104116 104000 104132 104165
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"stardust_boss_zone_nether","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"51","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run data modify storage switch:main MessageToLog set value '{"text": "La map `stardust_boss_zone_nether` a fini sa régénération !"}'
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run function switch:engine/log_message/apply
execute if score #rg_stardust_boss_zone_nether switch.data matches 1033.. run scoreboard players reset #rg_stardust_boss_zone_nether switch.data

execute if score #rg_stardust_boss_zone_nether switch.data matches 1.. run schedule function switch:maps/survival/stardust_boss_zone_nether/regenerate 1t


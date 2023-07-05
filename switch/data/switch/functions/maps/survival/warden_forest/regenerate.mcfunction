
scoreboard players add #rg_warden_forest switch.data 1
execute if score #rg_warden_forest switch.data matches 1 run forceload add 9940 9940 9960 10060
execute if score #rg_warden_forest switch.data matches 1 run forceload add 9960 9940 9980 10060
execute if score #rg_warden_forest switch.data matches 1 run forceload add 9980 9940 10000 10060
execute if score #rg_warden_forest switch.data matches 1 run forceload add 10000 9940 10020 10060
execute if score #rg_warden_forest switch.data matches 1 run forceload add 10020 9940 10040 10060
execute if score #rg_warden_forest switch.data matches 1 run forceload add 10040 9940 10060 10060

execute if score #rg_warden_forest switch.data matches 1 run scoreboard players set #rg_warden_forest_y switch.data 0
execute if score #rg_warden_forest switch.data matches 1 run scoreboard players set #rg_warden_forest_mod switch.data 0
execute if score #rg_warden_forest switch.data matches ..390 summon marker run function switch:maps/survival/warden_forest/regeneration_on_marker

execute if score #rg_warden_forest switch.data matches 391.. run kill @e[type=item,x=10000,y=0,z=10000,distance=..1000]
execute if score #rg_warden_forest switch.data matches 391.. run forceload remove 9940 9940 9960 10060
execute if score #rg_warden_forest switch.data matches 391.. run forceload remove 9960 9940 9980 10060
execute if score #rg_warden_forest switch.data matches 391.. run forceload remove 9980 9940 10000 10060
execute if score #rg_warden_forest switch.data matches 391.. run forceload remove 10000 9940 10020 10060
execute if score #rg_warden_forest switch.data matches 391.. run forceload remove 10020 9940 10040 10060
execute if score #rg_warden_forest switch.data matches 391.. run forceload remove 10040 9940 10060 10060
execute if score #rg_warden_forest switch.data matches 391.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"warden_forest","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_warden_forest switch.data matches 391.. run data modify storage switch:main MessageToLog set value '{"text": "La map `warden_forest` a fini sa régénération !"}'
execute if score #rg_warden_forest switch.data matches 391.. run function switch:engine/log_message/apply
execute if score #rg_warden_forest switch.data matches 391.. run scoreboard players reset #rg_warden_forest switch.data

execute if score #rg_warden_forest switch.data matches 1.. run schedule function switch:maps/survival/warden_forest/regenerate 1t


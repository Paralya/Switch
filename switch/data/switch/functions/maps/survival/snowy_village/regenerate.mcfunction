
scoreboard players add #rg_snowy_village switch.data 1
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92000 92000 92012 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92012 92000 92025 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92025 92000 92038 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92038 92000 92050 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92050 92000 92062 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92062 92000 92075 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92075 92000 92088 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92088 92000 92100 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92100 92000 92112 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92112 92000 92125 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92125 92000 92138 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92138 92000 92150 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92150 92000 92162 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92162 92000 92175 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92175 92000 92188 92229
execute if score #rg_snowy_village switch.data matches 1 run forceload add 92188 92000 92200 92229

execute if score #rg_snowy_village switch.data matches 1 run scoreboard players set #rg_snowy_village_y switch.data 0
execute if score #rg_snowy_village switch.data matches 1 run scoreboard players set #rg_snowy_village_mod switch.data 0
execute if score #rg_snowy_village switch.data matches ..1136 summon marker run function switch:maps/survival/snowy_village/regeneration_on_marker

execute if score #rg_snowy_village switch.data matches 1137.. run kill @e[type=item,x=92100,y=0,z=92114,distance=..1000]
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92000 92000 92012 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92012 92000 92025 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92025 92000 92038 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92038 92000 92050 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92050 92000 92062 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92062 92000 92075 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92075 92000 92088 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92088 92000 92100 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92100 92000 92112 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92112 92000 92125 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92125 92000 92138 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92138 92000 92150 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92150 92000 92162 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92162 92000 92175 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92175 92000 92188 92229
execute if score #rg_snowy_village switch.data matches 1137.. run forceload remove 92188 92000 92200 92229
execute if score #rg_snowy_village switch.data matches 1137.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"snowy_village","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"56","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_snowy_village switch.data matches 1137.. run data modify storage switch:main MessageToLog set value '{"text": "La map `snowy_village` a fini sa régénération !"}'
execute if score #rg_snowy_village switch.data matches 1137.. run function switch:engine/log_message/apply
execute if score #rg_snowy_village switch.data matches 1137.. run scoreboard players reset #rg_snowy_village switch.data

execute if score #rg_snowy_village switch.data matches 1.. run schedule function switch:maps/survival/snowy_village/regenerate 1t


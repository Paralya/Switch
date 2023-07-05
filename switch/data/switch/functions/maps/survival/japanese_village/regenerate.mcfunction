
scoreboard players add #rg_japanese_village switch.data 1
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90000 90000 90010 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90010 90000 90020 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90020 90000 90031 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90031 90000 90041 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90041 90000 90051 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90051 90000 90061 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90061 90000 90071 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90071 90000 90081 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90081 90000 90092 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90092 90000 90102 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90102 90000 90112 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90112 90000 90122 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90122 90000 90132 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90132 90000 90143 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90143 90000 90153 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90153 90000 90163 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90163 90000 90173 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90173 90000 90183 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90183 90000 90193 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90193 90000 90204 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90204 90000 90214 90286
execute if score #rg_japanese_village switch.data matches 1 run forceload add 90214 90000 90224 90286

execute if score #rg_japanese_village switch.data matches 1 run scoreboard players set #rg_japanese_village_y switch.data 0
execute if score #rg_japanese_village switch.data matches 1 run scoreboard players set #rg_japanese_village_mod switch.data 0
execute if score #rg_japanese_village switch.data matches ..1804 summon marker run function switch:maps/survival/japanese_village/regeneration_on_marker

execute if score #rg_japanese_village switch.data matches 1805.. run kill @e[type=item,x=90112,y=0,z=90143,distance=..1000]
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90000 90000 90010 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90010 90000 90020 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90020 90000 90031 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90031 90000 90041 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90041 90000 90051 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90051 90000 90061 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90061 90000 90071 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90071 90000 90081 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90081 90000 90092 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90092 90000 90102 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90102 90000 90112 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90112 90000 90122 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90122 90000 90132 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90132 90000 90143 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90143 90000 90153 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90153 90000 90163 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90163 90000 90173 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90173 90000 90183 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90183 90000 90193 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90193 90000 90204 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90204 90000 90214 90286
execute if score #rg_japanese_village switch.data matches 1805.. run forceload remove 90214 90000 90224 90286
execute if score #rg_japanese_village switch.data matches 1805.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"japanese_village","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"30","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_japanese_village switch.data matches 1805.. run data modify storage switch:main MessageToLog set value '{"text": "La map `japanese_village` a fini sa régénération !"}'
execute if score #rg_japanese_village switch.data matches 1805.. run function switch:engine/log_message/apply
execute if score #rg_japanese_village switch.data matches 1805.. run scoreboard players reset #rg_japanese_village switch.data

execute if score #rg_japanese_village switch.data matches 1.. run schedule function switch:maps/survival/japanese_village/regenerate 1t


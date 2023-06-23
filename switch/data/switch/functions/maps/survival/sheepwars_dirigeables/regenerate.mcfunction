
scoreboard players add #rg_sheepwars_dirigeables switch.data 1
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100000 100000 100017 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100017 100000 100035 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100035 100000 100052 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100052 100000 100070 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100070 100000 100087 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100087 100000 100105 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100105 100000 100122 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100122 100000 100140 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100140 100000 100157 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100157 100000 100175 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run forceload add 100175 100000 100192 100158

execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_y switch.data -63
execute if score #rg_sheepwars_dirigeables switch.data matches 1 run scoreboard players set #rg_sheepwars_dirigeables_mod switch.data 0
execute if score #rg_sheepwars_dirigeables switch.data matches ..1463 summon marker run function switch:maps/survival/sheepwars_dirigeables/regeneration_on_marker

execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run kill @e[type=item,x=100096,y=-63,z=100079,distance=..1000]
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100000 100000 100017 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100017 100000 100035 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100035 100000 100052 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100052 100000 100070 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100070 100000 100087 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100087 100000 100105 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100105 100000 100122 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100122 100000 100140 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100140 100000 100157 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100157 100000 100175 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run forceload remove 100175 100000 100192 100158
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"sheepwars_dirigeables","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"1","color":"gold"},{"text":"m","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_sheepwars_dirigeables switch.data matches 1464.. run scoreboard players reset #rg_sheepwars_dirigeables switch.data

execute if score #rg_sheepwars_dirigeables switch.data matches 1.. run schedule function switch:maps/survival/sheepwars_dirigeables/regenerate 1t


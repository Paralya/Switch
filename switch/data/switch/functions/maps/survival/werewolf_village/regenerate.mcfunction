
scoreboard players add #rg_werewolf_village switch.data 1
execute if score #rg_werewolf_village switch.data matches 1 run forceload add 93000 93000 93020 93122
execute if score #rg_werewolf_village switch.data matches 1 run forceload add 93020 93000 93041 93122
execute if score #rg_werewolf_village switch.data matches 1 run forceload add 93041 93000 93061 93122
execute if score #rg_werewolf_village switch.data matches 1 run forceload add 93061 93000 93081 93122
execute if score #rg_werewolf_village switch.data matches 1 run forceload add 93081 93000 93102 93122
execute if score #rg_werewolf_village switch.data matches 1 run forceload add 93102 93000 93122 93122

execute if score #rg_werewolf_village switch.data matches 1 run scoreboard players set #rg_werewolf_village_y switch.data 0
execute if score #rg_werewolf_village switch.data matches 1 run scoreboard players set #rg_werewolf_village_mod switch.data 0
execute if score #rg_werewolf_village switch.data matches ..390 summon marker run function switch:maps/survival/werewolf_village/regeneration_on_marker

execute if score #rg_werewolf_village switch.data matches 391.. run kill @e[type=item,x=93061,y=0,z=93061,distance=..1000]
execute if score #rg_werewolf_village switch.data matches 391.. run forceload remove 93000 93000 93020 93122
execute if score #rg_werewolf_village switch.data matches 391.. run forceload remove 93020 93000 93041 93122
execute if score #rg_werewolf_village switch.data matches 391.. run forceload remove 93041 93000 93061 93122
execute if score #rg_werewolf_village switch.data matches 391.. run forceload remove 93061 93000 93081 93122
execute if score #rg_werewolf_village switch.data matches 391.. run forceload remove 93081 93000 93102 93122
execute if score #rg_werewolf_village switch.data matches 391.. run forceload remove 93102 93000 93122 93122
execute if score #rg_werewolf_village switch.data matches 391.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"werewolf_village","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"19","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_werewolf_village switch.data matches 391.. run scoreboard players reset #rg_werewolf_village switch.data

execute if score #rg_werewolf_village switch.data matches 1.. run schedule function switch:maps/survival/werewolf_village/regenerate 1t


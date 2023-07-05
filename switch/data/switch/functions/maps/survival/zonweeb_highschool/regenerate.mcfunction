
scoreboard players add #rg_zonweeb_highschool switch.data 1
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 52915 52876 52928 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 52928 52876 52940 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 52940 52876 52952 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 52952 52876 52965 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 52965 52876 52978 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 52978 52876 52990 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 52990 52876 53002 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 53002 52876 53015 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 53015 52876 53028 53094
execute if score #rg_zonweeb_highschool switch.data matches 1 run forceload add 53028 52876 53040 53094

execute if score #rg_zonweeb_highschool switch.data matches 1 run scoreboard players set #rg_zonweeb_highschool_y switch.data 0
execute if score #rg_zonweeb_highschool switch.data matches 1 run scoreboard players set #rg_zonweeb_highschool_mod switch.data 0
execute if score #rg_zonweeb_highschool switch.data matches ..580 summon marker run function switch:maps/survival/zonweeb_highschool/regeneration_on_marker

execute if score #rg_zonweeb_highschool switch.data matches 581.. run kill @e[type=item,x=52977,y=0,z=52985,distance=..1000]
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 52915 52876 52928 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 52928 52876 52940 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 52940 52876 52952 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 52952 52876 52965 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 52965 52876 52978 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 52978 52876 52990 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 52990 52876 53002 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 53002 52876 53015 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 53015 52876 53028 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run forceload remove 53028 52876 53040 53094
execute if score #rg_zonweeb_highschool switch.data matches 581.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"zonweeb_highschool","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"29","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_zonweeb_highschool switch.data matches 581.. run data modify storage switch:main MessageToLog set value '{"text": "La map `zonweeb_highschool` a fini sa regeneration !"}'
execute if score #rg_zonweeb_highschool switch.data matches 581.. run function switch:engine/log_message/apply
execute if score #rg_zonweeb_highschool switch.data matches 581.. run scoreboard players reset #rg_zonweeb_highschool switch.data

execute if score #rg_zonweeb_highschool switch.data matches 1.. run schedule function switch:maps/survival/zonweeb_highschool/regenerate 1t


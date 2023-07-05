
scoreboard players add #rg_find_the_wool switch.data 1
execute if score #rg_find_the_wool switch.data matches 1 run forceload add 66000 66000 66021 66080
execute if score #rg_find_the_wool switch.data matches 1 run forceload add 66021 66000 66042 66080
execute if score #rg_find_the_wool switch.data matches 1 run forceload add 66042 66000 66064 66080
execute if score #rg_find_the_wool switch.data matches 1 run forceload add 66064 66000 66085 66080

execute if score #rg_find_the_wool switch.data matches 1 run scoreboard players set #rg_find_the_wool_y switch.data 0
execute if score #rg_find_the_wool switch.data matches 1 run scoreboard players set #rg_find_the_wool_mod switch.data 0
execute if score #rg_find_the_wool switch.data matches ..228 summon marker run function switch:maps/survival/find_the_wool/regeneration_on_marker

execute if score #rg_find_the_wool switch.data matches 229.. run kill @e[type=item,x=66042,y=0,z=66040,distance=..1000]
execute if score #rg_find_the_wool switch.data matches 229.. run forceload remove 66000 66000 66021 66080
execute if score #rg_find_the_wool switch.data matches 229.. run forceload remove 66021 66000 66042 66080
execute if score #rg_find_the_wool switch.data matches 229.. run forceload remove 66042 66000 66064 66080
execute if score #rg_find_the_wool switch.data matches 229.. run forceload remove 66064 66000 66085 66080
execute if score #rg_find_the_wool switch.data matches 229.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"find_the_wool","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_find_the_wool switch.data matches 229.. run data modify storage switch:main MessageToLog set value '{"text": "La map `find_the_wool` a fini sa regeneration !"}'
execute if score #rg_find_the_wool switch.data matches 229.. run function switch:engine/log_message/apply
execute if score #rg_find_the_wool switch.data matches 229.. run scoreboard players reset #rg_find_the_wool switch.data

execute if score #rg_find_the_wool switch.data matches 1.. run schedule function switch:maps/survival/find_the_wool/regenerate 1t


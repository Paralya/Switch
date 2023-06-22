
scoreboard players add #rg_zone_51 switch.data 1
execute if score #rg_zone_51 switch.data matches 1 run forceload add 1947 1937 1965 2063
execute if score #rg_zone_51 switch.data matches 1 run forceload add 1965 1937 1983 2063
execute if score #rg_zone_51 switch.data matches 1 run forceload add 1983 1937 2001 2063
execute if score #rg_zone_51 switch.data matches 1 run forceload add 2001 1937 2019 2063
execute if score #rg_zone_51 switch.data matches 1 run forceload add 2019 1937 2037 2063
execute if score #rg_zone_51 switch.data matches 1 run forceload add 2037 1937 2055 2063

execute if score #rg_zone_51 switch.data matches 1 run scoreboard players set #rg_zone_51_y switch.data -64
execute if score #rg_zone_51 switch.data matches 1 run scoreboard players set #rg_zone_51_mod switch.data 0
execute if score #rg_zone_51 switch.data matches ..420 summon marker run function switch:maps/survival/zone_51/regeneration_on_marker

execute if score #rg_zone_51 switch.data matches 421.. run kill @e[type=item,x=2001,y=0,z=2000,distance=..1000]
execute if score #rg_zone_51 switch.data matches 421.. run forceload remove 1947 1937 1965 2063
execute if score #rg_zone_51 switch.data matches 421.. run forceload remove 1965 1937 1983 2063
execute if score #rg_zone_51 switch.data matches 421.. run forceload remove 1983 1937 2001 2063
execute if score #rg_zone_51 switch.data matches 421.. run forceload remove 2001 1937 2019 2063
execute if score #rg_zone_51 switch.data matches 421.. run forceload remove 2019 1937 2037 2063
execute if score #rg_zone_51 switch.data matches 421.. run forceload remove 2037 1937 2055 2063
execute if score #rg_zone_51 switch.data matches 421.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"zone_51","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"21","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_zone_51 switch.data matches 421.. run scoreboard players reset #rg_zone_51 switch.data

execute if score #rg_zone_51 switch.data matches 1.. run schedule function switch:maps/survival/zone_51/regenerate 1t


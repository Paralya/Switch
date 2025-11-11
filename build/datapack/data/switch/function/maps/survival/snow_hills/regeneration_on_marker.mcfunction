
#> switch:maps/survival/snow_hills/regeneration_on_marker
#
# @within	switch:maps/survival/snow_hills/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snow_hills_y switch.data

execute if score #rg_snow_hills_mod switch.data matches 0 at @s in switch:game run particle cloud 50008 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 0 at @s run clone from minecraft:overworld 50000 ~ 50000 50016 ~ 50185 to switch:game 50000 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 1 at @s in switch:game run particle cloud 50024 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 1 at @s run clone from minecraft:overworld 50016 ~ 50000 50032 ~ 50185 to switch:game 50016 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 2 at @s in switch:game run particle cloud 50040 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 2 at @s run clone from minecraft:overworld 50032 ~ 50000 50048 ~ 50185 to switch:game 50032 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 3 at @s in switch:game run particle cloud 50056 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 3 at @s run clone from minecraft:overworld 50048 ~ 50000 50064 ~ 50185 to switch:game 50048 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 4 at @s in switch:game run particle cloud 50072 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 4 at @s run clone from minecraft:overworld 50064 ~ 50000 50080 ~ 50185 to switch:game 50064 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 5 at @s in switch:game run particle cloud 50088 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 5 at @s run clone from minecraft:overworld 50080 ~ 50000 50096 ~ 50185 to switch:game 50080 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 6 at @s in switch:game run particle cloud 50104 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 6 at @s run clone from minecraft:overworld 50096 ~ 50000 50112 ~ 50185 to switch:game 50096 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 7 at @s in switch:game run particle cloud 50119 ~0.5 50092 7 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 7 at @s run clone from minecraft:overworld 50112 ~ 50000 50127 ~ 50185 to switch:game 50112 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 8 at @s in switch:game run particle cloud 50135 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 8 at @s run clone from minecraft:overworld 50127 ~ 50000 50143 ~ 50185 to switch:game 50127 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 9 at @s in switch:game run particle cloud 50151 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 9 at @s run clone from minecraft:overworld 50143 ~ 50000 50159 ~ 50185 to switch:game 50143 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 10 at @s in switch:game run particle cloud 50167 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 10 at @s run clone from minecraft:overworld 50159 ~ 50000 50175 ~ 50185 to switch:game 50159 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 11 at @s in switch:game run particle cloud 50183 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 11 at @s run clone from minecraft:overworld 50175 ~ 50000 50191 ~ 50185 to switch:game 50175 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 12 at @s in switch:game run particle cloud 50199 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 12 at @s run clone from minecraft:overworld 50191 ~ 50000 50207 ~ 50185 to switch:game 50191 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 13 at @s in switch:game run particle cloud 50215 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 13 at @s run clone from minecraft:overworld 50207 ~ 50000 50223 ~ 50185 to switch:game 50207 ~0 50000 strict replace force

execute if score #rg_snow_hills_mod switch.data matches 14 at @s in switch:game run particle cloud 50231 ~0.5 50092 8 0 46 0 250 force
execute if score #rg_snow_hills_mod switch.data matches 14 at @s run clone from minecraft:overworld 50223 ~ 50000 50239 ~ 50185 to switch:game 50223 ~0 50000 strict replace force

scoreboard players add #rg_snow_hills_mod switch.data 1
execute if score #rg_snow_hills_mod switch.data matches 15 in switch:game run kill @e[type=item,x=50119,y=100,z=50092,distance=..1000]
execute if score #rg_snow_hills_mod switch.data matches 15 run scoreboard players add #rg_snow_hills_y switch.data 1
execute if score #rg_snow_hills_mod switch.data matches 15 run scoreboard players set #rg_snow_hills_mod switch.data 0

kill @s



#> switch:maps/survival/end_factory/regeneration_on_marker
#
# @within	switch:maps/survival/end_factory/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_end_factory_y switch.data

execute if score #rg_end_factory_mod switch.data matches 0 at @s in switch:game run particle cloud 108010 ~163.5 108064 10 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 0 at @s run clone from minecraft:overworld 108000 ~ 108000 108020 ~ 108129 to switch:game 108000 ~163 108000 replace force

execute if score #rg_end_factory_mod switch.data matches 1 at @s in switch:game run particle cloud 108030 ~163.5 108064 10 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 1 at @s run clone from minecraft:overworld 108020 ~ 108000 108040 ~ 108129 to switch:game 108020 ~163 108000 replace force

execute if score #rg_end_factory_mod switch.data matches 2 at @s in switch:game run particle cloud 108049 ~163.5 108064 9 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 2 at @s run clone from minecraft:overworld 108040 ~ 108000 108059 ~ 108129 to switch:game 108040 ~163 108000 replace force

execute if score #rg_end_factory_mod switch.data matches 3 at @s in switch:game run particle cloud 108069 ~163.5 108064 10 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 3 at @s run clone from minecraft:overworld 108059 ~ 108000 108079 ~ 108129 to switch:game 108059 ~163 108000 replace force

execute if score #rg_end_factory_mod switch.data matches 4 at @s in switch:game run particle cloud 108089 ~163.5 108064 10 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 4 at @s run clone from minecraft:overworld 108079 ~ 108000 108099 ~ 108129 to switch:game 108079 ~163 108000 replace force

execute if score #rg_end_factory_mod switch.data matches 5 at @s in switch:game run particle cloud 108109 ~163.5 108064 10 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 5 at @s run clone from minecraft:overworld 108099 ~ 108000 108119 ~ 108129 to switch:game 108099 ~163 108000 replace force

execute if score #rg_end_factory_mod switch.data matches 6 at @s in switch:game run particle cloud 108128 ~163.5 108064 9 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 6 at @s run clone from minecraft:overworld 108119 ~ 108000 108138 ~ 108129 to switch:game 108119 ~163 108000 replace force

execute if score #rg_end_factory_mod switch.data matches 7 at @s in switch:game run particle cloud 108148 ~163.5 108064 10 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 7 at @s run clone from minecraft:overworld 108138 ~ 108000 108158 ~ 108129 to switch:game 108138 ~163 108000 replace force

execute if score #rg_end_factory_mod switch.data matches 8 at @s in switch:game run particle cloud 108168 ~163.5 108064 10 0 32 0 250 force
execute if score #rg_end_factory_mod switch.data matches 8 at @s run clone from minecraft:overworld 108158 ~ 108000 108178 ~ 108129 to switch:game 108158 ~163 108000 replace force

scoreboard players add #rg_end_factory_mod switch.data 1
execute if score #rg_end_factory_mod switch.data matches 9 in switch:game run kill @e[type=item,x=108089,y=-63,z=108064,distance=..1000]
execute if score #rg_end_factory_mod switch.data matches 9 run scoreboard players add #rg_end_factory_y switch.data 1
execute if score #rg_end_factory_mod switch.data matches 9 run scoreboard players set #rg_end_factory_mod switch.data 0

kill @s


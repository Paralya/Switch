
#> switch:maps/survival/stardust_boss_zone_nether/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_boss_zone_nether/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_boss_zone_nether_y switch.data

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 0 at @s in switch:game run particle cloud 104008 ~163.5 104082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 0 at @s run clone from minecraft:overworld 104000 ~ 104000 104016 ~ 104165 to switch:game 104000 ~163 104000 replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 1 at @s in switch:game run particle cloud 104024 ~163.5 104082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 1 at @s run clone from minecraft:overworld 104016 ~ 104000 104033 ~ 104165 to switch:game 104016 ~163 104000 replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 2 at @s in switch:game run particle cloud 104041 ~163.5 104082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 2 at @s run clone from minecraft:overworld 104033 ~ 104000 104050 ~ 104165 to switch:game 104033 ~163 104000 replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 3 at @s in switch:game run particle cloud 104058 ~163.5 104082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 3 at @s run clone from minecraft:overworld 104050 ~ 104000 104066 ~ 104165 to switch:game 104050 ~163 104000 replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 4 at @s in switch:game run particle cloud 104074 ~163.5 104082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 4 at @s run clone from minecraft:overworld 104066 ~ 104000 104082 ~ 104165 to switch:game 104066 ~163 104000 replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 5 at @s in switch:game run particle cloud 104090 ~163.5 104082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 5 at @s run clone from minecraft:overworld 104082 ~ 104000 104099 ~ 104165 to switch:game 104082 ~163 104000 replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 6 at @s in switch:game run particle cloud 104107 ~163.5 104082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 6 at @s run clone from minecraft:overworld 104099 ~ 104000 104116 ~ 104165 to switch:game 104099 ~163 104000 replace force

execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 7 at @s in switch:game run particle cloud 104124 ~163.5 104082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 7 at @s run clone from minecraft:overworld 104116 ~ 104000 104132 ~ 104165 to switch:game 104116 ~163 104000 replace force

scoreboard players add #rg_stardust_boss_zone_nether_mod switch.data 1
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 8 in switch:game run kill @e[type=item,x=104066,y=-63,z=104082,distance=..1000]
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 8 run scoreboard players add #rg_stardust_boss_zone_nether_y switch.data 1
execute if score #rg_stardust_boss_zone_nether_mod switch.data matches 8 run scoreboard players set #rg_stardust_boss_zone_nether_mod switch.data 0

kill @s


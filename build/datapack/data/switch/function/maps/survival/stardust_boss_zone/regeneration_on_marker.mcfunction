
#> switch:maps/survival/stardust_boss_zone/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_boss_zone/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_boss_zone_y switch.data

execute if score #rg_stardust_boss_zone_mod switch.data matches 0 at @s in switch:game run particle cloud 103008 ~0.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 0 at @s run clone from minecraft:overworld 103000 ~ 103000 103016 ~ 103165 to switch:game 103000 ~0 103000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 1 at @s in switch:game run particle cloud 103024 ~0.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 1 at @s run clone from minecraft:overworld 103016 ~ 103000 103033 ~ 103165 to switch:game 103016 ~0 103000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 2 at @s in switch:game run particle cloud 103041 ~0.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 2 at @s run clone from minecraft:overworld 103033 ~ 103000 103050 ~ 103165 to switch:game 103033 ~0 103000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 3 at @s in switch:game run particle cloud 103058 ~0.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 3 at @s run clone from minecraft:overworld 103050 ~ 103000 103066 ~ 103165 to switch:game 103050 ~0 103000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 4 at @s in switch:game run particle cloud 103074 ~0.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 4 at @s run clone from minecraft:overworld 103066 ~ 103000 103082 ~ 103165 to switch:game 103066 ~0 103000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 5 at @s in switch:game run particle cloud 103090 ~0.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 5 at @s run clone from minecraft:overworld 103082 ~ 103000 103099 ~ 103165 to switch:game 103082 ~0 103000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 6 at @s in switch:game run particle cloud 103107 ~0.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 6 at @s run clone from minecraft:overworld 103099 ~ 103000 103116 ~ 103165 to switch:game 103099 ~0 103000 strict replace force

execute if score #rg_stardust_boss_zone_mod switch.data matches 7 at @s in switch:game run particle cloud 103124 ~0.5 103082 8 0 41 0 250 force
execute if score #rg_stardust_boss_zone_mod switch.data matches 7 at @s run clone from minecraft:overworld 103116 ~ 103000 103132 ~ 103165 to switch:game 103116 ~0 103000 strict replace force

scoreboard players add #rg_stardust_boss_zone_mod switch.data 1
execute if score #rg_stardust_boss_zone_mod switch.data matches 8 in switch:game run kill @e[type=item,x=103066,y=100,z=103082,distance=..1000]
execute if score #rg_stardust_boss_zone_mod switch.data matches 8 run scoreboard players add #rg_stardust_boss_zone_y switch.data 1
execute if score #rg_stardust_boss_zone_mod switch.data matches 8 run scoreboard players set #rg_stardust_boss_zone_mod switch.data 0

kill @s


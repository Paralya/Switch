
#> switch:maps/survival/warden_forest/regeneration_on_marker
#
# @within	switch:maps/survival/warden_forest/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_warden_forest_y switch.data

execute if score #rg_warden_forest_mod switch.data matches 0 at @s in switch:game run particle cloud 10009 ~0.5 10066 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ 10000 10019 ~ 10132 to switch:game 10000 ~0 10000 replace force

execute if score #rg_warden_forest_mod switch.data matches 1 at @s in switch:game run particle cloud 10028 ~0.5 10066 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 1 at @s run clone from minecraft:overworld 10019 ~ 10000 10038 ~ 10132 to switch:game 10019 ~0 10000 replace force

execute if score #rg_warden_forest_mod switch.data matches 2 at @s in switch:game run particle cloud 10047 ~0.5 10066 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 2 at @s run clone from minecraft:overworld 10038 ~ 10000 10057 ~ 10132 to switch:game 10038 ~0 10000 replace force

execute if score #rg_warden_forest_mod switch.data matches 3 at @s in switch:game run particle cloud 10066 ~0.5 10066 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 3 at @s run clone from minecraft:overworld 10057 ~ 10000 10075 ~ 10132 to switch:game 10057 ~0 10000 replace force

execute if score #rg_warden_forest_mod switch.data matches 4 at @s in switch:game run particle cloud 10084 ~0.5 10066 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 4 at @s run clone from minecraft:overworld 10075 ~ 10000 10094 ~ 10132 to switch:game 10075 ~0 10000 replace force

execute if score #rg_warden_forest_mod switch.data matches 5 at @s in switch:game run particle cloud 10103 ~0.5 10066 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 5 at @s run clone from minecraft:overworld 10094 ~ 10000 10113 ~ 10132 to switch:game 10094 ~0 10000 replace force

execute if score #rg_warden_forest_mod switch.data matches 6 at @s in switch:game run particle cloud 10122 ~0.5 10066 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 6 at @s run clone from minecraft:overworld 10113 ~ 10000 10132 ~ 10132 to switch:game 10113 ~0 10000 replace force

scoreboard players add #rg_warden_forest_mod switch.data 1
execute if score #rg_warden_forest_mod switch.data matches 7 in switch:game run kill @e[type=item,x=10066,y=100,z=10066,distance=..1000]
execute if score #rg_warden_forest_mod switch.data matches 7 run scoreboard players add #rg_warden_forest_y switch.data 1
execute if score #rg_warden_forest_mod switch.data matches 7 run scoreboard players set #rg_warden_forest_mod switch.data 0

kill @s


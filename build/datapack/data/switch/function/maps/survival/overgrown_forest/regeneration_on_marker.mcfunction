
#> switch:maps/survival/overgrown_forest/regeneration_on_marker
#
# @within	switch:maps/survival/overgrown_forest/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_overgrown_forest_y switch.data

execute if score #rg_overgrown_forest_mod switch.data matches 0 at @s in switch:game run particle cloud 139011 ~100.5 139051 11 0 25 0 250 force
execute if score #rg_overgrown_forest_mod switch.data matches 0 at @s run clone from minecraft:overworld 139000 ~ 139000 139023 ~ 139103 to switch:game 139000 ~100 139000 replace force

execute if score #rg_overgrown_forest_mod switch.data matches 1 at @s in switch:game run particle cloud 139034 ~100.5 139051 11 0 25 0 250 force
execute if score #rg_overgrown_forest_mod switch.data matches 1 at @s run clone from minecraft:overworld 139023 ~ 139000 139046 ~ 139103 to switch:game 139023 ~100 139000 replace force

execute if score #rg_overgrown_forest_mod switch.data matches 2 at @s in switch:game run particle cloud 139057 ~100.5 139051 11 0 25 0 250 force
execute if score #rg_overgrown_forest_mod switch.data matches 2 at @s run clone from minecraft:overworld 139046 ~ 139000 139068 ~ 139103 to switch:game 139046 ~100 139000 replace force

execute if score #rg_overgrown_forest_mod switch.data matches 3 at @s in switch:game run particle cloud 139079 ~100.5 139051 11 0 25 0 250 force
execute if score #rg_overgrown_forest_mod switch.data matches 3 at @s run clone from minecraft:overworld 139068 ~ 139000 139091 ~ 139103 to switch:game 139068 ~100 139000 replace force

scoreboard players add #rg_overgrown_forest_mod switch.data 1
execute if score #rg_overgrown_forest_mod switch.data matches 4 in switch:game run kill @e[type=item,x=139045,y=0,z=139051,distance=..1000]
execute if score #rg_overgrown_forest_mod switch.data matches 4 run scoreboard players add #rg_overgrown_forest_y switch.data 1
execute if score #rg_overgrown_forest_mod switch.data matches 4 run scoreboard players set #rg_overgrown_forest_mod switch.data 0

kill @s


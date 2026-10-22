
#> switch:maps/survival/warden_forest/regeneration_on_marker
#
# @within	switch:maps/survival/warden_forest/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_warden_forest_y switch.data

execute if score #rg_warden_forest_mod switch.data matches 0 at @s in switch:game run particle cloud 4022 ~0.5 2079 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 0 at @s run clone from minecraft:overworld 4013 ~ 2013 4032 ~ 2145 to switch:game 4013 ~0 2013 strict replace force

execute if score #rg_warden_forest_mod switch.data matches 1 at @s in switch:game run particle cloud 4041 ~0.5 2079 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 1 at @s run clone from minecraft:overworld 4032 ~ 2013 4051 ~ 2145 to switch:game 4032 ~0 2013 strict replace force

execute if score #rg_warden_forest_mod switch.data matches 2 at @s in switch:game run particle cloud 4060 ~0.5 2079 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 2 at @s run clone from minecraft:overworld 4051 ~ 2013 4070 ~ 2145 to switch:game 4051 ~0 2013 strict replace force

execute if score #rg_warden_forest_mod switch.data matches 3 at @s in switch:game run particle cloud 4079 ~0.5 2079 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 3 at @s run clone from minecraft:overworld 4070 ~ 2013 4088 ~ 2145 to switch:game 4070 ~0 2013 strict replace force

execute if score #rg_warden_forest_mod switch.data matches 4 at @s in switch:game run particle cloud 4097 ~0.5 2079 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 4 at @s run clone from minecraft:overworld 4088 ~ 2013 4107 ~ 2145 to switch:game 4088 ~0 2013 strict replace force

execute if score #rg_warden_forest_mod switch.data matches 5 at @s in switch:game run particle cloud 4116 ~0.5 2079 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 5 at @s run clone from minecraft:overworld 4107 ~ 2013 4126 ~ 2145 to switch:game 4107 ~0 2013 strict replace force

execute if score #rg_warden_forest_mod switch.data matches 6 at @s in switch:game run particle cloud 4135 ~0.5 2079 9 0 33 0 250 force
execute if score #rg_warden_forest_mod switch.data matches 6 at @s run clone from minecraft:overworld 4126 ~ 2013 4145 ~ 2145 to switch:game 4126 ~0 2013 strict replace force

scoreboard players add #rg_warden_forest_mod switch.data 1
execute if score #rg_warden_forest_mod switch.data matches 7 in switch:game run kill @e[type=item,x=4079,y=100,z=2079,distance=..1000]
execute if score #rg_warden_forest_mod switch.data matches 7 run scoreboard players add #rg_warden_forest_y switch.data 1
execute if score #rg_warden_forest_mod switch.data matches 7 run scoreboard players set #rg_warden_forest_mod switch.data 0

kill @s


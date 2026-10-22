
#> switch:maps/survival/survival_boat/regeneration_on_marker
#
# @within	switch:maps/survival/survival_boat/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_survival_boat_y switch.data

execute if score #rg_survival_boat_mod switch.data matches 0 at @s in switch:game run particle cloud -7990 ~0.5 6051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ 6000 -7979 ~ 6102 to switch:game -8000 ~0 6000 strict replace force

execute if score #rg_survival_boat_mod switch.data matches 1 at @s in switch:game run particle cloud -7969 ~0.5 6051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 1 at @s run clone from minecraft:overworld -7979 ~ 6000 -7958 ~ 6102 to switch:game -7979 ~0 6000 strict replace force

execute if score #rg_survival_boat_mod switch.data matches 2 at @s in switch:game run particle cloud -7948 ~0.5 6051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 2 at @s run clone from minecraft:overworld -7958 ~ 6000 -7937 ~ 6102 to switch:game -7958 ~0 6000 strict replace force

execute if score #rg_survival_boat_mod switch.data matches 3 at @s in switch:game run particle cloud -7927 ~0.5 6051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 3 at @s run clone from minecraft:overworld -7937 ~ 6000 -7916 ~ 6102 to switch:game -7937 ~0 6000 strict replace force

execute if score #rg_survival_boat_mod switch.data matches 4 at @s in switch:game run particle cloud -7906 ~0.5 6051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 4 at @s run clone from minecraft:overworld -7916 ~ 6000 -7895 ~ 6102 to switch:game -7916 ~0 6000 strict replace force

execute if score #rg_survival_boat_mod switch.data matches 5 at @s in switch:game run particle cloud -7885 ~0.5 6051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 5 at @s run clone from minecraft:overworld -7895 ~ 6000 -7874 ~ 6102 to switch:game -7895 ~0 6000 strict replace force

scoreboard players add #rg_survival_boat_mod switch.data 1
execute if score #rg_survival_boat_mod switch.data matches 6 in switch:game run kill @e[type=item,x=-7937,y=100,z=6051,distance=..1000]
execute if score #rg_survival_boat_mod switch.data matches 6 run scoreboard players add #rg_survival_boat_y switch.data 1
execute if score #rg_survival_boat_mod switch.data matches 6 run scoreboard players set #rg_survival_boat_mod switch.data 0

kill @s


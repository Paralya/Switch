
#> switch:maps/survival/survival_boat/regeneration_on_marker
#
# @within	switch:maps/survival/survival_boat/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_survival_boat_y switch.data

execute if score #rg_survival_boat_mod switch.data matches 0 at @s in switch:game run particle cloud 79010 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 0 at @s run clone from minecraft:overworld 79000 ~ 79000 79021 ~ 79102 to switch:game 79000 ~100 79000 replace force

execute if score #rg_survival_boat_mod switch.data matches 1 at @s in switch:game run particle cloud 79031 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 1 at @s run clone from minecraft:overworld 79021 ~ 79000 79042 ~ 79102 to switch:game 79021 ~100 79000 replace force

execute if score #rg_survival_boat_mod switch.data matches 2 at @s in switch:game run particle cloud 79052 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 2 at @s run clone from minecraft:overworld 79042 ~ 79000 79063 ~ 79102 to switch:game 79042 ~100 79000 replace force

execute if score #rg_survival_boat_mod switch.data matches 3 at @s in switch:game run particle cloud 79073 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 3 at @s run clone from minecraft:overworld 79063 ~ 79000 79084 ~ 79102 to switch:game 79063 ~100 79000 replace force

execute if score #rg_survival_boat_mod switch.data matches 4 at @s in switch:game run particle cloud 79094 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 4 at @s run clone from minecraft:overworld 79084 ~ 79000 79105 ~ 79102 to switch:game 79084 ~100 79000 replace force

execute if score #rg_survival_boat_mod switch.data matches 5 at @s in switch:game run particle cloud 79115 ~100.5 79051 10 0 25 0 250 force
execute if score #rg_survival_boat_mod switch.data matches 5 at @s run clone from minecraft:overworld 79105 ~ 79000 79126 ~ 79102 to switch:game 79105 ~100 79000 replace force

scoreboard players add #rg_survival_boat_mod switch.data 1
execute if score #rg_survival_boat_mod switch.data matches 6 in switch:game run kill @e[type=item,x=79063,y=0,z=79051,distance=..1000]
execute if score #rg_survival_boat_mod switch.data matches 6 run scoreboard players add #rg_survival_boat_y switch.data 1
execute if score #rg_survival_boat_mod switch.data matches 6 run scoreboard players set #rg_survival_boat_mod switch.data 0

kill @s


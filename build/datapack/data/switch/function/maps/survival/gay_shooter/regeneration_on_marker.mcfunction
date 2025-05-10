
#> switch:maps/survival/gay_shooter/regeneration_on_marker
#
# @within	switch:maps/survival/gay_shooter/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gay_shooter_y switch.data

execute if score #rg_gay_shooter_mod switch.data matches 0 at @s in switch:game run particle cloud 114005 ~10.5 114021 11 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 0 at @s run clone from minecraft:overworld 113994 ~ 113992 114017 ~ 114050 to switch:game 113994 ~10 113992 replace force

execute if score #rg_gay_shooter_mod switch.data matches 1 at @s in switch:game run particle cloud 114029 ~10.5 114021 12 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 1 at @s run clone from minecraft:overworld 114017 ~ 113992 114041 ~ 114050 to switch:game 114017 ~10 113992 replace force

execute if score #rg_gay_shooter_mod switch.data matches 2 at @s in switch:game run particle cloud 114052 ~10.5 114021 11 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 2 at @s run clone from minecraft:overworld 114041 ~ 113992 114064 ~ 114050 to switch:game 114041 ~10 113992 replace force

scoreboard players add #rg_gay_shooter_mod switch.data 1
execute if score #rg_gay_shooter_mod switch.data matches 3 in switch:game run kill @e[type=item,x=114029,y=90,z=114021,distance=..1000]
execute if score #rg_gay_shooter_mod switch.data matches 3 run scoreboard players add #rg_gay_shooter_y switch.data 1
execute if score #rg_gay_shooter_mod switch.data matches 3 run scoreboard players set #rg_gay_shooter_mod switch.data 0

kill @s


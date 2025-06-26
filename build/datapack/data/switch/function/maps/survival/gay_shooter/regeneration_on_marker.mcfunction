
#> switch:maps/survival/gay_shooter/regeneration_on_marker
#
# @within	switch:maps/survival/gay_shooter/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gay_shooter_y switch.data

execute if score #rg_gay_shooter_mod switch.data matches 0 at @s in switch:game run particle cloud 114011 ~0.5 114029 11 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 0 at @s run clone from minecraft:overworld 114000 ~ 114000 114023 ~ 114058 to switch:game 114000 ~0 114000 replace force

execute if score #rg_gay_shooter_mod switch.data matches 1 at @s in switch:game run particle cloud 114035 ~0.5 114029 12 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 1 at @s run clone from minecraft:overworld 114023 ~ 114000 114047 ~ 114058 to switch:game 114023 ~0 114000 replace force

execute if score #rg_gay_shooter_mod switch.data matches 2 at @s in switch:game run particle cloud 114058 ~0.5 114029 11 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 2 at @s run clone from minecraft:overworld 114047 ~ 114000 114070 ~ 114058 to switch:game 114047 ~0 114000 replace force

scoreboard players add #rg_gay_shooter_mod switch.data 1
execute if score #rg_gay_shooter_mod switch.data matches 3 in switch:game run kill @e[type=item,x=114035,y=100,z=114029,distance=..1000]
execute if score #rg_gay_shooter_mod switch.data matches 3 run scoreboard players add #rg_gay_shooter_y switch.data 1
execute if score #rg_gay_shooter_mod switch.data matches 3 run scoreboard players set #rg_gay_shooter_mod switch.data 0

kill @s


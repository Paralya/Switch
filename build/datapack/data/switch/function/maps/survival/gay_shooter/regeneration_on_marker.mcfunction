
#> switch:maps/survival/gay_shooter/regeneration_on_marker
#
# @within	switch:maps/survival/gay_shooter/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_gay_shooter_y switch.data

execute if score #rg_gay_shooter_mod switch.data matches 0 at @s in switch:game run particle cloud 10011 ~0.5 -9971 11 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ -10000 10023 ~ -9942 to switch:game 10000 ~0 -10000 strict replace force

execute if score #rg_gay_shooter_mod switch.data matches 1 at @s in switch:game run particle cloud 10035 ~0.5 -9971 12 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 1 at @s run clone from minecraft:overworld 10023 ~ -10000 10047 ~ -9942 to switch:game 10023 ~0 -10000 strict replace force

execute if score #rg_gay_shooter_mod switch.data matches 2 at @s in switch:game run particle cloud 10058 ~0.5 -9971 11 0 14 0 250 force
execute if score #rg_gay_shooter_mod switch.data matches 2 at @s run clone from minecraft:overworld 10047 ~ -10000 10070 ~ -9942 to switch:game 10047 ~0 -10000 strict replace force

scoreboard players add #rg_gay_shooter_mod switch.data 1
execute if score #rg_gay_shooter_mod switch.data matches 3 in switch:game run kill @e[type=item,x=10035,y=100,z=-9971,distance=..1000]
execute if score #rg_gay_shooter_mod switch.data matches 3 run scoreboard players add #rg_gay_shooter_y switch.data 1
execute if score #rg_gay_shooter_mod switch.data matches 3 run scoreboard players set #rg_gay_shooter_mod switch.data 0

kill @s


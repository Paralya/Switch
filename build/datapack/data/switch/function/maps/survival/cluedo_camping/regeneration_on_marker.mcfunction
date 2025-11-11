
#> switch:maps/survival/cluedo_camping/regeneration_on_marker
#
# @within	switch:maps/survival/cluedo_camping/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_cluedo_camping_y switch.data

execute if score #rg_cluedo_camping_mod switch.data matches 0 at @s in switch:game run particle cloud 54011 ~0.5 54047 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 0 at @s run clone from minecraft:overworld 54000 ~ 54000 54022 ~ 54094 to switch:game 54000 ~0 54000 strict replace force

execute if score #rg_cluedo_camping_mod switch.data matches 1 at @s in switch:game run particle cloud 54033 ~0.5 54047 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 1 at @s run clone from minecraft:overworld 54022 ~ 54000 54045 ~ 54094 to switch:game 54022 ~0 54000 strict replace force

execute if score #rg_cluedo_camping_mod switch.data matches 2 at @s in switch:game run particle cloud 54056 ~0.5 54047 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 2 at @s run clone from minecraft:overworld 54045 ~ 54000 54067 ~ 54094 to switch:game 54045 ~0 54000 strict replace force

execute if score #rg_cluedo_camping_mod switch.data matches 3 at @s in switch:game run particle cloud 54078 ~0.5 54047 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 3 at @s run clone from minecraft:overworld 54067 ~ 54000 54090 ~ 54094 to switch:game 54067 ~0 54000 strict replace force

execute if score #rg_cluedo_camping_mod switch.data matches 4 at @s in switch:game run particle cloud 54101 ~0.5 54047 11 0 23 0 250 force
execute if score #rg_cluedo_camping_mod switch.data matches 4 at @s run clone from minecraft:overworld 54090 ~ 54000 54112 ~ 54094 to switch:game 54090 ~0 54000 strict replace force

scoreboard players add #rg_cluedo_camping_mod switch.data 1
execute if score #rg_cluedo_camping_mod switch.data matches 5 in switch:game run kill @e[type=item,x=54056,y=100,z=54047,distance=..1000]
execute if score #rg_cluedo_camping_mod switch.data matches 5 run scoreboard players add #rg_cluedo_camping_y switch.data 1
execute if score #rg_cluedo_camping_mod switch.data matches 5 run scoreboard players set #rg_cluedo_camping_mod switch.data 0

kill @s


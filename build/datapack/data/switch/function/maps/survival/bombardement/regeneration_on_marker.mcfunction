
#> switch:maps/survival/bombardement/regeneration_on_marker
#
# @within	switch:maps/survival/bombardement/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_bombardement_y switch.data

execute if score #rg_bombardement_mod switch.data matches 0 at @s in switch:game run particle cloud 10011 ~0.5 2043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ 2000 10023 ~ 2087 to switch:game 10000 ~0 2000 strict replace force

execute if score #rg_bombardement_mod switch.data matches 1 at @s in switch:game run particle cloud 10034 ~0.5 2043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 1 at @s run clone from minecraft:overworld 10023 ~ 2000 10046 ~ 2087 to switch:game 10023 ~0 2000 strict replace force

execute if score #rg_bombardement_mod switch.data matches 2 at @s in switch:game run particle cloud 10057 ~0.5 2043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 2 at @s run clone from minecraft:overworld 10046 ~ 2000 10069 ~ 2087 to switch:game 10046 ~0 2000 strict replace force

execute if score #rg_bombardement_mod switch.data matches 3 at @s in switch:game run particle cloud 10080 ~0.5 2043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 3 at @s run clone from minecraft:overworld 10069 ~ 2000 10092 ~ 2087 to switch:game 10069 ~0 2000 strict replace force

execute if score #rg_bombardement_mod switch.data matches 4 at @s in switch:game run particle cloud 10103 ~0.5 2043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 4 at @s run clone from minecraft:overworld 10092 ~ 2000 10115 ~ 2087 to switch:game 10092 ~0 2000 strict replace force

scoreboard players add #rg_bombardement_mod switch.data 1
execute if score #rg_bombardement_mod switch.data matches 5 in switch:game run kill @e[type=item,x=10057,y=100,z=2043,distance=..1000]
execute if score #rg_bombardement_mod switch.data matches 5 run scoreboard players add #rg_bombardement_y switch.data 1
execute if score #rg_bombardement_mod switch.data matches 5 run scoreboard players set #rg_bombardement_mod switch.data 0

kill @s


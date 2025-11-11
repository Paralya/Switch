
#> switch:maps/survival/bombardement/regeneration_on_marker
#
# @within	switch:maps/survival/bombardement/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_bombardement_y switch.data

execute if score #rg_bombardement_mod switch.data matches 0 at @s in switch:game run particle cloud 121011 ~0.5 121043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 0 at @s run clone from minecraft:overworld 121000 ~ 121000 121023 ~ 121087 to switch:game 121000 ~0 121000 strict replace force

execute if score #rg_bombardement_mod switch.data matches 1 at @s in switch:game run particle cloud 121034 ~0.5 121043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 1 at @s run clone from minecraft:overworld 121023 ~ 121000 121046 ~ 121087 to switch:game 121023 ~0 121000 strict replace force

execute if score #rg_bombardement_mod switch.data matches 2 at @s in switch:game run particle cloud 121057 ~0.5 121043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 2 at @s run clone from minecraft:overworld 121046 ~ 121000 121069 ~ 121087 to switch:game 121046 ~0 121000 strict replace force

execute if score #rg_bombardement_mod switch.data matches 3 at @s in switch:game run particle cloud 121080 ~0.5 121043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 3 at @s run clone from minecraft:overworld 121069 ~ 121000 121092 ~ 121087 to switch:game 121069 ~0 121000 strict replace force

execute if score #rg_bombardement_mod switch.data matches 4 at @s in switch:game run particle cloud 121103 ~0.5 121043 11 0 21 0 250 force
execute if score #rg_bombardement_mod switch.data matches 4 at @s run clone from minecraft:overworld 121092 ~ 121000 121115 ~ 121087 to switch:game 121092 ~0 121000 strict replace force

scoreboard players add #rg_bombardement_mod switch.data 1
execute if score #rg_bombardement_mod switch.data matches 5 in switch:game run kill @e[type=item,x=121057,y=100,z=121043,distance=..1000]
execute if score #rg_bombardement_mod switch.data matches 5 run scoreboard players add #rg_bombardement_y switch.data 1
execute if score #rg_bombardement_mod switch.data matches 5 run scoreboard players set #rg_bombardement_mod switch.data 0

kill @s


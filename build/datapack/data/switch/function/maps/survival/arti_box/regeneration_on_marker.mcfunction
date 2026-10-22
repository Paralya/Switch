
#> switch:maps/survival/arti_box/regeneration_on_marker
#
# @within	switch:maps/survival/arti_box/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_arti_box_y switch.data

execute if score #rg_arti_box_mod switch.data matches 0 at @s in switch:game run particle cloud 10012 ~0.5 -3977 12 0 11 0 250 force
execute if score #rg_arti_box_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ -4000 10024 ~ -3953 to switch:game 10000 ~0 -4000 strict replace force

execute if score #rg_arti_box_mod switch.data matches 1 at @s in switch:game run particle cloud 10035 ~0.5 -3977 11 0 11 0 250 force
execute if score #rg_arti_box_mod switch.data matches 1 at @s run clone from minecraft:overworld 10024 ~ -4000 10047 ~ -3953 to switch:game 10024 ~0 -4000 strict replace force

scoreboard players add #rg_arti_box_mod switch.data 1
execute if score #rg_arti_box_mod switch.data matches 2 in switch:game run kill @e[type=item,x=10023,y=100,z=-3976,distance=..1000]
execute if score #rg_arti_box_mod switch.data matches 2 run scoreboard players add #rg_arti_box_y switch.data 1
execute if score #rg_arti_box_mod switch.data matches 2 run scoreboard players set #rg_arti_box_mod switch.data 0

kill @s


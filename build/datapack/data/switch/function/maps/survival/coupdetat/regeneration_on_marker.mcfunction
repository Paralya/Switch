
#> switch:maps/survival/coupdetat/regeneration_on_marker
#
# @within	switch:maps/survival/coupdetat/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_coupdetat_y switch.data

execute if score #rg_coupdetat_mod switch.data matches 0 at @s in switch:game run particle cloud -3994 ~0.5 2011 6 0 5 0 250 force
execute if score #rg_coupdetat_mod switch.data matches 0 at @s run clone from minecraft:overworld -4000 ~ 2000 -3988 ~ 2022 to switch:game -4000 ~0 2000 strict replace force

execute if score #rg_coupdetat_mod switch.data matches 1 at @s in switch:game run particle cloud -3983 ~0.5 2011 5 0 5 0 250 force
execute if score #rg_coupdetat_mod switch.data matches 1 at @s run clone from minecraft:overworld -3988 ~ 2000 -3977 ~ 2022 to switch:game -3988 ~0 2000 strict replace force

scoreboard players add #rg_coupdetat_mod switch.data 1
execute if score #rg_coupdetat_mod switch.data matches 2 in switch:game run kill @e[type=item,x=-3988,y=100,z=2011,distance=..1000]
execute if score #rg_coupdetat_mod switch.data matches 2 run scoreboard players add #rg_coupdetat_y switch.data 1
execute if score #rg_coupdetat_mod switch.data matches 2 run scoreboard players set #rg_coupdetat_mod switch.data 0

kill @s


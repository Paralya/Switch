
#> switch:maps/survival/jn_murder_mystery/regeneration_on_marker
#
# @within	switch:maps/survival/jn_murder_mystery/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_murder_mystery_y switch.data

execute if score #rg_jn_murder_mystery_mod switch.data matches 0 at @s in switch:game run particle cloud 134010 ~100.5 134061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 0 at @s run clone from minecraft:overworld 134000 ~ 134000 134021 ~ 134123 to switch:game 134000 ~100 134000 replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 1 at @s in switch:game run particle cloud 134032 ~100.5 134061 11 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 1 at @s run clone from minecraft:overworld 134021 ~ 134000 134043 ~ 134123 to switch:game 134021 ~100 134000 replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 2 at @s in switch:game run particle cloud 134053 ~100.5 134061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 2 at @s run clone from minecraft:overworld 134043 ~ 134000 134064 ~ 134123 to switch:game 134043 ~100 134000 replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 3 at @s in switch:game run particle cloud 134074 ~100.5 134061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 3 at @s run clone from minecraft:overworld 134064 ~ 134000 134085 ~ 134123 to switch:game 134064 ~100 134000 replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 4 at @s in switch:game run particle cloud 134095 ~100.5 134061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 4 at @s run clone from minecraft:overworld 134085 ~ 134000 134106 ~ 134123 to switch:game 134085 ~100 134000 replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 5 at @s in switch:game run particle cloud 134117 ~100.5 134061 11 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 5 at @s run clone from minecraft:overworld 134106 ~ 134000 134128 ~ 134123 to switch:game 134106 ~100 134000 replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 6 at @s in switch:game run particle cloud 134138 ~100.5 134061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 6 at @s run clone from minecraft:overworld 134128 ~ 134000 134149 ~ 134123 to switch:game 134128 ~100 134000 replace force

scoreboard players add #rg_jn_murder_mystery_mod switch.data 1
execute if score #rg_jn_murder_mystery_mod switch.data matches 7 in switch:game run kill @e[type=item,x=134074,y=0,z=134061,distance=..1000]
execute if score #rg_jn_murder_mystery_mod switch.data matches 7 run scoreboard players add #rg_jn_murder_mystery_y switch.data 1
execute if score #rg_jn_murder_mystery_mod switch.data matches 7 run scoreboard players set #rg_jn_murder_mystery_mod switch.data 0

kill @s


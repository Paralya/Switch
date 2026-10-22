
#> switch:maps/survival/jn_murder_mystery/regeneration_on_marker
#
# @within	switch:maps/survival/jn_murder_mystery/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_murder_mystery_y switch.data

execute if score #rg_jn_murder_mystery_mod switch.data matches 0 at @s in switch:game run particle cloud -3990 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 0 at @s run clone from minecraft:overworld -4000 ~ 10000 -3979 ~ 10123 to switch:game -4000 ~0 10000 strict replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 1 at @s in switch:game run particle cloud -3968 ~0.5 10061 11 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 1 at @s run clone from minecraft:overworld -3979 ~ 10000 -3957 ~ 10123 to switch:game -3979 ~0 10000 strict replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 2 at @s in switch:game run particle cloud -3947 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 2 at @s run clone from minecraft:overworld -3957 ~ 10000 -3936 ~ 10123 to switch:game -3957 ~0 10000 strict replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 3 at @s in switch:game run particle cloud -3926 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 3 at @s run clone from minecraft:overworld -3936 ~ 10000 -3915 ~ 10123 to switch:game -3936 ~0 10000 strict replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 4 at @s in switch:game run particle cloud -3905 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 4 at @s run clone from minecraft:overworld -3915 ~ 10000 -3894 ~ 10123 to switch:game -3915 ~0 10000 strict replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 5 at @s in switch:game run particle cloud -3883 ~0.5 10061 11 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 5 at @s run clone from minecraft:overworld -3894 ~ 10000 -3872 ~ 10123 to switch:game -3894 ~0 10000 strict replace force

execute if score #rg_jn_murder_mystery_mod switch.data matches 6 at @s in switch:game run particle cloud -3862 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_jn_murder_mystery_mod switch.data matches 6 at @s run clone from minecraft:overworld -3872 ~ 10000 -3851 ~ 10123 to switch:game -3872 ~0 10000 strict replace force

scoreboard players add #rg_jn_murder_mystery_mod switch.data 1
execute if score #rg_jn_murder_mystery_mod switch.data matches 7 in switch:game run kill @e[type=item,x=-3925,y=100,z=10061,distance=..1000]
execute if score #rg_jn_murder_mystery_mod switch.data matches 7 run scoreboard players add #rg_jn_murder_mystery_y switch.data 1
execute if score #rg_jn_murder_mystery_mod switch.data matches 7 run scoreboard players set #rg_jn_murder_mystery_mod switch.data 0

kill @s


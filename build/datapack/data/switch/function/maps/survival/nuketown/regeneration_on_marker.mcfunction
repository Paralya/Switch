
#> switch:maps/survival/nuketown/regeneration_on_marker
#
# @within	switch:maps/survival/nuketown/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nuketown_y switch.data

execute if score #rg_nuketown_mod switch.data matches 0 at @s in switch:game run particle cloud -3994 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 0 at @s run clone from minecraft:overworld -4000 ~ 8000 -3987 ~ 8220 to switch:game -4000 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 1 at @s in switch:game run particle cloud -3981 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 1 at @s run clone from minecraft:overworld -3987 ~ 8000 -3974 ~ 8220 to switch:game -3987 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 2 at @s in switch:game run particle cloud -3968 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 2 at @s run clone from minecraft:overworld -3974 ~ 8000 -3961 ~ 8220 to switch:game -3974 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 3 at @s in switch:game run particle cloud -3955 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 3 at @s run clone from minecraft:overworld -3961 ~ 8000 -3948 ~ 8220 to switch:game -3961 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 4 at @s in switch:game run particle cloud -3942 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 4 at @s run clone from minecraft:overworld -3948 ~ 8000 -3935 ~ 8220 to switch:game -3948 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 5 at @s in switch:game run particle cloud -3929 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 5 at @s run clone from minecraft:overworld -3935 ~ 8000 -3922 ~ 8220 to switch:game -3935 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 6 at @s in switch:game run particle cloud -3916 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 6 at @s run clone from minecraft:overworld -3922 ~ 8000 -3909 ~ 8220 to switch:game -3922 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 7 at @s in switch:game run particle cloud -3903 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 7 at @s run clone from minecraft:overworld -3909 ~ 8000 -3896 ~ 8220 to switch:game -3909 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 8 at @s in switch:game run particle cloud -3890 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 8 at @s run clone from minecraft:overworld -3896 ~ 8000 -3884 ~ 8220 to switch:game -3896 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 9 at @s in switch:game run particle cloud -3878 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 9 at @s run clone from minecraft:overworld -3884 ~ 8000 -3871 ~ 8220 to switch:game -3884 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 10 at @s in switch:game run particle cloud -3865 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 10 at @s run clone from minecraft:overworld -3871 ~ 8000 -3858 ~ 8220 to switch:game -3871 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 11 at @s in switch:game run particle cloud -3852 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 11 at @s run clone from minecraft:overworld -3858 ~ 8000 -3845 ~ 8220 to switch:game -3858 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 12 at @s in switch:game run particle cloud -3839 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 12 at @s run clone from minecraft:overworld -3845 ~ 8000 -3832 ~ 8220 to switch:game -3845 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 13 at @s in switch:game run particle cloud -3826 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 13 at @s run clone from minecraft:overworld -3832 ~ 8000 -3819 ~ 8220 to switch:game -3832 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 14 at @s in switch:game run particle cloud -3813 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 14 at @s run clone from minecraft:overworld -3819 ~ 8000 -3806 ~ 8220 to switch:game -3819 ~0 8000 strict replace force

execute if score #rg_nuketown_mod switch.data matches 15 at @s in switch:game run particle cloud -3800 ~0.5 8110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 15 at @s run clone from minecraft:overworld -3806 ~ 8000 -3793 ~ 8220 to switch:game -3806 ~0 8000 strict replace force

scoreboard players add #rg_nuketown_mod switch.data 1
execute if score #rg_nuketown_mod switch.data matches 16 in switch:game run kill @e[type=item,x=-3896,y=100,z=8110,distance=..1000]
execute if score #rg_nuketown_mod switch.data matches 16 run scoreboard players add #rg_nuketown_y switch.data 1
execute if score #rg_nuketown_mod switch.data matches 16 run scoreboard players set #rg_nuketown_mod switch.data 0

kill @s


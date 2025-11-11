
#> switch:maps/survival/nuketown_no_barrier/regeneration_on_marker
#
# @within	switch:maps/survival/nuketown_no_barrier/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nuketown_no_barrier_y switch.data

execute if score #rg_nuketown_no_barrier_mod switch.data matches 0 at @s in switch:game run particle cloud 111006 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 0 at @s run clone from minecraft:overworld 111000 ~ 111000 111013 ~ 111220 to switch:game 111000 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 1 at @s in switch:game run particle cloud 111019 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 1 at @s run clone from minecraft:overworld 111013 ~ 111000 111026 ~ 111220 to switch:game 111013 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 2 at @s in switch:game run particle cloud 111032 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 2 at @s run clone from minecraft:overworld 111026 ~ 111000 111039 ~ 111220 to switch:game 111026 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 3 at @s in switch:game run particle cloud 111045 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 3 at @s run clone from minecraft:overworld 111039 ~ 111000 111052 ~ 111220 to switch:game 111039 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 4 at @s in switch:game run particle cloud 111058 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 4 at @s run clone from minecraft:overworld 111052 ~ 111000 111065 ~ 111220 to switch:game 111052 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 5 at @s in switch:game run particle cloud 111071 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 5 at @s run clone from minecraft:overworld 111065 ~ 111000 111078 ~ 111220 to switch:game 111065 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 6 at @s in switch:game run particle cloud 111084 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 6 at @s run clone from minecraft:overworld 111078 ~ 111000 111091 ~ 111220 to switch:game 111078 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 7 at @s in switch:game run particle cloud 111097 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 7 at @s run clone from minecraft:overworld 111091 ~ 111000 111104 ~ 111220 to switch:game 111091 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 8 at @s in switch:game run particle cloud 111110 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 8 at @s run clone from minecraft:overworld 111104 ~ 111000 111116 ~ 111220 to switch:game 111104 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 9 at @s in switch:game run particle cloud 111122 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 9 at @s run clone from minecraft:overworld 111116 ~ 111000 111129 ~ 111220 to switch:game 111116 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 10 at @s in switch:game run particle cloud 111135 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 10 at @s run clone from minecraft:overworld 111129 ~ 111000 111142 ~ 111220 to switch:game 111129 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 11 at @s in switch:game run particle cloud 111148 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 11 at @s run clone from minecraft:overworld 111142 ~ 111000 111155 ~ 111220 to switch:game 111142 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 12 at @s in switch:game run particle cloud 111161 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 12 at @s run clone from minecraft:overworld 111155 ~ 111000 111168 ~ 111220 to switch:game 111155 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 13 at @s in switch:game run particle cloud 111174 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 13 at @s run clone from minecraft:overworld 111168 ~ 111000 111181 ~ 111220 to switch:game 111168 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 14 at @s in switch:game run particle cloud 111187 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 14 at @s run clone from minecraft:overworld 111181 ~ 111000 111194 ~ 111220 to switch:game 111181 ~0 111000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 15 at @s in switch:game run particle cloud 111200 ~0.5 111110 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 15 at @s run clone from minecraft:overworld 111194 ~ 111000 111207 ~ 111220 to switch:game 111194 ~0 111000 strict replace force

scoreboard players add #rg_nuketown_no_barrier_mod switch.data 1
execute if score #rg_nuketown_no_barrier_mod switch.data matches 16 in switch:game run kill @e[type=item,x=111103,y=100,z=111110,distance=..1000]
execute if score #rg_nuketown_no_barrier_mod switch.data matches 16 run scoreboard players add #rg_nuketown_no_barrier_y switch.data 1
execute if score #rg_nuketown_no_barrier_mod switch.data matches 16 run scoreboard players set #rg_nuketown_no_barrier_mod switch.data 0

kill @s


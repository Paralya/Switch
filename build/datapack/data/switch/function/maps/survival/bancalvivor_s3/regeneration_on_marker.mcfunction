
#> switch:maps/survival/bancalvivor_s3/regeneration_on_marker
#
# @within	switch:maps/survival/bancalvivor_s3/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_bancalvivor_s3_y switch.data

execute if score #rg_bancalvivor_s3_mod switch.data matches 0 at @s in switch:game run particle cloud 38006 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 0 at @s run clone from minecraft:overworld 38000 ~ 38000 38012 ~ 38258 to switch:game 38000 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 1 at @s in switch:game run particle cloud 38018 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 1 at @s run clone from minecraft:overworld 38012 ~ 38000 38024 ~ 38258 to switch:game 38012 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 2 at @s in switch:game run particle cloud 38029 ~0.5 38129 5 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 2 at @s run clone from minecraft:overworld 38024 ~ 38000 38035 ~ 38258 to switch:game 38024 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 3 at @s in switch:game run particle cloud 38041 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 3 at @s run clone from minecraft:overworld 38035 ~ 38000 38047 ~ 38258 to switch:game 38035 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 4 at @s in switch:game run particle cloud 38053 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 4 at @s run clone from minecraft:overworld 38047 ~ 38000 38059 ~ 38258 to switch:game 38047 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 5 at @s in switch:game run particle cloud 38065 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 5 at @s run clone from minecraft:overworld 38059 ~ 38000 38071 ~ 38258 to switch:game 38059 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 6 at @s in switch:game run particle cloud 38077 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 6 at @s run clone from minecraft:overworld 38071 ~ 38000 38083 ~ 38258 to switch:game 38071 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 7 at @s in switch:game run particle cloud 38089 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 7 at @s run clone from minecraft:overworld 38083 ~ 38000 38095 ~ 38258 to switch:game 38083 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 8 at @s in switch:game run particle cloud 38100 ~0.5 38129 5 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 8 at @s run clone from minecraft:overworld 38095 ~ 38000 38106 ~ 38258 to switch:game 38095 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 9 at @s in switch:game run particle cloud 38112 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 9 at @s run clone from minecraft:overworld 38106 ~ 38000 38118 ~ 38258 to switch:game 38106 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 10 at @s in switch:game run particle cloud 38124 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 10 at @s run clone from minecraft:overworld 38118 ~ 38000 38130 ~ 38258 to switch:game 38118 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 11 at @s in switch:game run particle cloud 38136 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 11 at @s run clone from minecraft:overworld 38130 ~ 38000 38142 ~ 38258 to switch:game 38130 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 12 at @s in switch:game run particle cloud 38148 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 12 at @s run clone from minecraft:overworld 38142 ~ 38000 38154 ~ 38258 to switch:game 38142 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 13 at @s in switch:game run particle cloud 38159 ~0.5 38129 5 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 13 at @s run clone from minecraft:overworld 38154 ~ 38000 38165 ~ 38258 to switch:game 38154 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 14 at @s in switch:game run particle cloud 38171 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 14 at @s run clone from minecraft:overworld 38165 ~ 38000 38177 ~ 38258 to switch:game 38165 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 15 at @s in switch:game run particle cloud 38183 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 15 at @s run clone from minecraft:overworld 38177 ~ 38000 38189 ~ 38258 to switch:game 38177 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 16 at @s in switch:game run particle cloud 38195 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 16 at @s run clone from minecraft:overworld 38189 ~ 38000 38201 ~ 38258 to switch:game 38189 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 17 at @s in switch:game run particle cloud 38207 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 17 at @s run clone from minecraft:overworld 38201 ~ 38000 38213 ~ 38258 to switch:game 38201 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 18 at @s in switch:game run particle cloud 38219 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 18 at @s run clone from minecraft:overworld 38213 ~ 38000 38225 ~ 38258 to switch:game 38213 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 19 at @s in switch:game run particle cloud 38230 ~0.5 38129 5 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 19 at @s run clone from minecraft:overworld 38225 ~ 38000 38236 ~ 38258 to switch:game 38225 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 20 at @s in switch:game run particle cloud 38242 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 20 at @s run clone from minecraft:overworld 38236 ~ 38000 38248 ~ 38258 to switch:game 38236 ~0 38000 replace force

execute if score #rg_bancalvivor_s3_mod switch.data matches 21 at @s in switch:game run particle cloud 38254 ~0.5 38129 6 0 64 0 250 force
execute if score #rg_bancalvivor_s3_mod switch.data matches 21 at @s run clone from minecraft:overworld 38248 ~ 38000 38260 ~ 38258 to switch:game 38248 ~0 38000 replace force

scoreboard players add #rg_bancalvivor_s3_mod switch.data 1
execute if score #rg_bancalvivor_s3_mod switch.data matches 22 in switch:game run kill @e[type=item,x=38130,y=100,z=38129,distance=..1000]
execute if score #rg_bancalvivor_s3_mod switch.data matches 22 run scoreboard players add #rg_bancalvivor_s3_y switch.data 1
execute if score #rg_bancalvivor_s3_mod switch.data matches 22 run scoreboard players set #rg_bancalvivor_s3_mod switch.data 0

kill @s


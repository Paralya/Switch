
#> switch:maps/survival/nuketown/regeneration_on_marker
#
# @within	switch:maps/survival/nuketown/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nuketown_y switch.data

execute if score #rg_nuketown_mod switch.data matches 0 at @s in switch:game run particle cloud 72006 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 0 at @s run clone from minecraft:overworld 72000 ~ 72000 72013 ~ 72220 to switch:game 72000 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 1 at @s in switch:game run particle cloud 72019 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 1 at @s run clone from minecraft:overworld 72013 ~ 72000 72026 ~ 72220 to switch:game 72013 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 2 at @s in switch:game run particle cloud 72032 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 2 at @s run clone from minecraft:overworld 72026 ~ 72000 72039 ~ 72220 to switch:game 72026 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 3 at @s in switch:game run particle cloud 72045 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 3 at @s run clone from minecraft:overworld 72039 ~ 72000 72052 ~ 72220 to switch:game 72039 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 4 at @s in switch:game run particle cloud 72058 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 4 at @s run clone from minecraft:overworld 72052 ~ 72000 72065 ~ 72220 to switch:game 72052 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 5 at @s in switch:game run particle cloud 72071 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 5 at @s run clone from minecraft:overworld 72065 ~ 72000 72078 ~ 72220 to switch:game 72065 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 6 at @s in switch:game run particle cloud 72084 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 6 at @s run clone from minecraft:overworld 72078 ~ 72000 72091 ~ 72220 to switch:game 72078 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 7 at @s in switch:game run particle cloud 72097 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 7 at @s run clone from minecraft:overworld 72091 ~ 72000 72104 ~ 72220 to switch:game 72091 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 8 at @s in switch:game run particle cloud 72110 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 8 at @s run clone from minecraft:overworld 72104 ~ 72000 72116 ~ 72220 to switch:game 72104 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 9 at @s in switch:game run particle cloud 72122 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 9 at @s run clone from minecraft:overworld 72116 ~ 72000 72129 ~ 72220 to switch:game 72116 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 10 at @s in switch:game run particle cloud 72135 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 10 at @s run clone from minecraft:overworld 72129 ~ 72000 72142 ~ 72220 to switch:game 72129 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 11 at @s in switch:game run particle cloud 72148 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 11 at @s run clone from minecraft:overworld 72142 ~ 72000 72155 ~ 72220 to switch:game 72142 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 12 at @s in switch:game run particle cloud 72161 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 12 at @s run clone from minecraft:overworld 72155 ~ 72000 72168 ~ 72220 to switch:game 72155 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 13 at @s in switch:game run particle cloud 72174 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 13 at @s run clone from minecraft:overworld 72168 ~ 72000 72181 ~ 72220 to switch:game 72168 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 14 at @s in switch:game run particle cloud 72187 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 14 at @s run clone from minecraft:overworld 72181 ~ 72000 72194 ~ 72220 to switch:game 72181 ~100 72000 replace force

execute if score #rg_nuketown_mod switch.data matches 15 at @s in switch:game run particle cloud 72200 ~100.5 72110 6 0 55 0 250 force
execute if score #rg_nuketown_mod switch.data matches 15 at @s run clone from minecraft:overworld 72194 ~ 72000 72207 ~ 72220 to switch:game 72194 ~100 72000 replace force

scoreboard players add #rg_nuketown_mod switch.data 1
execute if score #rg_nuketown_mod switch.data matches 16 in switch:game run kill @e[type=item,x=72103,y=0,z=72110,distance=..1000]
execute if score #rg_nuketown_mod switch.data matches 16 run scoreboard players add #rg_nuketown_y switch.data 1
execute if score #rg_nuketown_mod switch.data matches 16 run scoreboard players set #rg_nuketown_mod switch.data 0

kill @s


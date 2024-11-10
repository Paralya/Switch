
#> switch:maps/survival/lg_village/regeneration_on_marker
#
# @within	switch:maps/survival/lg_village/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_lg_village_y switch.data

execute if score #rg_lg_village_mod switch.data matches 0 at @s in switch:game run particle cloud 96006 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 0 at @s run clone from minecraft:overworld 96000 ~ 96000 96012 ~ 96239 to switch:game 96000 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 1 at @s in switch:game run particle cloud 96018 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 1 at @s run clone from minecraft:overworld 96012 ~ 96000 96025 ~ 96239 to switch:game 96012 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 2 at @s in switch:game run particle cloud 96031 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 2 at @s run clone from minecraft:overworld 96025 ~ 96000 96037 ~ 96239 to switch:game 96025 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 3 at @s in switch:game run particle cloud 96043 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 3 at @s run clone from minecraft:overworld 96037 ~ 96000 96049 ~ 96239 to switch:game 96037 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 4 at @s in switch:game run particle cloud 96055 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 4 at @s run clone from minecraft:overworld 96049 ~ 96000 96062 ~ 96239 to switch:game 96049 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 5 at @s in switch:game run particle cloud 96068 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 5 at @s run clone from minecraft:overworld 96062 ~ 96000 96074 ~ 96239 to switch:game 96062 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 6 at @s in switch:game run particle cloud 96080 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 6 at @s run clone from minecraft:overworld 96074 ~ 96000 96086 ~ 96239 to switch:game 96074 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 7 at @s in switch:game run particle cloud 96092 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 7 at @s run clone from minecraft:overworld 96086 ~ 96000 96098 ~ 96239 to switch:game 96086 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 8 at @s in switch:game run particle cloud 96104 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 8 at @s run clone from minecraft:overworld 96098 ~ 96000 96111 ~ 96239 to switch:game 96098 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 9 at @s in switch:game run particle cloud 96117 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 9 at @s run clone from minecraft:overworld 96111 ~ 96000 96123 ~ 96239 to switch:game 96111 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 10 at @s in switch:game run particle cloud 96129 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 10 at @s run clone from minecraft:overworld 96123 ~ 96000 96135 ~ 96239 to switch:game 96123 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 11 at @s in switch:game run particle cloud 96141 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 11 at @s run clone from minecraft:overworld 96135 ~ 96000 96148 ~ 96239 to switch:game 96135 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 12 at @s in switch:game run particle cloud 96154 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 12 at @s run clone from minecraft:overworld 96148 ~ 96000 96160 ~ 96239 to switch:game 96148 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 13 at @s in switch:game run particle cloud 96166 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 13 at @s run clone from minecraft:overworld 96160 ~ 96000 96172 ~ 96239 to switch:game 96160 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 14 at @s in switch:game run particle cloud 96178 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 14 at @s run clone from minecraft:overworld 96172 ~ 96000 96184 ~ 96239 to switch:game 96172 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 15 at @s in switch:game run particle cloud 96190 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 15 at @s run clone from minecraft:overworld 96184 ~ 96000 96197 ~ 96239 to switch:game 96184 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 16 at @s in switch:game run particle cloud 96203 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 16 at @s run clone from minecraft:overworld 96197 ~ 96000 96209 ~ 96239 to switch:game 96197 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 17 at @s in switch:game run particle cloud 96215 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 17 at @s run clone from minecraft:overworld 96209 ~ 96000 96221 ~ 96239 to switch:game 96209 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 18 at @s in switch:game run particle cloud 96227 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 18 at @s run clone from minecraft:overworld 96221 ~ 96000 96234 ~ 96239 to switch:game 96221 ~163 96000 replace force

execute if score #rg_lg_village_mod switch.data matches 19 at @s in switch:game run particle cloud 96240 ~163.5 96119 6 0 59 0 250 force
execute if score #rg_lg_village_mod switch.data matches 19 at @s run clone from minecraft:overworld 96234 ~ 96000 96246 ~ 96239 to switch:game 96234 ~163 96000 replace force

scoreboard players add #rg_lg_village_mod switch.data 1
execute if score #rg_lg_village_mod switch.data matches 20 in switch:game run kill @e[type=item,x=96123,y=-63,z=96119,distance=..1000]
execute if score #rg_lg_village_mod switch.data matches 20 run scoreboard players add #rg_lg_village_y switch.data 1
execute if score #rg_lg_village_mod switch.data matches 20 run scoreboard players set #rg_lg_village_mod switch.data 0

kill @s


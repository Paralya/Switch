
#> switch:maps/survival/zonweeb_highschool/regeneration_on_marker
#
# @within	switch:maps/survival/zonweeb_highschool/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_zonweeb_highschool_y switch.data

execute if score #rg_zonweeb_highschool_mod switch.data matches 0 at @s in switch:game run particle cloud 53006 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 0 at @s run clone from minecraft:overworld 53000 ~ 53000 53012 ~ 53218 to switch:game 53000 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 1 at @s in switch:game run particle cloud 53018 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 1 at @s run clone from minecraft:overworld 53012 ~ 53000 53025 ~ 53218 to switch:game 53012 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 2 at @s in switch:game run particle cloud 53031 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 2 at @s run clone from minecraft:overworld 53025 ~ 53000 53038 ~ 53218 to switch:game 53025 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 3 at @s in switch:game run particle cloud 53044 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 3 at @s run clone from minecraft:overworld 53038 ~ 53000 53050 ~ 53218 to switch:game 53038 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 4 at @s in switch:game run particle cloud 53056 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 4 at @s run clone from minecraft:overworld 53050 ~ 53000 53062 ~ 53218 to switch:game 53050 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 5 at @s in switch:game run particle cloud 53068 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 5 at @s run clone from minecraft:overworld 53062 ~ 53000 53075 ~ 53218 to switch:game 53062 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 6 at @s in switch:game run particle cloud 53081 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 6 at @s run clone from minecraft:overworld 53075 ~ 53000 53088 ~ 53218 to switch:game 53075 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 7 at @s in switch:game run particle cloud 53094 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 7 at @s run clone from minecraft:overworld 53088 ~ 53000 53100 ~ 53218 to switch:game 53088 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 8 at @s in switch:game run particle cloud 53106 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 8 at @s run clone from minecraft:overworld 53100 ~ 53000 53112 ~ 53218 to switch:game 53100 ~0 53000 strict replace force

execute if score #rg_zonweeb_highschool_mod switch.data matches 9 at @s in switch:game run particle cloud 53118 ~0.5 53109 6 0 54 0 250 force
execute if score #rg_zonweeb_highschool_mod switch.data matches 9 at @s run clone from minecraft:overworld 53112 ~ 53000 53125 ~ 53218 to switch:game 53112 ~0 53000 strict replace force

scoreboard players add #rg_zonweeb_highschool_mod switch.data 1
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 in switch:game run kill @e[type=item,x=53062,y=100,z=53109,distance=..1000]
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 run scoreboard players add #rg_zonweeb_highschool_y switch.data 1
execute if score #rg_zonweeb_highschool_mod switch.data matches 10 run scoreboard players set #rg_zonweeb_highschool_mod switch.data 0

kill @s


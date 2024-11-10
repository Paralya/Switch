
#> switch:maps/survival/vilarles_castillo/regeneration_on_marker
#
# @within	switch:maps/survival/vilarles_castillo/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_vilarles_castillo_y switch.data

execute if score #rg_vilarles_castillo_mod switch.data matches 0 at @s in switch:game run particle cloud 51905 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 0 at @s run clone from minecraft:overworld 51899 ~ 51853 51912 ~ 52071 to switch:game 51899 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 1 at @s in switch:game run particle cloud 51918 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 1 at @s run clone from minecraft:overworld 51912 ~ 51853 51924 ~ 52071 to switch:game 51912 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 2 at @s in switch:game run particle cloud 51930 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 2 at @s run clone from minecraft:overworld 51924 ~ 51853 51937 ~ 52071 to switch:game 51924 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 3 at @s in switch:game run particle cloud 51943 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 3 at @s run clone from minecraft:overworld 51937 ~ 51853 51950 ~ 52071 to switch:game 51937 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 4 at @s in switch:game run particle cloud 51956 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 4 at @s run clone from minecraft:overworld 51950 ~ 51853 51962 ~ 52071 to switch:game 51950 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 5 at @s in switch:game run particle cloud 51968 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 5 at @s run clone from minecraft:overworld 51962 ~ 51853 51975 ~ 52071 to switch:game 51962 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 6 at @s in switch:game run particle cloud 51981 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 6 at @s run clone from minecraft:overworld 51975 ~ 51853 51988 ~ 52071 to switch:game 51975 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 7 at @s in switch:game run particle cloud 51994 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 7 at @s run clone from minecraft:overworld 51988 ~ 51853 52000 ~ 52071 to switch:game 51988 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 8 at @s in switch:game run particle cloud 52006 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 8 at @s run clone from minecraft:overworld 52000 ~ 51853 52013 ~ 52071 to switch:game 52000 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 9 at @s in switch:game run particle cloud 52019 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 9 at @s run clone from minecraft:overworld 52013 ~ 51853 52025 ~ 52071 to switch:game 52013 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 10 at @s in switch:game run particle cloud 52031 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 10 at @s run clone from minecraft:overworld 52025 ~ 51853 52038 ~ 52071 to switch:game 52025 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 11 at @s in switch:game run particle cloud 52044 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 11 at @s run clone from minecraft:overworld 52038 ~ 51853 52051 ~ 52071 to switch:game 52038 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 12 at @s in switch:game run particle cloud 52057 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 12 at @s run clone from minecraft:overworld 52051 ~ 51853 52063 ~ 52071 to switch:game 52051 ~164 51853 replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 13 at @s in switch:game run particle cloud 52069 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 13 at @s run clone from minecraft:overworld 52063 ~ 51853 52076 ~ 52071 to switch:game 52063 ~164 51853 replace force

scoreboard players add #rg_vilarles_castillo_mod switch.data 1
execute if score #rg_vilarles_castillo_mod switch.data matches 14 in switch:game run kill @e[type=item,x=51987,y=-64,z=51962,distance=..1000]
execute if score #rg_vilarles_castillo_mod switch.data matches 14 run scoreboard players add #rg_vilarles_castillo_y switch.data 1
execute if score #rg_vilarles_castillo_mod switch.data matches 14 run scoreboard players set #rg_vilarles_castillo_mod switch.data 0

kill @s


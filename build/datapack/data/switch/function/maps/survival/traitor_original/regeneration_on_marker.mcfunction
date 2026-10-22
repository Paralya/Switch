
#> switch:maps/survival/traitor_original/regeneration_on_marker
#
# @within	switch:maps/survival/traitor_original/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_traitor_original_y switch.data

execute if score #rg_traitor_original_mod switch.data matches 0 at @s in switch:game run particle cloud 2009 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ 2000 2018 ~ 2155 to switch:game 2000 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 1 at @s in switch:game run particle cloud 2027 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 1 at @s run clone from minecraft:overworld 2018 ~ 2000 2037 ~ 2155 to switch:game 2018 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 2 at @s in switch:game run particle cloud 2046 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 2 at @s run clone from minecraft:overworld 2037 ~ 2000 2055 ~ 2155 to switch:game 2037 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 3 at @s in switch:game run particle cloud 2064 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 3 at @s run clone from minecraft:overworld 2055 ~ 2000 2074 ~ 2155 to switch:game 2055 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 4 at @s in switch:game run particle cloud 2083 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 4 at @s run clone from minecraft:overworld 2074 ~ 2000 2092 ~ 2155 to switch:game 2074 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 5 at @s in switch:game run particle cloud 2101 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 5 at @s run clone from minecraft:overworld 2092 ~ 2000 2110 ~ 2155 to switch:game 2092 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 6 at @s in switch:game run particle cloud 2119 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 6 at @s run clone from minecraft:overworld 2110 ~ 2000 2129 ~ 2155 to switch:game 2110 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 7 at @s in switch:game run particle cloud 2138 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 7 at @s run clone from minecraft:overworld 2129 ~ 2000 2147 ~ 2155 to switch:game 2129 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 8 at @s in switch:game run particle cloud 2156 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 8 at @s run clone from minecraft:overworld 2147 ~ 2000 2166 ~ 2155 to switch:game 2147 ~0 2000 strict replace force

execute if score #rg_traitor_original_mod switch.data matches 9 at @s in switch:game run particle cloud 2175 ~0.5 2077 9 0 38 0 250 force
execute if score #rg_traitor_original_mod switch.data matches 9 at @s run clone from minecraft:overworld 2166 ~ 2000 2184 ~ 2155 to switch:game 2166 ~0 2000 strict replace force

scoreboard players add #rg_traitor_original_mod switch.data 1
execute if score #rg_traitor_original_mod switch.data matches 10 in switch:game run kill @e[type=item,x=2092,y=100,z=2077,distance=..1000]
execute if score #rg_traitor_original_mod switch.data matches 10 run scoreboard players add #rg_traitor_original_y switch.data 1
execute if score #rg_traitor_original_mod switch.data matches 10 run scoreboard players set #rg_traitor_original_mod switch.data 0

kill @s


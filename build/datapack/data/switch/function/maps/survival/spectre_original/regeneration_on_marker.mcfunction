
#> switch:maps/survival/spectre_original/regeneration_on_marker
#
# @within	switch:maps/survival/spectre_original/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_spectre_original_y switch.data

execute if score #rg_spectre_original_mod switch.data matches 0 at @s in switch:game run particle cloud -1989 ~0.5 2047 11 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ 2000 -1978 ~ 2095 to switch:game -2000 ~0 2000 strict replace force

execute if score #rg_spectre_original_mod switch.data matches 1 at @s in switch:game run particle cloud -1968 ~0.5 2047 10 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 1 at @s run clone from minecraft:overworld -1978 ~ 2000 -1957 ~ 2095 to switch:game -1978 ~0 2000 strict replace force

execute if score #rg_spectre_original_mod switch.data matches 2 at @s in switch:game run particle cloud -1947 ~0.5 2047 10 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 2 at @s run clone from minecraft:overworld -1957 ~ 2000 -1936 ~ 2095 to switch:game -1957 ~0 2000 strict replace force

execute if score #rg_spectre_original_mod switch.data matches 3 at @s in switch:game run particle cloud -1925 ~0.5 2047 11 0 23 0 250 force
execute if score #rg_spectre_original_mod switch.data matches 3 at @s run clone from minecraft:overworld -1936 ~ 2000 -1914 ~ 2095 to switch:game -1936 ~0 2000 strict replace force

scoreboard players add #rg_spectre_original_mod switch.data 1
execute if score #rg_spectre_original_mod switch.data matches 4 in switch:game run kill @e[type=item,x=-1957,y=100,z=2047,distance=..1000]
execute if score #rg_spectre_original_mod switch.data matches 4 run scoreboard players add #rg_spectre_original_y switch.data 1
execute if score #rg_spectre_original_mod switch.data matches 4 run scoreboard players set #rg_spectre_original_mod switch.data 0

kill @s


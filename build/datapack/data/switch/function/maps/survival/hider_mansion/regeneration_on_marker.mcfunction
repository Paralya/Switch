
#> switch:maps/survival/hider_mansion/regeneration_on_marker
#
# @within	switch:maps/survival/hider_mansion/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_hider_mansion_y switch.data

execute if score #rg_hider_mansion_mod switch.data matches 0 at @s in switch:game run particle cloud -1992 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ 8000 -1983 ~ 8160 to switch:game -2000 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 1 at @s in switch:game run particle cloud -1975 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 1 at @s run clone from minecraft:overworld -1983 ~ 8000 -1966 ~ 8160 to switch:game -1983 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 2 at @s in switch:game run particle cloud -1958 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 2 at @s run clone from minecraft:overworld -1966 ~ 8000 -1949 ~ 8160 to switch:game -1966 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 3 at @s in switch:game run particle cloud -1941 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 3 at @s run clone from minecraft:overworld -1949 ~ 8000 -1932 ~ 8160 to switch:game -1949 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 4 at @s in switch:game run particle cloud -1924 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 4 at @s run clone from minecraft:overworld -1932 ~ 8000 -1915 ~ 8160 to switch:game -1932 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 5 at @s in switch:game run particle cloud -1907 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 5 at @s run clone from minecraft:overworld -1915 ~ 8000 -1898 ~ 8160 to switch:game -1915 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 6 at @s in switch:game run particle cloud -1890 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 6 at @s run clone from minecraft:overworld -1898 ~ 8000 -1881 ~ 8160 to switch:game -1898 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 7 at @s in switch:game run particle cloud -1873 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 7 at @s run clone from minecraft:overworld -1881 ~ 8000 -1864 ~ 8160 to switch:game -1881 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 8 at @s in switch:game run particle cloud -1856 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 8 at @s run clone from minecraft:overworld -1864 ~ 8000 -1847 ~ 8160 to switch:game -1864 ~0 8000 strict replace force

execute if score #rg_hider_mansion_mod switch.data matches 9 at @s in switch:game run particle cloud -1839 ~0.5 8080 8 0 40 0 250 force
execute if score #rg_hider_mansion_mod switch.data matches 9 at @s run clone from minecraft:overworld -1847 ~ 8000 -1830 ~ 8160 to switch:game -1847 ~0 8000 strict replace force

scoreboard players add #rg_hider_mansion_mod switch.data 1
execute if score #rg_hider_mansion_mod switch.data matches 10 in switch:game run kill @e[type=item,x=-1915,y=100,z=8080,distance=..1000]
execute if score #rg_hider_mansion_mod switch.data matches 10 run scoreboard players add #rg_hider_mansion_y switch.data 1
execute if score #rg_hider_mansion_mod switch.data matches 10 run scoreboard players set #rg_hider_mansion_mod switch.data 0

kill @s


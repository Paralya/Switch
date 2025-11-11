
#> switch:maps/survival/la_fromagerie/regeneration_on_marker
#
# @within	switch:maps/survival/la_fromagerie/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_la_fromagerie_y switch.data

execute if score #rg_la_fromagerie_mod switch.data matches 0 at @s in switch:game run particle cloud 59010 ~0.5 59049 10 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 0 at @s run clone from minecraft:overworld 59000 ~ 59000 59020 ~ 59099 to switch:game 59000 ~0 59000 strict replace force

execute if score #rg_la_fromagerie_mod switch.data matches 1 at @s in switch:game run particle cloud 59030 ~0.5 59049 10 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 1 at @s run clone from minecraft:overworld 59020 ~ 59000 59040 ~ 59099 to switch:game 59020 ~0 59000 strict replace force

execute if score #rg_la_fromagerie_mod switch.data matches 2 at @s in switch:game run particle cloud 59049 ~0.5 59049 9 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 2 at @s run clone from minecraft:overworld 59040 ~ 59000 59059 ~ 59099 to switch:game 59040 ~0 59000 strict replace force

execute if score #rg_la_fromagerie_mod switch.data matches 3 at @s in switch:game run particle cloud 59069 ~0.5 59049 10 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 3 at @s run clone from minecraft:overworld 59059 ~ 59000 59079 ~ 59099 to switch:game 59059 ~0 59000 strict replace force

execute if score #rg_la_fromagerie_mod switch.data matches 4 at @s in switch:game run particle cloud 59089 ~0.5 59049 10 0 24 0 250 force
execute if score #rg_la_fromagerie_mod switch.data matches 4 at @s run clone from minecraft:overworld 59079 ~ 59000 59099 ~ 59099 to switch:game 59079 ~0 59000 strict replace force

scoreboard players add #rg_la_fromagerie_mod switch.data 1
execute if score #rg_la_fromagerie_mod switch.data matches 5 in switch:game run kill @e[type=item,x=59049,y=100,z=59049,distance=..1000]
execute if score #rg_la_fromagerie_mod switch.data matches 5 run scoreboard players add #rg_la_fromagerie_y switch.data 1
execute if score #rg_la_fromagerie_mod switch.data matches 5 run scoreboard players set #rg_la_fromagerie_mod switch.data 0

kill @s


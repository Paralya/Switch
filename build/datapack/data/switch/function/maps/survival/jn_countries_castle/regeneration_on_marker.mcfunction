
#> switch:maps/survival/jn_countries_castle/regeneration_on_marker
#
# @within	switch:maps/survival/jn_countries_castle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jn_countries_castle_y switch.data

execute if score #rg_jn_countries_castle_mod switch.data matches 0 at @s in switch:game run particle cloud -1990 ~0.5 10060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ 10000 -1980 ~ 10120 to switch:game -2000 ~0 10000 strict replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 1 at @s in switch:game run particle cloud -1970 ~0.5 10060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 1 at @s run clone from minecraft:overworld -1980 ~ 10000 -1960 ~ 10120 to switch:game -1980 ~0 10000 strict replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 2 at @s in switch:game run particle cloud -1950 ~0.5 10060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 2 at @s run clone from minecraft:overworld -1960 ~ 10000 -1940 ~ 10120 to switch:game -1960 ~0 10000 strict replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 3 at @s in switch:game run particle cloud -1930 ~0.5 10060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 3 at @s run clone from minecraft:overworld -1940 ~ 10000 -1920 ~ 10120 to switch:game -1940 ~0 10000 strict replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 4 at @s in switch:game run particle cloud -1910 ~0.5 10060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 4 at @s run clone from minecraft:overworld -1920 ~ 10000 -1900 ~ 10120 to switch:game -1920 ~0 10000 strict replace force

execute if score #rg_jn_countries_castle_mod switch.data matches 5 at @s in switch:game run particle cloud -1890 ~0.5 10060 10 0 30 0 250 force
execute if score #rg_jn_countries_castle_mod switch.data matches 5 at @s run clone from minecraft:overworld -1900 ~ 10000 -1880 ~ 10120 to switch:game -1900 ~0 10000 strict replace force

scoreboard players add #rg_jn_countries_castle_mod switch.data 1
execute if score #rg_jn_countries_castle_mod switch.data matches 6 in switch:game run kill @e[type=item,x=-1940,y=100,z=10060,distance=..1000]
execute if score #rg_jn_countries_castle_mod switch.data matches 6 run scoreboard players add #rg_jn_countries_castle_y switch.data 1
execute if score #rg_jn_countries_castle_mod switch.data matches 6 run scoreboard players set #rg_jn_countries_castle_mod switch.data 0

kill @s


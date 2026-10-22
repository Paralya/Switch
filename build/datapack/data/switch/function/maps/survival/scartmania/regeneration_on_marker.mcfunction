
#> switch:maps/survival/scartmania/regeneration_on_marker
#
# @within	switch:maps/survival/scartmania/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_scartmania_y switch.data

execute if score #rg_scartmania_mod switch.data matches 0 at @s in switch:game run particle cloud 2007 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 0 at @s run clone from minecraft:overworld 2000 ~ -8000 2015 ~ -7812 to switch:game 2000 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 1 at @s in switch:game run particle cloud 2022 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 1 at @s run clone from minecraft:overworld 2015 ~ -8000 2029 ~ -7812 to switch:game 2015 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 2 at @s in switch:game run particle cloud 2036 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 2 at @s run clone from minecraft:overworld 2029 ~ -8000 2044 ~ -7812 to switch:game 2029 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 3 at @s in switch:game run particle cloud 2051 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 3 at @s run clone from minecraft:overworld 2044 ~ -8000 2058 ~ -7812 to switch:game 2044 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 4 at @s in switch:game run particle cloud 2065 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 4 at @s run clone from minecraft:overworld 2058 ~ -8000 2073 ~ -7812 to switch:game 2058 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 5 at @s in switch:game run particle cloud 2080 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 5 at @s run clone from minecraft:overworld 2073 ~ -8000 2087 ~ -7812 to switch:game 2073 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 6 at @s in switch:game run particle cloud 2094 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 6 at @s run clone from minecraft:overworld 2087 ~ -8000 2102 ~ -7812 to switch:game 2087 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 7 at @s in switch:game run particle cloud 2109 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 7 at @s run clone from minecraft:overworld 2102 ~ -8000 2116 ~ -7812 to switch:game 2102 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 8 at @s in switch:game run particle cloud 2123 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 8 at @s run clone from minecraft:overworld 2116 ~ -8000 2131 ~ -7812 to switch:game 2116 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 9 at @s in switch:game run particle cloud 2138 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 9 at @s run clone from minecraft:overworld 2131 ~ -8000 2145 ~ -7812 to switch:game 2131 ~0 -8000 strict replace force

execute if score #rg_scartmania_mod switch.data matches 10 at @s in switch:game run particle cloud 2152 ~0.5 -7906 7 0 47 0 250 force
execute if score #rg_scartmania_mod switch.data matches 10 at @s run clone from minecraft:overworld 2145 ~ -8000 2160 ~ -7812 to switch:game 2145 ~0 -8000 strict replace force

scoreboard players add #rg_scartmania_mod switch.data 1
execute if score #rg_scartmania_mod switch.data matches 11 in switch:game run kill @e[type=item,x=2080,y=100,z=-7906,distance=..1000]
execute if score #rg_scartmania_mod switch.data matches 11 run scoreboard players add #rg_scartmania_y switch.data 1
execute if score #rg_scartmania_mod switch.data matches 11 run scoreboard players set #rg_scartmania_mod switch.data 0

kill @s


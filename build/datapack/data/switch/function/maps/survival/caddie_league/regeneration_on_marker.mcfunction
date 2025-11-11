
#> switch:maps/survival/caddie_league/regeneration_on_marker
#
# @within	switch:maps/survival/caddie_league/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_caddie_league_y switch.data

execute if score #rg_caddie_league_mod switch.data matches 0 at @s in switch:game run particle cloud 41005 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 0 at @s run clone from minecraft:overworld 41000 ~ 41000 41011 ~ 41256 to switch:game 41000 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 1 at @s in switch:game run particle cloud 41017 ~0.5 41128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 1 at @s run clone from minecraft:overworld 41011 ~ 41000 41023 ~ 41256 to switch:game 41011 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 2 at @s in switch:game run particle cloud 41028 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 2 at @s run clone from minecraft:overworld 41023 ~ 41000 41034 ~ 41256 to switch:game 41023 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 3 at @s in switch:game run particle cloud 41039 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 3 at @s run clone from minecraft:overworld 41034 ~ 41000 41045 ~ 41256 to switch:game 41034 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 4 at @s in switch:game run particle cloud 41051 ~0.5 41128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 4 at @s run clone from minecraft:overworld 41045 ~ 41000 41057 ~ 41256 to switch:game 41045 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 5 at @s in switch:game run particle cloud 41062 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 5 at @s run clone from minecraft:overworld 41057 ~ 41000 41068 ~ 41256 to switch:game 41057 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 6 at @s in switch:game run particle cloud 41073 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 6 at @s run clone from minecraft:overworld 41068 ~ 41000 41079 ~ 41256 to switch:game 41068 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 7 at @s in switch:game run particle cloud 41085 ~0.5 41128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 7 at @s run clone from minecraft:overworld 41079 ~ 41000 41091 ~ 41256 to switch:game 41079 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 8 at @s in switch:game run particle cloud 41096 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 8 at @s run clone from minecraft:overworld 41091 ~ 41000 41102 ~ 41256 to switch:game 41091 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 9 at @s in switch:game run particle cloud 41107 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 9 at @s run clone from minecraft:overworld 41102 ~ 41000 41113 ~ 41256 to switch:game 41102 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 10 at @s in switch:game run particle cloud 41119 ~0.5 41128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 10 at @s run clone from minecraft:overworld 41113 ~ 41000 41125 ~ 41256 to switch:game 41113 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 11 at @s in switch:game run particle cloud 41130 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 11 at @s run clone from minecraft:overworld 41125 ~ 41000 41136 ~ 41256 to switch:game 41125 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 12 at @s in switch:game run particle cloud 41141 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 12 at @s run clone from minecraft:overworld 41136 ~ 41000 41147 ~ 41256 to switch:game 41136 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 13 at @s in switch:game run particle cloud 41153 ~0.5 41128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 13 at @s run clone from minecraft:overworld 41147 ~ 41000 41159 ~ 41256 to switch:game 41147 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 14 at @s in switch:game run particle cloud 41164 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 14 at @s run clone from minecraft:overworld 41159 ~ 41000 41170 ~ 41256 to switch:game 41159 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 15 at @s in switch:game run particle cloud 41175 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 15 at @s run clone from minecraft:overworld 41170 ~ 41000 41181 ~ 41256 to switch:game 41170 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 16 at @s in switch:game run particle cloud 41187 ~0.5 41128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 16 at @s run clone from minecraft:overworld 41181 ~ 41000 41193 ~ 41256 to switch:game 41181 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 17 at @s in switch:game run particle cloud 41198 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 17 at @s run clone from minecraft:overworld 41193 ~ 41000 41204 ~ 41256 to switch:game 41193 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 18 at @s in switch:game run particle cloud 41209 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 18 at @s run clone from minecraft:overworld 41204 ~ 41000 41215 ~ 41256 to switch:game 41204 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 19 at @s in switch:game run particle cloud 41221 ~0.5 41128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 19 at @s run clone from minecraft:overworld 41215 ~ 41000 41227 ~ 41256 to switch:game 41215 ~0 41000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 20 at @s in switch:game run particle cloud 41232 ~0.5 41128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 20 at @s run clone from minecraft:overworld 41227 ~ 41000 41238 ~ 41256 to switch:game 41227 ~0 41000 strict replace force

scoreboard players add #rg_caddie_league_mod switch.data 1
execute if score #rg_caddie_league_mod switch.data matches 21 in switch:game run kill @e[type=item,x=41119,y=100,z=41128,distance=..1000]
execute if score #rg_caddie_league_mod switch.data matches 21 run scoreboard players add #rg_caddie_league_y switch.data 1
execute if score #rg_caddie_league_mod switch.data matches 21 run scoreboard players set #rg_caddie_league_mod switch.data 0

kill @s



#> switch:maps/survival/bowser_castle/regeneration_on_marker
#
# @within	switch:maps/survival/bowser_castle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_bowser_castle_y switch.data

execute if score #rg_bowser_castle_mod switch.data matches 0 at @s in switch:game run particle cloud 22006 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 0 at @s run clone from minecraft:overworld 22000 ~ 22000 22012 ~ 22245 to switch:game 22000 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 1 at @s in switch:game run particle cloud 22018 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 1 at @s run clone from minecraft:overworld 22012 ~ 22000 22024 ~ 22245 to switch:game 22012 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 2 at @s in switch:game run particle cloud 22030 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 2 at @s run clone from minecraft:overworld 22024 ~ 22000 22036 ~ 22245 to switch:game 22024 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 3 at @s in switch:game run particle cloud 22042 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 3 at @s run clone from minecraft:overworld 22036 ~ 22000 22048 ~ 22245 to switch:game 22036 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 4 at @s in switch:game run particle cloud 22053 ~0.5 22122 5 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 4 at @s run clone from minecraft:overworld 22048 ~ 22000 22059 ~ 22245 to switch:game 22048 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 5 at @s in switch:game run particle cloud 22065 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 5 at @s run clone from minecraft:overworld 22059 ~ 22000 22071 ~ 22245 to switch:game 22059 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 6 at @s in switch:game run particle cloud 22077 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 6 at @s run clone from minecraft:overworld 22071 ~ 22000 22083 ~ 22245 to switch:game 22071 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 7 at @s in switch:game run particle cloud 22089 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 7 at @s run clone from minecraft:overworld 22083 ~ 22000 22095 ~ 22245 to switch:game 22083 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 8 at @s in switch:game run particle cloud 22101 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 8 at @s run clone from minecraft:overworld 22095 ~ 22000 22107 ~ 22245 to switch:game 22095 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 9 at @s in switch:game run particle cloud 22113 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 9 at @s run clone from minecraft:overworld 22107 ~ 22000 22119 ~ 22245 to switch:game 22107 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 10 at @s in switch:game run particle cloud 22125 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 10 at @s run clone from minecraft:overworld 22119 ~ 22000 22131 ~ 22245 to switch:game 22119 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 11 at @s in switch:game run particle cloud 22137 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 11 at @s run clone from minecraft:overworld 22131 ~ 22000 22143 ~ 22245 to switch:game 22131 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 12 at @s in switch:game run particle cloud 22149 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 12 at @s run clone from minecraft:overworld 22143 ~ 22000 22155 ~ 22245 to switch:game 22143 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 13 at @s in switch:game run particle cloud 22161 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 13 at @s run clone from minecraft:overworld 22155 ~ 22000 22167 ~ 22245 to switch:game 22155 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 14 at @s in switch:game run particle cloud 22172 ~0.5 22122 5 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 14 at @s run clone from minecraft:overworld 22167 ~ 22000 22178 ~ 22245 to switch:game 22167 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 15 at @s in switch:game run particle cloud 22184 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 15 at @s run clone from minecraft:overworld 22178 ~ 22000 22190 ~ 22245 to switch:game 22178 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 16 at @s in switch:game run particle cloud 22196 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 16 at @s run clone from minecraft:overworld 22190 ~ 22000 22202 ~ 22245 to switch:game 22190 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 17 at @s in switch:game run particle cloud 22208 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 17 at @s run clone from minecraft:overworld 22202 ~ 22000 22214 ~ 22245 to switch:game 22202 ~0 22000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 18 at @s in switch:game run particle cloud 22220 ~0.5 22122 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 18 at @s run clone from minecraft:overworld 22214 ~ 22000 22226 ~ 22245 to switch:game 22214 ~0 22000 strict replace force

scoreboard players add #rg_bowser_castle_mod switch.data 1
execute if score #rg_bowser_castle_mod switch.data matches 19 in switch:game run kill @e[type=item,x=22113,y=100,z=22122,distance=..1000]
execute if score #rg_bowser_castle_mod switch.data matches 19 run scoreboard players add #rg_bowser_castle_y switch.data 1
execute if score #rg_bowser_castle_mod switch.data matches 19 run scoreboard players set #rg_bowser_castle_mod switch.data 0

kill @s


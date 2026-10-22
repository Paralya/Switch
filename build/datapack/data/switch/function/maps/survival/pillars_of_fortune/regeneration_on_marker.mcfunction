
#> switch:maps/survival/pillars_of_fortune/regeneration_on_marker
#
# @within	switch:maps/survival/pillars_of_fortune/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pillars_of_fortune_y switch.data

execute if score #rg_pillars_of_fortune_mod switch.data matches 0 at @s in switch:game run particle cloud 10010 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ -12000 10020 ~ -11900 to switch:game 10000 ~0 -12000 strict replace force

execute if score #rg_pillars_of_fortune_mod switch.data matches 1 at @s in switch:game run particle cloud 10030 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 1 at @s run clone from minecraft:overworld 10020 ~ -12000 10040 ~ -11900 to switch:game 10020 ~0 -12000 strict replace force

execute if score #rg_pillars_of_fortune_mod switch.data matches 2 at @s in switch:game run particle cloud 10050 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 2 at @s run clone from minecraft:overworld 10040 ~ -12000 10060 ~ -11900 to switch:game 10040 ~0 -12000 strict replace force

execute if score #rg_pillars_of_fortune_mod switch.data matches 3 at @s in switch:game run particle cloud 10070 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 3 at @s run clone from minecraft:overworld 10060 ~ -12000 10080 ~ -11900 to switch:game 10060 ~0 -12000 strict replace force

execute if score #rg_pillars_of_fortune_mod switch.data matches 4 at @s in switch:game run particle cloud 10090 ~0.5 -11950 10 0 25 0 250 force
execute if score #rg_pillars_of_fortune_mod switch.data matches 4 at @s run clone from minecraft:overworld 10080 ~ -12000 10100 ~ -11900 to switch:game 10080 ~0 -12000 strict replace force

scoreboard players add #rg_pillars_of_fortune_mod switch.data 1
execute if score #rg_pillars_of_fortune_mod switch.data matches 5 in switch:game run kill @e[type=item,x=10050,y=100,z=-11950,distance=..1000]
execute if score #rg_pillars_of_fortune_mod switch.data matches 5 run scoreboard players add #rg_pillars_of_fortune_y switch.data 1
execute if score #rg_pillars_of_fortune_mod switch.data matches 5 run scoreboard players set #rg_pillars_of_fortune_mod switch.data 0

kill @s


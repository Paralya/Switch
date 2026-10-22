
#> switch:maps/survival/nuketown_no_barrier/regeneration_on_marker
#
# @within	switch:maps/survival/nuketown_no_barrier/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_nuketown_no_barrier_y switch.data

execute if score #rg_nuketown_no_barrier_mod switch.data matches 0 at @s in switch:game run particle cloud 6006 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ -10000 6013 ~ -9780 to switch:game 6000 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 1 at @s in switch:game run particle cloud 6019 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 1 at @s run clone from minecraft:overworld 6013 ~ -10000 6026 ~ -9780 to switch:game 6013 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 2 at @s in switch:game run particle cloud 6032 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 2 at @s run clone from minecraft:overworld 6026 ~ -10000 6039 ~ -9780 to switch:game 6026 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 3 at @s in switch:game run particle cloud 6045 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 3 at @s run clone from minecraft:overworld 6039 ~ -10000 6052 ~ -9780 to switch:game 6039 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 4 at @s in switch:game run particle cloud 6058 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 4 at @s run clone from minecraft:overworld 6052 ~ -10000 6065 ~ -9780 to switch:game 6052 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 5 at @s in switch:game run particle cloud 6071 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 5 at @s run clone from minecraft:overworld 6065 ~ -10000 6078 ~ -9780 to switch:game 6065 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 6 at @s in switch:game run particle cloud 6084 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 6 at @s run clone from minecraft:overworld 6078 ~ -10000 6091 ~ -9780 to switch:game 6078 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 7 at @s in switch:game run particle cloud 6097 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 7 at @s run clone from minecraft:overworld 6091 ~ -10000 6104 ~ -9780 to switch:game 6091 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 8 at @s in switch:game run particle cloud 6110 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 8 at @s run clone from minecraft:overworld 6104 ~ -10000 6116 ~ -9780 to switch:game 6104 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 9 at @s in switch:game run particle cloud 6122 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 9 at @s run clone from minecraft:overworld 6116 ~ -10000 6129 ~ -9780 to switch:game 6116 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 10 at @s in switch:game run particle cloud 6135 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 10 at @s run clone from minecraft:overworld 6129 ~ -10000 6142 ~ -9780 to switch:game 6129 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 11 at @s in switch:game run particle cloud 6148 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 11 at @s run clone from minecraft:overworld 6142 ~ -10000 6155 ~ -9780 to switch:game 6142 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 12 at @s in switch:game run particle cloud 6161 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 12 at @s run clone from minecraft:overworld 6155 ~ -10000 6168 ~ -9780 to switch:game 6155 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 13 at @s in switch:game run particle cloud 6174 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 13 at @s run clone from minecraft:overworld 6168 ~ -10000 6181 ~ -9780 to switch:game 6168 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 14 at @s in switch:game run particle cloud 6187 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 14 at @s run clone from minecraft:overworld 6181 ~ -10000 6194 ~ -9780 to switch:game 6181 ~0 -10000 strict replace force

execute if score #rg_nuketown_no_barrier_mod switch.data matches 15 at @s in switch:game run particle cloud 6200 ~0.5 -9890 6 0 55 0 250 force
execute if score #rg_nuketown_no_barrier_mod switch.data matches 15 at @s run clone from minecraft:overworld 6194 ~ -10000 6207 ~ -9780 to switch:game 6194 ~0 -10000 strict replace force

scoreboard players add #rg_nuketown_no_barrier_mod switch.data 1
execute if score #rg_nuketown_no_barrier_mod switch.data matches 16 in switch:game run kill @e[type=item,x=6103,y=100,z=-9890,distance=..1000]
execute if score #rg_nuketown_no_barrier_mod switch.data matches 16 run scoreboard players add #rg_nuketown_no_barrier_y switch.data 1
execute if score #rg_nuketown_no_barrier_mod switch.data matches 16 run scoreboard players set #rg_nuketown_no_barrier_mod switch.data 0

kill @s


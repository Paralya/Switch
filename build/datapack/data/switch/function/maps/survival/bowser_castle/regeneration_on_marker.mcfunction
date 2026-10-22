
#> switch:maps/survival/bowser_castle/regeneration_on_marker
#
# @within	switch:maps/survival/bowser_castle/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_bowser_castle_y switch.data

execute if score #rg_bowser_castle_mod switch.data matches 0 at @s in switch:game run particle cloud -5994 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ -2000 -5988 ~ -1755 to switch:game -6000 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 1 at @s in switch:game run particle cloud -5982 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 1 at @s run clone from minecraft:overworld -5988 ~ -2000 -5976 ~ -1755 to switch:game -5988 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 2 at @s in switch:game run particle cloud -5970 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 2 at @s run clone from minecraft:overworld -5976 ~ -2000 -5964 ~ -1755 to switch:game -5976 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 3 at @s in switch:game run particle cloud -5958 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 3 at @s run clone from minecraft:overworld -5964 ~ -2000 -5952 ~ -1755 to switch:game -5964 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 4 at @s in switch:game run particle cloud -5947 ~0.5 -1878 5 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 4 at @s run clone from minecraft:overworld -5952 ~ -2000 -5941 ~ -1755 to switch:game -5952 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 5 at @s in switch:game run particle cloud -5935 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 5 at @s run clone from minecraft:overworld -5941 ~ -2000 -5929 ~ -1755 to switch:game -5941 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 6 at @s in switch:game run particle cloud -5923 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 6 at @s run clone from minecraft:overworld -5929 ~ -2000 -5917 ~ -1755 to switch:game -5929 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 7 at @s in switch:game run particle cloud -5911 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 7 at @s run clone from minecraft:overworld -5917 ~ -2000 -5905 ~ -1755 to switch:game -5917 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 8 at @s in switch:game run particle cloud -5899 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 8 at @s run clone from minecraft:overworld -5905 ~ -2000 -5893 ~ -1755 to switch:game -5905 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 9 at @s in switch:game run particle cloud -5887 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 9 at @s run clone from minecraft:overworld -5893 ~ -2000 -5881 ~ -1755 to switch:game -5893 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 10 at @s in switch:game run particle cloud -5875 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 10 at @s run clone from minecraft:overworld -5881 ~ -2000 -5869 ~ -1755 to switch:game -5881 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 11 at @s in switch:game run particle cloud -5863 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 11 at @s run clone from minecraft:overworld -5869 ~ -2000 -5857 ~ -1755 to switch:game -5869 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 12 at @s in switch:game run particle cloud -5851 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 12 at @s run clone from minecraft:overworld -5857 ~ -2000 -5845 ~ -1755 to switch:game -5857 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 13 at @s in switch:game run particle cloud -5839 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 13 at @s run clone from minecraft:overworld -5845 ~ -2000 -5833 ~ -1755 to switch:game -5845 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 14 at @s in switch:game run particle cloud -5828 ~0.5 -1878 5 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 14 at @s run clone from minecraft:overworld -5833 ~ -2000 -5822 ~ -1755 to switch:game -5833 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 15 at @s in switch:game run particle cloud -5816 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 15 at @s run clone from minecraft:overworld -5822 ~ -2000 -5810 ~ -1755 to switch:game -5822 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 16 at @s in switch:game run particle cloud -5804 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 16 at @s run clone from minecraft:overworld -5810 ~ -2000 -5798 ~ -1755 to switch:game -5810 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 17 at @s in switch:game run particle cloud -5792 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 17 at @s run clone from minecraft:overworld -5798 ~ -2000 -5786 ~ -1755 to switch:game -5798 ~0 -2000 strict replace force

execute if score #rg_bowser_castle_mod switch.data matches 18 at @s in switch:game run particle cloud -5780 ~0.5 -1878 6 0 61 0 250 force
execute if score #rg_bowser_castle_mod switch.data matches 18 at @s run clone from minecraft:overworld -5786 ~ -2000 -5774 ~ -1755 to switch:game -5786 ~0 -2000 strict replace force

scoreboard players add #rg_bowser_castle_mod switch.data 1
execute if score #rg_bowser_castle_mod switch.data matches 19 in switch:game run kill @e[type=item,x=-5887,y=100,z=-1877,distance=..1000]
execute if score #rg_bowser_castle_mod switch.data matches 19 run scoreboard players add #rg_bowser_castle_y switch.data 1
execute if score #rg_bowser_castle_mod switch.data matches 19 run scoreboard players set #rg_bowser_castle_mod switch.data 0

kill @s


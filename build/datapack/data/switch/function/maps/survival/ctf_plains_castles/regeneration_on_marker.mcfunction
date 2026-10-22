
#> switch:maps/survival/ctf_plains_castles/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_plains_castles/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_plains_castles_y switch.data

execute if score #rg_ctf_plains_castles_mod switch.data matches 0 at @s in switch:game run particle cloud -11994 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 0 at @s run clone from minecraft:overworld -12000 ~ -4000 -11987 ~ -3773 to switch:game -12000 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 1 at @s in switch:game run particle cloud -11981 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 1 at @s run clone from minecraft:overworld -11987 ~ -4000 -11974 ~ -3773 to switch:game -11987 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 2 at @s in switch:game run particle cloud -11968 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 2 at @s run clone from minecraft:overworld -11974 ~ -4000 -11961 ~ -3773 to switch:game -11974 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 3 at @s in switch:game run particle cloud -11955 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 3 at @s run clone from minecraft:overworld -11961 ~ -4000 -11948 ~ -3773 to switch:game -11961 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 4 at @s in switch:game run particle cloud -11941 ~0.5 -3887 7 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 4 at @s run clone from minecraft:overworld -11948 ~ -4000 -11934 ~ -3773 to switch:game -11948 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 5 at @s in switch:game run particle cloud -11928 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 5 at @s run clone from minecraft:overworld -11934 ~ -4000 -11921 ~ -3773 to switch:game -11934 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 6 at @s in switch:game run particle cloud -11915 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 6 at @s run clone from minecraft:overworld -11921 ~ -4000 -11908 ~ -3773 to switch:game -11921 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 7 at @s in switch:game run particle cloud -11902 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 7 at @s run clone from minecraft:overworld -11908 ~ -4000 -11895 ~ -3773 to switch:game -11908 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 8 at @s in switch:game run particle cloud -11889 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 8 at @s run clone from minecraft:overworld -11895 ~ -4000 -11882 ~ -3773 to switch:game -11895 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 9 at @s in switch:game run particle cloud -11876 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 9 at @s run clone from minecraft:overworld -11882 ~ -4000 -11869 ~ -3773 to switch:game -11882 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 10 at @s in switch:game run particle cloud -11863 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 10 at @s run clone from minecraft:overworld -11869 ~ -4000 -11856 ~ -3773 to switch:game -11869 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 11 at @s in switch:game run particle cloud -11850 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 11 at @s run clone from minecraft:overworld -11856 ~ -4000 -11843 ~ -3773 to switch:game -11856 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 12 at @s in switch:game run particle cloud -11837 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 12 at @s run clone from minecraft:overworld -11843 ~ -4000 -11830 ~ -3773 to switch:game -11843 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 13 at @s in switch:game run particle cloud -11823 ~0.5 -3887 7 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 13 at @s run clone from minecraft:overworld -11830 ~ -4000 -11816 ~ -3773 to switch:game -11830 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 14 at @s in switch:game run particle cloud -11810 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 14 at @s run clone from minecraft:overworld -11816 ~ -4000 -11803 ~ -3773 to switch:game -11816 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 15 at @s in switch:game run particle cloud -11797 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 15 at @s run clone from minecraft:overworld -11803 ~ -4000 -11790 ~ -3773 to switch:game -11803 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 16 at @s in switch:game run particle cloud -11784 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 16 at @s run clone from minecraft:overworld -11790 ~ -4000 -11777 ~ -3773 to switch:game -11790 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 17 at @s in switch:game run particle cloud -11771 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 17 at @s run clone from minecraft:overworld -11777 ~ -4000 -11764 ~ -3773 to switch:game -11777 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 18 at @s in switch:game run particle cloud -11758 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 18 at @s run clone from minecraft:overworld -11764 ~ -4000 -11751 ~ -3773 to switch:game -11764 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 19 at @s in switch:game run particle cloud -11745 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 19 at @s run clone from minecraft:overworld -11751 ~ -4000 -11738 ~ -3773 to switch:game -11751 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 20 at @s in switch:game run particle cloud -11732 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 20 at @s run clone from minecraft:overworld -11738 ~ -4000 -11725 ~ -3773 to switch:game -11738 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 21 at @s in switch:game run particle cloud -11718 ~0.5 -3887 7 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 21 at @s run clone from minecraft:overworld -11725 ~ -4000 -11711 ~ -3773 to switch:game -11725 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 22 at @s in switch:game run particle cloud -11705 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 22 at @s run clone from minecraft:overworld -11711 ~ -4000 -11698 ~ -3773 to switch:game -11711 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 23 at @s in switch:game run particle cloud -11692 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 23 at @s run clone from minecraft:overworld -11698 ~ -4000 -11685 ~ -3773 to switch:game -11698 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 24 at @s in switch:game run particle cloud -11679 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 24 at @s run clone from minecraft:overworld -11685 ~ -4000 -11672 ~ -3773 to switch:game -11685 ~0 -4000 strict replace force

execute if score #rg_ctf_plains_castles_mod switch.data matches 25 at @s in switch:game run particle cloud -11666 ~0.5 -3887 6 0 56 0 250 force
execute if score #rg_ctf_plains_castles_mod switch.data matches 25 at @s run clone from minecraft:overworld -11672 ~ -4000 -11659 ~ -3773 to switch:game -11672 ~0 -4000 strict replace force

scoreboard players add #rg_ctf_plains_castles_mod switch.data 1
execute if score #rg_ctf_plains_castles_mod switch.data matches 26 in switch:game run kill @e[type=item,x=-11829,y=100,z=-3886,distance=..1000]
execute if score #rg_ctf_plains_castles_mod switch.data matches 26 run scoreboard players add #rg_ctf_plains_castles_y switch.data 1
execute if score #rg_ctf_plains_castles_mod switch.data matches 26 run scoreboard players set #rg_ctf_plains_castles_mod switch.data 0

kill @s


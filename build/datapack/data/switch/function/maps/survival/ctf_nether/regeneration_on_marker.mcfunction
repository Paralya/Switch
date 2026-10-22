
#> switch:maps/survival/ctf_nether/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_nether/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_nether_y switch.data

execute if score #rg_ctf_nether_mod switch.data matches 0 at @s in switch:game run particle cloud -11996 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 0 at @s run clone from minecraft:overworld -12000 ~ -10000 -11992 ~ -9650 to switch:game -12000 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 1 at @s in switch:game run particle cloud -11988 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 1 at @s run clone from minecraft:overworld -11992 ~ -10000 -11983 ~ -9650 to switch:game -11992 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 2 at @s in switch:game run particle cloud -11979 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 2 at @s run clone from minecraft:overworld -11983 ~ -10000 -11975 ~ -9650 to switch:game -11983 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 3 at @s in switch:game run particle cloud -11971 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 3 at @s run clone from minecraft:overworld -11975 ~ -10000 -11966 ~ -9650 to switch:game -11975 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 4 at @s in switch:game run particle cloud -11962 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 4 at @s run clone from minecraft:overworld -11966 ~ -10000 -11958 ~ -9650 to switch:game -11966 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 5 at @s in switch:game run particle cloud -11954 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 5 at @s run clone from minecraft:overworld -11958 ~ -10000 -11950 ~ -9650 to switch:game -11958 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 6 at @s in switch:game run particle cloud -11946 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 6 at @s run clone from minecraft:overworld -11950 ~ -10000 -11941 ~ -9650 to switch:game -11950 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 7 at @s in switch:game run particle cloud -11937 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 7 at @s run clone from minecraft:overworld -11941 ~ -10000 -11933 ~ -9650 to switch:game -11941 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 8 at @s in switch:game run particle cloud -11929 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 8 at @s run clone from minecraft:overworld -11933 ~ -10000 -11924 ~ -9650 to switch:game -11933 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 9 at @s in switch:game run particle cloud -11920 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 9 at @s run clone from minecraft:overworld -11924 ~ -10000 -11916 ~ -9650 to switch:game -11924 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 10 at @s in switch:game run particle cloud -11912 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 10 at @s run clone from minecraft:overworld -11916 ~ -10000 -11907 ~ -9650 to switch:game -11916 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 11 at @s in switch:game run particle cloud -11903 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 11 at @s run clone from minecraft:overworld -11907 ~ -10000 -11899 ~ -9650 to switch:game -11907 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 12 at @s in switch:game run particle cloud -11895 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 12 at @s run clone from minecraft:overworld -11899 ~ -10000 -11891 ~ -9650 to switch:game -11899 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 13 at @s in switch:game run particle cloud -11887 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 13 at @s run clone from minecraft:overworld -11891 ~ -10000 -11882 ~ -9650 to switch:game -11891 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 14 at @s in switch:game run particle cloud -11878 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 14 at @s run clone from minecraft:overworld -11882 ~ -10000 -11874 ~ -9650 to switch:game -11882 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 15 at @s in switch:game run particle cloud -11870 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 15 at @s run clone from minecraft:overworld -11874 ~ -10000 -11865 ~ -9650 to switch:game -11874 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 16 at @s in switch:game run particle cloud -11861 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 16 at @s run clone from minecraft:overworld -11865 ~ -10000 -11857 ~ -9650 to switch:game -11865 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 17 at @s in switch:game run particle cloud -11853 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 17 at @s run clone from minecraft:overworld -11857 ~ -10000 -11848 ~ -9650 to switch:game -11857 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 18 at @s in switch:game run particle cloud -11844 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 18 at @s run clone from minecraft:overworld -11848 ~ -10000 -11840 ~ -9650 to switch:game -11848 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 19 at @s in switch:game run particle cloud -11836 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 19 at @s run clone from minecraft:overworld -11840 ~ -10000 -11832 ~ -9650 to switch:game -11840 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 20 at @s in switch:game run particle cloud -11828 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 20 at @s run clone from minecraft:overworld -11832 ~ -10000 -11823 ~ -9650 to switch:game -11832 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 21 at @s in switch:game run particle cloud -11819 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 21 at @s run clone from minecraft:overworld -11823 ~ -10000 -11815 ~ -9650 to switch:game -11823 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 22 at @s in switch:game run particle cloud -11811 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 22 at @s run clone from minecraft:overworld -11815 ~ -10000 -11806 ~ -9650 to switch:game -11815 ~0 -10000 strict replace force

execute if score #rg_ctf_nether_mod switch.data matches 23 at @s in switch:game run particle cloud -11802 ~0.5 -9825 4 0 87 0 250 force
execute if score #rg_ctf_nether_mod switch.data matches 23 at @s run clone from minecraft:overworld -11806 ~ -10000 -11798 ~ -9650 to switch:game -11806 ~0 -10000 strict replace force

scoreboard players add #rg_ctf_nether_mod switch.data 1
execute if score #rg_ctf_nether_mod switch.data matches 24 in switch:game run kill @e[type=item,x=-11899,y=100,z=-9825,distance=..1000]
execute if score #rg_ctf_nether_mod switch.data matches 24 run scoreboard players add #rg_ctf_nether_y switch.data 1
execute if score #rg_ctf_nether_mod switch.data matches 24 run scoreboard players set #rg_ctf_nether_mod switch.data 0

kill @s


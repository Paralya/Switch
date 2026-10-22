
#> switch:maps/survival/ctf_forest_castles/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_forest_castles/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_forest_castles_y switch.data

execute if score #rg_ctf_forest_castles_mod switch.data matches 0 at @s in switch:game run particle cloud -11994 ~0.5 -11892 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 0 at @s run clone from minecraft:overworld -12000 ~ -12000 -11987 ~ -11784 to switch:game -12000 ~0 -12000 strict replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 1 at @s in switch:game run particle cloud -11981 ~0.5 -11892 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 1 at @s run clone from minecraft:overworld -11987 ~ -12000 -11975 ~ -11784 to switch:game -11987 ~0 -12000 strict replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 2 at @s in switch:game run particle cloud -11969 ~0.5 -11892 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 2 at @s run clone from minecraft:overworld -11975 ~ -12000 -11962 ~ -11784 to switch:game -11975 ~0 -12000 strict replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 3 at @s in switch:game run particle cloud -11956 ~0.5 -11892 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 3 at @s run clone from minecraft:overworld -11962 ~ -12000 -11950 ~ -11784 to switch:game -11962 ~0 -12000 strict replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 4 at @s in switch:game run particle cloud -11944 ~0.5 -11892 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 4 at @s run clone from minecraft:overworld -11950 ~ -12000 -11937 ~ -11784 to switch:game -11950 ~0 -12000 strict replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 5 at @s in switch:game run particle cloud -11931 ~0.5 -11892 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 5 at @s run clone from minecraft:overworld -11937 ~ -12000 -11924 ~ -11784 to switch:game -11937 ~0 -12000 strict replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 6 at @s in switch:game run particle cloud -11918 ~0.5 -11892 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 6 at @s run clone from minecraft:overworld -11924 ~ -12000 -11912 ~ -11784 to switch:game -11924 ~0 -12000 strict replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 7 at @s in switch:game run particle cloud -11906 ~0.5 -11892 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 7 at @s run clone from minecraft:overworld -11912 ~ -12000 -11899 ~ -11784 to switch:game -11912 ~0 -12000 strict replace force

scoreboard players add #rg_ctf_forest_castles_mod switch.data 1
execute if score #rg_ctf_forest_castles_mod switch.data matches 8 in switch:game run kill @e[type=item,x=-11949,y=100,z=-11892,distance=..1000]
execute if score #rg_ctf_forest_castles_mod switch.data matches 8 run scoreboard players add #rg_ctf_forest_castles_y switch.data 1
execute if score #rg_ctf_forest_castles_mod switch.data matches 8 run scoreboard players set #rg_ctf_forest_castles_mod switch.data 0

kill @s



#> switch:maps/survival/vilarles_castillo/regeneration_on_marker
#
# @within	switch:maps/survival/vilarles_castillo/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_vilarles_castillo_y switch.data

execute if score #rg_vilarles_castillo_mod switch.data matches 0 at @s in switch:game run particle cloud -7992 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 0 at @s run clone from minecraft:overworld -8000 ~ -8000 -7984 ~ -7827 to switch:game -8000 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 1 at @s in switch:game run particle cloud -7976 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 1 at @s run clone from minecraft:overworld -7984 ~ -8000 -7968 ~ -7827 to switch:game -7984 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 2 at @s in switch:game run particle cloud -7960 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 2 at @s run clone from minecraft:overworld -7968 ~ -8000 -7952 ~ -7827 to switch:game -7968 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 3 at @s in switch:game run particle cloud -7944 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 3 at @s run clone from minecraft:overworld -7952 ~ -8000 -7936 ~ -7827 to switch:game -7952 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 4 at @s in switch:game run particle cloud -7928 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 4 at @s run clone from minecraft:overworld -7936 ~ -8000 -7920 ~ -7827 to switch:game -7936 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 5 at @s in switch:game run particle cloud -7912 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 5 at @s run clone from minecraft:overworld -7920 ~ -8000 -7903 ~ -7827 to switch:game -7920 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 6 at @s in switch:game run particle cloud -7895 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 6 at @s run clone from minecraft:overworld -7903 ~ -8000 -7887 ~ -7827 to switch:game -7903 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 7 at @s in switch:game run particle cloud -7879 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 7 at @s run clone from minecraft:overworld -7887 ~ -8000 -7871 ~ -7827 to switch:game -7887 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 8 at @s in switch:game run particle cloud -7863 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 8 at @s run clone from minecraft:overworld -7871 ~ -8000 -7855 ~ -7827 to switch:game -7871 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 9 at @s in switch:game run particle cloud -7847 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 9 at @s run clone from minecraft:overworld -7855 ~ -8000 -7839 ~ -7827 to switch:game -7855 ~0 -8000 strict replace force

execute if score #rg_vilarles_castillo_mod switch.data matches 10 at @s in switch:game run particle cloud -7831 ~0.5 -7914 8 0 43 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 10 at @s run clone from minecraft:overworld -7839 ~ -8000 -7823 ~ -7827 to switch:game -7839 ~0 -8000 strict replace force

scoreboard players add #rg_vilarles_castillo_mod switch.data 1
execute if score #rg_vilarles_castillo_mod switch.data matches 11 in switch:game run kill @e[type=item,x=-7911,y=100,z=-7913,distance=..1000]
execute if score #rg_vilarles_castillo_mod switch.data matches 11 run scoreboard players add #rg_vilarles_castillo_y switch.data 1
execute if score #rg_vilarles_castillo_mod switch.data matches 11 run scoreboard players set #rg_vilarles_castillo_mod switch.data 0

kill @s


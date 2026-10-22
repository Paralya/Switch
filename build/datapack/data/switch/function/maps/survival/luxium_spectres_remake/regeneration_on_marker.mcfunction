
#> switch:maps/survival/luxium_spectres_remake/regeneration_on_marker
#
# @within	switch:maps/survival/luxium_spectres_remake/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_luxium_spectres_remake_y switch.data

execute if score #rg_luxium_spectres_remake_mod switch.data matches 0 at @s in switch:game run particle cloud -9990 ~0.5 4053 10 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ 4000 -9979 ~ 4106 to switch:game -10000 ~0 4000 strict replace force

execute if score #rg_luxium_spectres_remake_mod switch.data matches 1 at @s in switch:game run particle cloud -9969 ~0.5 4053 10 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 1 at @s run clone from minecraft:overworld -9979 ~ 4000 -9958 ~ 4106 to switch:game -9979 ~0 4000 strict replace force

execute if score #rg_luxium_spectres_remake_mod switch.data matches 2 at @s in switch:game run particle cloud -9947 ~0.5 4053 11 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 2 at @s run clone from minecraft:overworld -9958 ~ 4000 -9936 ~ 4106 to switch:game -9958 ~0 4000 strict replace force

execute if score #rg_luxium_spectres_remake_mod switch.data matches 3 at @s in switch:game run particle cloud -9926 ~0.5 4053 10 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 3 at @s run clone from minecraft:overworld -9936 ~ 4000 -9915 ~ 4106 to switch:game -9936 ~0 4000 strict replace force

execute if score #rg_luxium_spectres_remake_mod switch.data matches 4 at @s in switch:game run particle cloud -9905 ~0.5 4053 10 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 4 at @s run clone from minecraft:overworld -9915 ~ 4000 -9894 ~ 4106 to switch:game -9915 ~0 4000 strict replace force

scoreboard players add #rg_luxium_spectres_remake_mod switch.data 1
execute if score #rg_luxium_spectres_remake_mod switch.data matches 5 in switch:game run kill @e[type=item,x=-9947,y=100,z=4053,distance=..1000]
execute if score #rg_luxium_spectres_remake_mod switch.data matches 5 run scoreboard players add #rg_luxium_spectres_remake_y switch.data 1
execute if score #rg_luxium_spectres_remake_mod switch.data matches 5 run scoreboard players set #rg_luxium_spectres_remake_mod switch.data 0

kill @s


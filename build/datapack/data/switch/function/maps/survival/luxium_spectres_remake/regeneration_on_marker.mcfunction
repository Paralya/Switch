
#> switch:maps/survival/luxium_spectres_remake/regeneration_on_marker
#
# @within	switch:maps/survival/luxium_spectres_remake/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_luxium_spectres_remake_y switch.data

execute if score #rg_luxium_spectres_remake_mod switch.data matches 0 at @s in switch:game run particle cloud 142010 ~100.5 142053 10 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 0 at @s run clone from minecraft:overworld 142000 ~ 142000 142021 ~ 142106 to switch:game 142000 ~100 142000 replace force

execute if score #rg_luxium_spectres_remake_mod switch.data matches 1 at @s in switch:game run particle cloud 142031 ~100.5 142053 10 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 1 at @s run clone from minecraft:overworld 142021 ~ 142000 142042 ~ 142106 to switch:game 142021 ~100 142000 replace force

execute if score #rg_luxium_spectres_remake_mod switch.data matches 2 at @s in switch:game run particle cloud 142053 ~100.5 142053 11 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 2 at @s run clone from minecraft:overworld 142042 ~ 142000 142064 ~ 142106 to switch:game 142042 ~100 142000 replace force

execute if score #rg_luxium_spectres_remake_mod switch.data matches 3 at @s in switch:game run particle cloud 142074 ~100.5 142053 10 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 3 at @s run clone from minecraft:overworld 142064 ~ 142000 142085 ~ 142106 to switch:game 142064 ~100 142000 replace force

execute if score #rg_luxium_spectres_remake_mod switch.data matches 4 at @s in switch:game run particle cloud 142095 ~100.5 142053 10 0 26 0 250 force
execute if score #rg_luxium_spectres_remake_mod switch.data matches 4 at @s run clone from minecraft:overworld 142085 ~ 142000 142106 ~ 142106 to switch:game 142085 ~100 142000 replace force

scoreboard players add #rg_luxium_spectres_remake_mod switch.data 1
execute if score #rg_luxium_spectres_remake_mod switch.data matches 5 in switch:game run kill @e[type=item,x=142053,y=0,z=142053,distance=..1000]
execute if score #rg_luxium_spectres_remake_mod switch.data matches 5 run scoreboard players add #rg_luxium_spectres_remake_y switch.data 1
execute if score #rg_luxium_spectres_remake_mod switch.data matches 5 run scoreboard players set #rg_luxium_spectres_remake_mod switch.data 0

kill @s


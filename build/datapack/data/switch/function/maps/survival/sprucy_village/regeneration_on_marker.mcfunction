
#> switch:maps/survival/sprucy_village/regeneration_on_marker
#
# @within	switch:maps/survival/sprucy_village/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_sprucy_village_y switch.data

execute if score #rg_sprucy_village_mod switch.data matches 0 at @s in switch:game run particle cloud 78012 ~100.5 78056 12 0 28 0 250 force
execute if score #rg_sprucy_village_mod switch.data matches 0 at @s run clone from minecraft:overworld 78000 ~ 78000 78024 ~ 78112 to switch:game 78000 ~100 78000 replace force

execute if score #rg_sprucy_village_mod switch.data matches 1 at @s in switch:game run particle cloud 78036 ~100.5 78056 12 0 28 0 250 force
execute if score #rg_sprucy_village_mod switch.data matches 1 at @s run clone from minecraft:overworld 78024 ~ 78000 78049 ~ 78112 to switch:game 78024 ~100 78000 replace force

execute if score #rg_sprucy_village_mod switch.data matches 2 at @s in switch:game run particle cloud 78061 ~100.5 78056 12 0 28 0 250 force
execute if score #rg_sprucy_village_mod switch.data matches 2 at @s run clone from minecraft:overworld 78049 ~ 78000 78073 ~ 78112 to switch:game 78049 ~100 78000 replace force

execute if score #rg_sprucy_village_mod switch.data matches 3 at @s in switch:game run particle cloud 78085 ~100.5 78056 12 0 28 0 250 force
execute if score #rg_sprucy_village_mod switch.data matches 3 at @s run clone from minecraft:overworld 78073 ~ 78000 78098 ~ 78112 to switch:game 78073 ~100 78000 replace force

execute if score #rg_sprucy_village_mod switch.data matches 4 at @s in switch:game run particle cloud 78110 ~100.5 78056 12 0 28 0 250 force
execute if score #rg_sprucy_village_mod switch.data matches 4 at @s run clone from minecraft:overworld 78098 ~ 78000 78122 ~ 78112 to switch:game 78098 ~100 78000 replace force

execute if score #rg_sprucy_village_mod switch.data matches 5 at @s in switch:game run particle cloud 78134 ~100.5 78056 12 0 28 0 250 force
execute if score #rg_sprucy_village_mod switch.data matches 5 at @s run clone from minecraft:overworld 78122 ~ 78000 78147 ~ 78112 to switch:game 78122 ~100 78000 replace force

execute if score #rg_sprucy_village_mod switch.data matches 6 at @s in switch:game run particle cloud 78159 ~100.5 78056 12 0 28 0 250 force
execute if score #rg_sprucy_village_mod switch.data matches 6 at @s run clone from minecraft:overworld 78147 ~ 78000 78171 ~ 78112 to switch:game 78147 ~100 78000 replace force

scoreboard players add #rg_sprucy_village_mod switch.data 1
execute if score #rg_sprucy_village_mod switch.data matches 7 in switch:game run kill @e[type=item,x=78085,y=0,z=78056,distance=..1000]
execute if score #rg_sprucy_village_mod switch.data matches 7 run scoreboard players add #rg_sprucy_village_y switch.data 1
execute if score #rg_sprucy_village_mod switch.data matches 7 run scoreboard players set #rg_sprucy_village_mod switch.data 0

kill @s


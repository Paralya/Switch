
#> switch:maps/survival/ctf_forest_castles/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_forest_castles/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_forest_castles_y switch.data

execute if score #rg_ctf_forest_castles_mod switch.data matches 0 at @s in switch:game run particle cloud 150006 ~0.5 150108 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 0 at @s run clone from minecraft:overworld 150000 ~ 150000 150013 ~ 150216 to switch:game 150000 ~0 150000 replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 1 at @s in switch:game run particle cloud 150019 ~0.5 150108 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 1 at @s run clone from minecraft:overworld 150013 ~ 150000 150025 ~ 150216 to switch:game 150013 ~0 150000 replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 2 at @s in switch:game run particle cloud 150031 ~0.5 150108 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 2 at @s run clone from minecraft:overworld 150025 ~ 150000 150038 ~ 150216 to switch:game 150025 ~0 150000 replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 3 at @s in switch:game run particle cloud 150044 ~0.5 150108 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 3 at @s run clone from minecraft:overworld 150038 ~ 150000 150050 ~ 150216 to switch:game 150038 ~0 150000 replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 4 at @s in switch:game run particle cloud 150056 ~0.5 150108 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 4 at @s run clone from minecraft:overworld 150050 ~ 150000 150063 ~ 150216 to switch:game 150050 ~0 150000 replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 5 at @s in switch:game run particle cloud 150069 ~0.5 150108 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 5 at @s run clone from minecraft:overworld 150063 ~ 150000 150076 ~ 150216 to switch:game 150063 ~0 150000 replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 6 at @s in switch:game run particle cloud 150082 ~0.5 150108 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 6 at @s run clone from minecraft:overworld 150076 ~ 150000 150088 ~ 150216 to switch:game 150076 ~0 150000 replace force

execute if score #rg_ctf_forest_castles_mod switch.data matches 7 at @s in switch:game run particle cloud 150094 ~0.5 150108 6 0 54 0 250 force
execute if score #rg_ctf_forest_castles_mod switch.data matches 7 at @s run clone from minecraft:overworld 150088 ~ 150000 150101 ~ 150216 to switch:game 150088 ~0 150000 replace force

scoreboard players add #rg_ctf_forest_castles_mod switch.data 1
execute if score #rg_ctf_forest_castles_mod switch.data matches 8 in switch:game run kill @e[type=item,x=150050,y=100,z=150108,distance=..1000]
execute if score #rg_ctf_forest_castles_mod switch.data matches 8 run scoreboard players add #rg_ctf_forest_castles_y switch.data 1
execute if score #rg_ctf_forest_castles_mod switch.data matches 8 run scoreboard players set #rg_ctf_forest_castles_mod switch.data 0

kill @s



execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_dark_forest_hills_y switch.data

execute if score #rg_dark_forest_hills_mod switch.data matches 0 at @s run particle cloud 39006 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 0 at @s run clone 39000 ~ 39000 39013 ~ 39221 39000 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 1 at @s run particle cloud 39019 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 1 at @s run clone 39013 ~ 39000 39026 ~ 39221 39013 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 2 at @s run particle cloud 39032 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 2 at @s run clone 39026 ~ 39000 39039 ~ 39221 39026 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 3 at @s run particle cloud 39045 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 3 at @s run clone 39039 ~ 39000 39052 ~ 39221 39039 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 4 at @s run particle cloud 39058 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 4 at @s run clone 39052 ~ 39000 39065 ~ 39221 39052 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 5 at @s run particle cloud 39071 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 5 at @s run clone 39065 ~ 39000 39078 ~ 39221 39065 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 6 at @s run particle cloud 39084 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 6 at @s run clone 39078 ~ 39000 39091 ~ 39221 39078 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 7 at @s run particle cloud 39097 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 7 at @s run clone 39091 ~ 39000 39104 ~ 39221 39091 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 8 at @s run particle cloud 39110 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 8 at @s run clone 39104 ~ 39000 39117 ~ 39221 39104 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 9 at @s run particle cloud 39123 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 9 at @s run clone 39117 ~ 39000 39130 ~ 39221 39117 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 10 at @s run particle cloud 39136 ~100.5 39110 6 0 55 0 250 force
execute if score #rg_dark_forest_hills_mod switch.data matches 10 at @s run clone 39130 ~ 39000 39143 ~ 39221 39130 ~100 39000 replace force
execute if score #rg_dark_forest_hills_mod switch.data matches 11 run kill @e[type=item,x=39071,y=0,z=39110,distance=..1000]

scoreboard players add #rg_dark_forest_hills_mod switch.data 1
execute if score #rg_dark_forest_hills_mod switch.data matches 11 run scoreboard players add #rg_dark_forest_hills_y switch.data 1
execute if score #rg_dark_forest_hills_mod switch.data matches 11 run scoreboard players set #rg_dark_forest_hills_mod switch.data 0

kill @s


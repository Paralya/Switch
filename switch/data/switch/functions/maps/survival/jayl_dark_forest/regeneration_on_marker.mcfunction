
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_jayl_dark_forest_y switch.data

execute if score #rg_jayl_dark_forest_mod switch.data matches 0 at @s run particle cloud 33823 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 0 at @s run clone 33813 ~ 33873 33834 ~ 34000 33813 ~100 33873 replace force
execute if score #rg_jayl_dark_forest_mod switch.data matches 1 at @s run particle cloud 33844 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 1 at @s run clone 33834 ~ 33873 33855 ~ 34000 33834 ~100 33873 replace force
execute if score #rg_jayl_dark_forest_mod switch.data matches 2 at @s run particle cloud 33865 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 2 at @s run clone 33855 ~ 33873 33875 ~ 34000 33855 ~100 33873 replace force
execute if score #rg_jayl_dark_forest_mod switch.data matches 3 at @s run particle cloud 33885 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 3 at @s run clone 33875 ~ 33873 33896 ~ 34000 33875 ~100 33873 replace force
execute if score #rg_jayl_dark_forest_mod switch.data matches 4 at @s run particle cloud 33906 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 4 at @s run clone 33896 ~ 33873 33917 ~ 34000 33896 ~100 33873 replace force
execute if score #rg_jayl_dark_forest_mod switch.data matches 5 at @s run particle cloud 33927 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 5 at @s run clone 33917 ~ 33873 33938 ~ 34000 33917 ~100 33873 replace force
execute if score #rg_jayl_dark_forest_mod switch.data matches 6 at @s run particle cloud 33948 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 6 at @s run clone 33938 ~ 33873 33958 ~ 34000 33938 ~100 33873 replace force
execute if score #rg_jayl_dark_forest_mod switch.data matches 7 at @s run particle cloud 33968 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 7 at @s run clone 33958 ~ 33873 33979 ~ 34000 33958 ~100 33873 replace force
execute if score #rg_jayl_dark_forest_mod switch.data matches 8 at @s run particle cloud 33989 ~100.5 33936 10 0 31 0 250 force
execute if score #rg_jayl_dark_forest_mod switch.data matches 8 at @s run clone 33979 ~ 33873 34000 ~ 34000 33979 ~100 33873 replace force

execute if score #rg_jayl_dark_forest_mod switch.data matches 9 run kill @e[type=item,x=33906,y=0,z=33936,distance=..1000]
scoreboard players add #rg_jayl_dark_forest_mod switch.data 1
execute if score #rg_jayl_dark_forest_mod switch.data matches 9 run scoreboard players add #rg_jayl_dark_forest_y switch.data 1
execute if score #rg_jayl_dark_forest_mod switch.data matches 9 run scoreboard players set #rg_jayl_dark_forest_mod switch.data 0

kill @s


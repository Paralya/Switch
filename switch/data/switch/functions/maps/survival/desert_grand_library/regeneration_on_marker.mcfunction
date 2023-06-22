
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_desert_grand_library_y switch.data

execute if score #rg_desert_grand_library_mod switch.data matches 0 at @s run particle cloud 46982 ~100.5 47006 11 0 17 0 250 force
execute if score #rg_desert_grand_library_mod switch.data matches 0 at @s run clone 46971 ~ 46971 46993 ~ 47042 46971 ~100 46971 replace force
execute if score #rg_desert_grand_library_mod switch.data matches 1 at @s run particle cloud 47003 ~100.5 47006 10 0 17 0 250 force
execute if score #rg_desert_grand_library_mod switch.data matches 1 at @s run clone 46993 ~ 46971 47014 ~ 47042 46993 ~100 46971 replace force
execute if score #rg_desert_grand_library_mod switch.data matches 2 at @s run particle cloud 47025 ~100.5 47006 11 0 17 0 250 force
execute if score #rg_desert_grand_library_mod switch.data matches 2 at @s run clone 47014 ~ 46971 47036 ~ 47042 47014 ~100 46971 replace force
execute if score #rg_desert_grand_library_mod switch.data matches 3 run kill @e[type=item,x=47003,y=0,z=47006,distance=..1000]

scoreboard players add #rg_desert_grand_library_mod switch.data 1
execute if score #rg_desert_grand_library_mod switch.data matches 3 run scoreboard players add #rg_desert_grand_library_y switch.data 1
execute if score #rg_desert_grand_library_mod switch.data matches 3 run scoreboard players set #rg_desert_grand_library_mod switch.data 0

kill @s


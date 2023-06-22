
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_prison_y switch.data

execute if score #rg_stardust_prison_mod switch.data matches 0 at @s run particle cloud 106007 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 0 at @s run clone 106000 ~ 106000 106015 ~ 106178 106000 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 1 at @s run particle cloud 106022 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 1 at @s run clone 106015 ~ 106000 106029 ~ 106178 106015 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 2 at @s run particle cloud 106036 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 2 at @s run clone 106029 ~ 106000 106044 ~ 106178 106029 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 3 at @s run particle cloud 106051 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 3 at @s run clone 106044 ~ 106000 106059 ~ 106178 106044 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 4 at @s run particle cloud 106066 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 4 at @s run clone 106059 ~ 106000 106073 ~ 106178 106059 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 5 at @s run particle cloud 106080 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 5 at @s run clone 106073 ~ 106000 106088 ~ 106178 106073 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 6 at @s run particle cloud 106095 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 6 at @s run clone 106088 ~ 106000 106103 ~ 106178 106088 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 7 at @s run particle cloud 106110 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 7 at @s run clone 106103 ~ 106000 106117 ~ 106178 106103 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 8 at @s run particle cloud 106124 ~100.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 8 at @s run clone 106117 ~ 106000 106132 ~ 106178 106117 ~100 106000 replace force
execute if score #rg_stardust_prison_mod switch.data matches 9 run kill @e[type=item,x=106066,y=0,z=106089,distance=..1000]

scoreboard players add #rg_stardust_prison_mod switch.data 1
execute if score #rg_stardust_prison_mod switch.data matches 9 run scoreboard players add #rg_stardust_prison_y switch.data 1
execute if score #rg_stardust_prison_mod switch.data matches 9 run scoreboard players set #rg_stardust_prison_mod switch.data 0

kill @s


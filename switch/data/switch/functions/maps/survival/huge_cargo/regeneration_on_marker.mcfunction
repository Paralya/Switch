
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_huge_cargo_y switch.data

execute if score #rg_huge_cargo_mod switch.data matches 0 at @s run particle cloud 41012 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 0 at @s run clone 41000 ~ 40892 41024 ~ 41000 41000 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 1 at @s run particle cloud 41036 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 1 at @s run clone 41024 ~ 40892 41049 ~ 41000 41024 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 2 at @s run particle cloud 41061 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 2 at @s run clone 41049 ~ 40892 41073 ~ 41000 41049 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 3 at @s run particle cloud 41085 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 3 at @s run clone 41073 ~ 40892 41097 ~ 41000 41073 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 4 at @s run particle cloud 41109 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 4 at @s run clone 41097 ~ 40892 41121 ~ 41000 41097 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 5 at @s run particle cloud 41133 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 5 at @s run clone 41121 ~ 40892 41146 ~ 41000 41121 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 6 at @s run particle cloud 41158 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 6 at @s run clone 41146 ~ 40892 41170 ~ 41000 41146 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 7 at @s run particle cloud 41182 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 7 at @s run clone 41170 ~ 40892 41194 ~ 41000 41170 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 8 at @s run particle cloud 41206 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 8 at @s run clone 41194 ~ 40892 41218 ~ 41000 41194 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 9 at @s run particle cloud 41230 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 9 at @s run clone 41218 ~ 40892 41243 ~ 41000 41218 ~164 40892 replace force
execute if score #rg_huge_cargo_mod switch.data matches 10 at @s run particle cloud 41255 ~164.5 40946 12 0 27 0 250 force
execute if score #rg_huge_cargo_mod switch.data matches 10 at @s run clone 41243 ~ 40892 41267 ~ 41000 41243 ~164 40892 replace force

execute if score #rg_huge_cargo_mod switch.data matches 11 run kill @e[type=item,x=41133,y=-64,z=40946,distance=..1000]
scoreboard players add #rg_huge_cargo_mod switch.data 1
execute if score #rg_huge_cargo_mod switch.data matches 11 run scoreboard players add #rg_huge_cargo_y switch.data 1
execute if score #rg_huge_cargo_mod switch.data matches 11 run scoreboard players set #rg_huge_cargo_mod switch.data 0

kill @s


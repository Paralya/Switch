
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_vilarles_castillo_y switch.data

execute if score #rg_vilarles_castillo_mod switch.data matches 0 at @s run particle cloud 51905 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 0 at @s run clone 51899 ~ 51853 51912 ~ 52071 51899 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 1 at @s run particle cloud 51919 ~164.5 51962 7 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 1 at @s run clone 51912 ~ 51853 51926 ~ 52071 51912 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 2 at @s run particle cloud 51933 ~164.5 51962 7 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 2 at @s run clone 51926 ~ 51853 51940 ~ 52071 51926 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 3 at @s run particle cloud 51946 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 3 at @s run clone 51940 ~ 51853 51953 ~ 52071 51940 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 4 at @s run particle cloud 51959 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 4 at @s run clone 51953 ~ 51853 51966 ~ 52071 51953 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 5 at @s run particle cloud 51973 ~164.5 51962 7 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 5 at @s run clone 51966 ~ 51853 51980 ~ 52071 51966 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 6 at @s run particle cloud 51987 ~164.5 51962 7 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 6 at @s run clone 51980 ~ 51853 51994 ~ 52071 51980 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 7 at @s run particle cloud 52000 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 7 at @s run clone 51994 ~ 51853 52007 ~ 52071 51994 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 8 at @s run particle cloud 52013 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 8 at @s run clone 52007 ~ 51853 52020 ~ 52071 52007 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 9 at @s run particle cloud 52027 ~164.5 51962 7 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 9 at @s run clone 52020 ~ 51853 52034 ~ 52071 52020 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 10 at @s run particle cloud 52041 ~164.5 51962 7 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 10 at @s run clone 52034 ~ 51853 52048 ~ 52071 52034 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 11 at @s run particle cloud 52054 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 11 at @s run clone 52048 ~ 51853 52061 ~ 52071 52048 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 12 at @s run particle cloud 52067 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 12 at @s run clone 52061 ~ 51853 52074 ~ 52071 52061 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 13 at @s run particle cloud 52081 ~164.5 51962 7 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 13 at @s run clone 52074 ~ 51853 52088 ~ 52071 52074 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 14 at @s run particle cloud 52095 ~164.5 51962 7 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 14 at @s run clone 52088 ~ 51853 52102 ~ 52071 52088 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 15 at @s run particle cloud 52108 ~164.5 51962 6 0 54 0 250 force
execute if score #rg_vilarles_castillo_mod switch.data matches 15 at @s run clone 52102 ~ 51853 52115 ~ 52071 52102 ~164 51853 replace force
execute if score #rg_vilarles_castillo_mod switch.data matches 16 run kill @e[type=item,x=52007,y=-64,z=51962,distance=..1000]

scoreboard players add #rg_vilarles_castillo_mod switch.data 1
execute if score #rg_vilarles_castillo_mod switch.data matches 16 run scoreboard players add #rg_vilarles_castillo_y switch.data 1
execute if score #rg_vilarles_castillo_mod switch.data matches 16 run scoreboard players set #rg_vilarles_castillo_mod switch.data 0

kill @s


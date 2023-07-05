
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_de_a_coudre_1_y switch.data

execute at @s run particle cloud 28998 ~1 29000 11 0 6 0 126 force
execute at @s run fill 28987 ~ 28987 29009 ~ 29013 water replace #switch:de_a_coudre
execute at @s run particle cloud 29020 ~1 29000 11 0 6 0 126 force
execute at @s run fill 29009 ~ 28987 29031 ~ 29013 water replace #switch:de_a_coudre

kill @e[type=item,x=29009,y=100,z=29000,distance=..1000]
scoreboard players add #rg_de_a_coudre_1_y switch.data 1

kill @s


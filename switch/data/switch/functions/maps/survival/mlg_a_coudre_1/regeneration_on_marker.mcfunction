
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_mlg_a_coudre_1_y switch.data

execute at @s run particle cloud 30993 ~1 31000 6 0 6 0 126 force
execute at @s run fill 30987 ~ 30987 30999 ~ 31013 air replace #switch:de_a_coudre
execute at @s run particle cloud 31005 ~1 31000 6 0 6 0 126 force
execute at @s run fill 30999 ~ 30987 31011 ~ 31013 air replace #switch:de_a_coudre

kill @e[type=item,x=30999,y=100,z=31000,distance=..1000]
scoreboard players add #rg_mlg_a_coudre_1_y switch.data 1

kill @s



execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_lg_medieval_y switch.data

execute if score #rg_lg_medieval_mod switch.data matches 0 at @s run particle cloud 95007 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 0 at @s run clone 95000 ~ 95000 95015 ~ 95203 95000 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 1 at @s run particle cloud 95022 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 1 at @s run clone 95015 ~ 95000 95029 ~ 95203 95015 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 2 at @s run particle cloud 95036 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 2 at @s run clone 95029 ~ 95000 95044 ~ 95203 95029 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 3 at @s run particle cloud 95051 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 3 at @s run clone 95044 ~ 95000 95058 ~ 95203 95044 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 4 at @s run particle cloud 95065 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 4 at @s run clone 95058 ~ 95000 95073 ~ 95203 95058 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 5 at @s run particle cloud 95080 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 5 at @s run clone 95073 ~ 95000 95088 ~ 95203 95073 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 6 at @s run particle cloud 95095 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 6 at @s run clone 95088 ~ 95000 95102 ~ 95203 95088 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 7 at @s run particle cloud 95109 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 7 at @s run clone 95102 ~ 95000 95117 ~ 95203 95102 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 8 at @s run particle cloud 95124 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 8 at @s run clone 95117 ~ 95000 95131 ~ 95203 95117 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 9 at @s run particle cloud 95138 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 9 at @s run clone 95131 ~ 95000 95146 ~ 95203 95131 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 10 at @s run particle cloud 95153 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 10 at @s run clone 95146 ~ 95000 95161 ~ 95203 95146 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 11 at @s run particle cloud 95168 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 11 at @s run clone 95161 ~ 95000 95175 ~ 95203 95161 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 12 at @s run particle cloud 95182 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 12 at @s run clone 95175 ~ 95000 95190 ~ 95203 95175 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 13 at @s run particle cloud 95197 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 13 at @s run clone 95190 ~ 95000 95204 ~ 95203 95190 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 14 at @s run particle cloud 95211 ~163.5 95101 7 0 50 0 250 force
execute if score #rg_lg_medieval_mod switch.data matches 14 at @s run clone 95204 ~ 95000 95219 ~ 95203 95204 ~163 95000 replace force
execute if score #rg_lg_medieval_mod switch.data matches 15 run kill @e[type=item,x=95109,y=-63,z=95101,distance=..1000]

scoreboard players add #rg_lg_medieval_mod switch.data 1
execute if score #rg_lg_medieval_mod switch.data matches 15 run scoreboard players add #rg_lg_medieval_y switch.data 1
execute if score #rg_lg_medieval_mod switch.data matches 15 run scoreboard players set #rg_lg_medieval_mod switch.data 0

kill @s


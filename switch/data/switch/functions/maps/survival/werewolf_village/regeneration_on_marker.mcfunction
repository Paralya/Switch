
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_werewolf_village_y switch.data

execute if score #rg_werewolf_village_mod switch.data matches 0 at @s run particle cloud 93010 ~100.5 93061 10 0 30 0 250 force
execute if score #rg_werewolf_village_mod switch.data matches 0 at @s run clone 93000 ~ 93000 93020 ~ 93122 93000 ~100 93000 replace force
execute if score #rg_werewolf_village_mod switch.data matches 1 at @s run particle cloud 93030 ~100.5 93061 10 0 30 0 250 force
execute if score #rg_werewolf_village_mod switch.data matches 1 at @s run clone 93020 ~ 93000 93041 ~ 93122 93020 ~100 93000 replace force
execute if score #rg_werewolf_village_mod switch.data matches 2 at @s run particle cloud 93051 ~100.5 93061 10 0 30 0 250 force
execute if score #rg_werewolf_village_mod switch.data matches 2 at @s run clone 93041 ~ 93000 93061 ~ 93122 93041 ~100 93000 replace force
execute if score #rg_werewolf_village_mod switch.data matches 3 at @s run particle cloud 93071 ~100.5 93061 10 0 30 0 250 force
execute if score #rg_werewolf_village_mod switch.data matches 3 at @s run clone 93061 ~ 93000 93081 ~ 93122 93061 ~100 93000 replace force
execute if score #rg_werewolf_village_mod switch.data matches 4 at @s run particle cloud 93091 ~100.5 93061 10 0 30 0 250 force
execute if score #rg_werewolf_village_mod switch.data matches 4 at @s run clone 93081 ~ 93000 93102 ~ 93122 93081 ~100 93000 replace force
execute if score #rg_werewolf_village_mod switch.data matches 5 at @s run particle cloud 93112 ~100.5 93061 10 0 30 0 250 force
execute if score #rg_werewolf_village_mod switch.data matches 5 at @s run clone 93102 ~ 93000 93122 ~ 93122 93102 ~100 93000 replace force
execute if score #rg_werewolf_village_mod switch.data matches 6 run kill @e[type=item,x=93061,y=0,z=93061,distance=..1000]

scoreboard players add #rg_werewolf_village_mod switch.data 1
execute if score #rg_werewolf_village_mod switch.data matches 6 run scoreboard players add #rg_werewolf_village_y switch.data 1
execute if score #rg_werewolf_village_mod switch.data matches 6 run scoreboard players set #rg_werewolf_village_mod switch.data 0

kill @s


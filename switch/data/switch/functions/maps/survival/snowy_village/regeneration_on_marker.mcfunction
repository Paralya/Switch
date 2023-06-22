
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_snowy_village_y switch.data

execute if score #rg_snowy_village_mod switch.data matches 0 at @s run particle cloud 92006 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 0 at @s run clone 92000 ~ 92000 92012 ~ 92229 92000 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 1 at @s run particle cloud 92018 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 1 at @s run clone 92012 ~ 92000 92025 ~ 92229 92012 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 2 at @s run particle cloud 92031 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 2 at @s run clone 92025 ~ 92000 92038 ~ 92229 92025 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 3 at @s run particle cloud 92044 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 3 at @s run clone 92038 ~ 92000 92050 ~ 92229 92038 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 4 at @s run particle cloud 92056 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 4 at @s run clone 92050 ~ 92000 92062 ~ 92229 92050 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 5 at @s run particle cloud 92068 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 5 at @s run clone 92062 ~ 92000 92075 ~ 92229 92062 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 6 at @s run particle cloud 92081 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 6 at @s run clone 92075 ~ 92000 92088 ~ 92229 92075 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 7 at @s run particle cloud 92094 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 7 at @s run clone 92088 ~ 92000 92100 ~ 92229 92088 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 8 at @s run particle cloud 92106 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 8 at @s run clone 92100 ~ 92000 92112 ~ 92229 92100 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 9 at @s run particle cloud 92118 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 9 at @s run clone 92112 ~ 92000 92125 ~ 92229 92112 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 10 at @s run particle cloud 92131 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 10 at @s run clone 92125 ~ 92000 92138 ~ 92229 92125 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 11 at @s run particle cloud 92144 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 11 at @s run clone 92138 ~ 92000 92150 ~ 92229 92138 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 12 at @s run particle cloud 92156 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 12 at @s run clone 92150 ~ 92000 92162 ~ 92229 92150 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 13 at @s run particle cloud 92168 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 13 at @s run clone 92162 ~ 92000 92175 ~ 92229 92162 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 14 at @s run particle cloud 92181 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 14 at @s run clone 92175 ~ 92000 92188 ~ 92229 92175 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 15 at @s run particle cloud 92194 ~100.5 92114 6 0 57 0 250 force
execute if score #rg_snowy_village_mod switch.data matches 15 at @s run clone 92188 ~ 92000 92200 ~ 92229 92188 ~100 92000 replace force
execute if score #rg_snowy_village_mod switch.data matches 16 run kill @e[type=item,x=92100,y=0,z=92114,distance=..1000]

scoreboard players add #rg_snowy_village_mod switch.data 1
execute if score #rg_snowy_village_mod switch.data matches 16 run scoreboard players add #rg_snowy_village_y switch.data 1
execute if score #rg_snowy_village_mod switch.data matches 16 run scoreboard players set #rg_snowy_village_mod switch.data 0

kill @s


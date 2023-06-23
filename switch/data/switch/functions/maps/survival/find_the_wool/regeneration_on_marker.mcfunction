
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_find_the_wool_y switch.data

execute if score #rg_find_the_wool_mod switch.data matches 0 at @s run particle cloud 66010 ~100.5 66040 10 0 20 0 250 force
execute if score #rg_find_the_wool_mod switch.data matches 0 at @s run clone 66000 ~ 66000 66021 ~ 66080 66000 ~100 66000 replace force
execute if score #rg_find_the_wool_mod switch.data matches 1 at @s run particle cloud 66031 ~100.5 66040 10 0 20 0 250 force
execute if score #rg_find_the_wool_mod switch.data matches 1 at @s run clone 66021 ~ 66000 66042 ~ 66080 66021 ~100 66000 replace force
execute if score #rg_find_the_wool_mod switch.data matches 2 at @s run particle cloud 66053 ~100.5 66040 11 0 20 0 250 force
execute if score #rg_find_the_wool_mod switch.data matches 2 at @s run clone 66042 ~ 66000 66064 ~ 66080 66042 ~100 66000 replace force
execute if score #rg_find_the_wool_mod switch.data matches 3 at @s run particle cloud 66074 ~100.5 66040 10 0 20 0 250 force
execute if score #rg_find_the_wool_mod switch.data matches 3 at @s run clone 66064 ~ 66000 66085 ~ 66080 66064 ~100 66000 replace force

execute if score #rg_find_the_wool_mod switch.data matches 4 run kill @e[type=item,x=66042,y=0,z=66040,distance=..1000]
scoreboard players add #rg_find_the_wool_mod switch.data 1
execute if score #rg_find_the_wool_mod switch.data matches 4 run scoreboard players add #rg_find_the_wool_y switch.data 1
execute if score #rg_find_the_wool_mod switch.data matches 4 run scoreboard players set #rg_find_the_wool_mod switch.data 0

kill @s


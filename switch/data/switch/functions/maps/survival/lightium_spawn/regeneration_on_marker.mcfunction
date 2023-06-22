
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_lightium_spawn_y switch.data

execute if score #rg_lightium_spawn_mod switch.data matches 0 at @s run particle cloud 97009 ~100.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 0 at @s run clone 97000 ~ 97000 97018 ~ 97129 97000 ~100 97000 replace force
execute if score #rg_lightium_spawn_mod switch.data matches 1 at @s run particle cloud 97027 ~100.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 1 at @s run clone 97018 ~ 97000 97037 ~ 97129 97018 ~100 97000 replace force
execute if score #rg_lightium_spawn_mod switch.data matches 2 at @s run particle cloud 97046 ~100.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 2 at @s run clone 97037 ~ 97000 97055 ~ 97129 97037 ~100 97000 replace force
execute if score #rg_lightium_spawn_mod switch.data matches 3 at @s run particle cloud 97064 ~100.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 3 at @s run clone 97055 ~ 97000 97074 ~ 97129 97055 ~100 97000 replace force
execute if score #rg_lightium_spawn_mod switch.data matches 4 at @s run particle cloud 97083 ~100.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 4 at @s run clone 97074 ~ 97000 97092 ~ 97129 97074 ~100 97000 replace force
execute if score #rg_lightium_spawn_mod switch.data matches 5 at @s run particle cloud 97101 ~100.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 5 at @s run clone 97092 ~ 97000 97111 ~ 97129 97092 ~100 97000 replace force
execute if score #rg_lightium_spawn_mod switch.data matches 6 at @s run particle cloud 97120 ~100.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 6 at @s run clone 97111 ~ 97000 97129 ~ 97129 97111 ~100 97000 replace force
execute if score #rg_lightium_spawn_mod switch.data matches 7 run kill @e[type=item,x=97064,y=0,z=97064,distance=..1000]

scoreboard players add #rg_lightium_spawn_mod switch.data 1
execute if score #rg_lightium_spawn_mod switch.data matches 7 run scoreboard players add #rg_lightium_spawn_y switch.data 1
execute if score #rg_lightium_spawn_mod switch.data matches 7 run scoreboard players set #rg_lightium_spawn_mod switch.data 0

kill @s


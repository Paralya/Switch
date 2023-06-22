
execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_warden_escape_statue_y switch.data

execute if score #rg_warden_escape_statue_mod switch.data matches 0 at @s run particle cloud 69012 ~164.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 0 at @s run clone 69000 ~ 69000 69025 ~ 69106 69000 ~164 69000 replace force
execute if score #rg_warden_escape_statue_mod switch.data matches 1 at @s run particle cloud 69037 ~164.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 1 at @s run clone 69025 ~ 69000 69049 ~ 69106 69025 ~164 69000 replace force
execute if score #rg_warden_escape_statue_mod switch.data matches 2 at @s run particle cloud 69061 ~164.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 2 at @s run clone 69049 ~ 69000 69074 ~ 69106 69049 ~164 69000 replace force
execute if score #rg_warden_escape_statue_mod switch.data matches 3 at @s run particle cloud 69086 ~164.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 3 at @s run clone 69074 ~ 69000 69099 ~ 69106 69074 ~164 69000 replace force
execute if score #rg_warden_escape_statue_mod switch.data matches 4 at @s run particle cloud 69111 ~164.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 4 at @s run clone 69099 ~ 69000 69123 ~ 69106 69099 ~164 69000 replace force
execute if score #rg_warden_escape_statue_mod switch.data matches 5 at @s run particle cloud 69135 ~164.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 5 at @s run clone 69123 ~ 69000 69148 ~ 69106 69123 ~164 69000 replace force
execute if score #rg_warden_escape_statue_mod switch.data matches 6 run kill @e[type=item,x=69074,y=-64,z=69053,distance=..1000]

scoreboard players add #rg_warden_escape_statue_mod switch.data 1
execute if score #rg_warden_escape_statue_mod switch.data matches 6 run scoreboard players add #rg_warden_escape_statue_y switch.data 1
execute if score #rg_warden_escape_statue_mod switch.data matches 6 run scoreboard players set #rg_warden_escape_statue_mod switch.data 0

kill @s


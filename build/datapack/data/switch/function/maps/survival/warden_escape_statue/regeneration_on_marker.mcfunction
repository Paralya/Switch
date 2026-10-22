
#> switch:maps/survival/warden_escape_statue/regeneration_on_marker
#
# @within	switch:maps/survival/warden_escape_statue/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_warden_escape_statue_y switch.data

execute if score #rg_warden_escape_statue_mod switch.data matches 0 at @s in switch:game run particle cloud 12 ~0.5 8053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 0 at @s run clone from minecraft:overworld 0 ~ 8000 25 ~ 8106 to switch:game 0 ~0 8000 strict replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 1 at @s in switch:game run particle cloud 37 ~0.5 8053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 1 at @s run clone from minecraft:overworld 25 ~ 8000 49 ~ 8106 to switch:game 25 ~0 8000 strict replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 2 at @s in switch:game run particle cloud 61 ~0.5 8053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 2 at @s run clone from minecraft:overworld 49 ~ 8000 74 ~ 8106 to switch:game 49 ~0 8000 strict replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 3 at @s in switch:game run particle cloud 86 ~0.5 8053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 3 at @s run clone from minecraft:overworld 74 ~ 8000 99 ~ 8106 to switch:game 74 ~0 8000 strict replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 4 at @s in switch:game run particle cloud 111 ~0.5 8053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 4 at @s run clone from minecraft:overworld 99 ~ 8000 123 ~ 8106 to switch:game 99 ~0 8000 strict replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 5 at @s in switch:game run particle cloud 135 ~0.5 8053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 5 at @s run clone from minecraft:overworld 123 ~ 8000 148 ~ 8106 to switch:game 123 ~0 8000 strict replace force

scoreboard players add #rg_warden_escape_statue_mod switch.data 1
execute if score #rg_warden_escape_statue_mod switch.data matches 6 in switch:game run kill @e[type=item,x=74,y=100,z=8053,distance=..1000]
execute if score #rg_warden_escape_statue_mod switch.data matches 6 run scoreboard players add #rg_warden_escape_statue_y switch.data 1
execute if score #rg_warden_escape_statue_mod switch.data matches 6 run scoreboard players set #rg_warden_escape_statue_mod switch.data 0

kill @s



#> switch:maps/survival/warden_escape_statue/regeneration_on_marker
#
# @within	switch:maps/survival/warden_escape_statue/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_warden_escape_statue_y switch.data

execute if score #rg_warden_escape_statue_mod switch.data matches 0 at @s in switch:game run particle cloud 69012 ~0.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 0 at @s run clone from minecraft:overworld 69000 ~ 69000 69025 ~ 69106 to switch:game 69000 ~0 69000 replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 1 at @s in switch:game run particle cloud 69037 ~0.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 1 at @s run clone from minecraft:overworld 69025 ~ 69000 69049 ~ 69106 to switch:game 69025 ~0 69000 replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 2 at @s in switch:game run particle cloud 69061 ~0.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 2 at @s run clone from minecraft:overworld 69049 ~ 69000 69074 ~ 69106 to switch:game 69049 ~0 69000 replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 3 at @s in switch:game run particle cloud 69086 ~0.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 3 at @s run clone from minecraft:overworld 69074 ~ 69000 69099 ~ 69106 to switch:game 69074 ~0 69000 replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 4 at @s in switch:game run particle cloud 69111 ~0.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 4 at @s run clone from minecraft:overworld 69099 ~ 69000 69123 ~ 69106 to switch:game 69099 ~0 69000 replace force

execute if score #rg_warden_escape_statue_mod switch.data matches 5 at @s in switch:game run particle cloud 69135 ~0.5 69053 12 0 26 0 250 force
execute if score #rg_warden_escape_statue_mod switch.data matches 5 at @s run clone from minecraft:overworld 69123 ~ 69000 69148 ~ 69106 to switch:game 69123 ~0 69000 replace force

scoreboard players add #rg_warden_escape_statue_mod switch.data 1
execute if score #rg_warden_escape_statue_mod switch.data matches 6 in switch:game run kill @e[type=item,x=69074,y=100,z=69053,distance=..1000]
execute if score #rg_warden_escape_statue_mod switch.data matches 6 run scoreboard players add #rg_warden_escape_statue_y switch.data 1
execute if score #rg_warden_escape_statue_mod switch.data matches 6 run scoreboard players set #rg_warden_escape_statue_mod switch.data 0

kill @s


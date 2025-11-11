
#> switch:maps/survival/stardust_prison/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_prison/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_prison_y switch.data

execute if score #rg_stardust_prison_mod switch.data matches 0 at @s in switch:game run particle cloud 106007 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 0 at @s run clone from minecraft:overworld 106000 ~ 106000 106015 ~ 106178 to switch:game 106000 ~0 106000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 1 at @s in switch:game run particle cloud 106022 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 1 at @s run clone from minecraft:overworld 106015 ~ 106000 106029 ~ 106178 to switch:game 106015 ~0 106000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 2 at @s in switch:game run particle cloud 106036 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 2 at @s run clone from minecraft:overworld 106029 ~ 106000 106044 ~ 106178 to switch:game 106029 ~0 106000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 3 at @s in switch:game run particle cloud 106051 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 3 at @s run clone from minecraft:overworld 106044 ~ 106000 106059 ~ 106178 to switch:game 106044 ~0 106000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 4 at @s in switch:game run particle cloud 106066 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 4 at @s run clone from minecraft:overworld 106059 ~ 106000 106073 ~ 106178 to switch:game 106059 ~0 106000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 5 at @s in switch:game run particle cloud 106080 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 5 at @s run clone from minecraft:overworld 106073 ~ 106000 106088 ~ 106178 to switch:game 106073 ~0 106000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 6 at @s in switch:game run particle cloud 106095 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 6 at @s run clone from minecraft:overworld 106088 ~ 106000 106103 ~ 106178 to switch:game 106088 ~0 106000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 7 at @s in switch:game run particle cloud 106110 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 7 at @s run clone from minecraft:overworld 106103 ~ 106000 106117 ~ 106178 to switch:game 106103 ~0 106000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 8 at @s in switch:game run particle cloud 106124 ~0.5 106089 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 8 at @s run clone from minecraft:overworld 106117 ~ 106000 106132 ~ 106178 to switch:game 106117 ~0 106000 strict replace force

scoreboard players add #rg_stardust_prison_mod switch.data 1
execute if score #rg_stardust_prison_mod switch.data matches 9 in switch:game run kill @e[type=item,x=106066,y=100,z=106089,distance=..1000]
execute if score #rg_stardust_prison_mod switch.data matches 9 run scoreboard players add #rg_stardust_prison_y switch.data 1
execute if score #rg_stardust_prison_mod switch.data matches 9 run scoreboard players set #rg_stardust_prison_mod switch.data 0

kill @s


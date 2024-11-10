
#> switch:maps/survival/red_temple/regeneration_on_marker
#
# @within	switch:maps/survival/red_temple/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_red_temple_y switch.data

execute if score #rg_red_temple_mod switch.data matches 0 at @s in switch:game run particle cloud 87007 ~100.5 87047 7 0 23 0 250 force
execute if score #rg_red_temple_mod switch.data matches 0 at @s run clone from minecraft:overworld 87000 ~ 87000 87015 ~ 87094 to switch:game 87000 ~100 87000 replace force

execute if score #rg_red_temple_mod switch.data matches 1 at @s in switch:game run particle cloud 87022 ~100.5 87047 7 0 23 0 250 force
execute if score #rg_red_temple_mod switch.data matches 1 at @s run clone from minecraft:overworld 87015 ~ 87000 87030 ~ 87094 to switch:game 87015 ~100 87000 replace force

execute if score #rg_red_temple_mod switch.data matches 2 at @s in switch:game run particle cloud 87037 ~100.5 87047 7 0 23 0 250 force
execute if score #rg_red_temple_mod switch.data matches 2 at @s run clone from minecraft:overworld 87030 ~ 87000 87045 ~ 87094 to switch:game 87030 ~100 87000 replace force

scoreboard players add #rg_red_temple_mod switch.data 1
execute if score #rg_red_temple_mod switch.data matches 3 in switch:game run kill @e[type=item,x=87022,y=0,z=87047,distance=..1000]
execute if score #rg_red_temple_mod switch.data matches 3 run scoreboard players add #rg_red_temple_y switch.data 1
execute if score #rg_red_temple_mod switch.data matches 3 run scoreboard players set #rg_red_temple_mod switch.data 0

kill @s


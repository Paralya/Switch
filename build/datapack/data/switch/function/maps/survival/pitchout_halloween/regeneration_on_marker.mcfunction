
#> switch:maps/survival/pitchout_halloween/regeneration_on_marker
#
# @within	switch:maps/survival/pitchout_halloween/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitchout_halloween_y switch.data

execute if score #rg_pitchout_halloween_mod switch.data matches 0 at @s in switch:game run particle cloud 10010 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 0 at @s run clone from minecraft:overworld 10000 ~ 10000 10020 ~ 10122 to switch:game 10000 ~0 10000 strict replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 1 at @s in switch:game run particle cloud 10030 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 1 at @s run clone from minecraft:overworld 10020 ~ 10000 10041 ~ 10122 to switch:game 10020 ~0 10000 strict replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 2 at @s in switch:game run particle cloud 10051 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 2 at @s run clone from minecraft:overworld 10041 ~ 10000 10061 ~ 10122 to switch:game 10041 ~0 10000 strict replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 3 at @s in switch:game run particle cloud 10071 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 3 at @s run clone from minecraft:overworld 10061 ~ 10000 10081 ~ 10122 to switch:game 10061 ~0 10000 strict replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 4 at @s in switch:game run particle cloud 10091 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 4 at @s run clone from minecraft:overworld 10081 ~ 10000 10102 ~ 10122 to switch:game 10081 ~0 10000 strict replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 5 at @s in switch:game run particle cloud 10112 ~0.5 10061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 5 at @s run clone from minecraft:overworld 10102 ~ 10000 10122 ~ 10122 to switch:game 10102 ~0 10000 strict replace force

scoreboard players add #rg_pitchout_halloween_mod switch.data 1
execute if score #rg_pitchout_halloween_mod switch.data matches 6 in switch:game run kill @e[type=item,x=10061,y=100,z=10061,distance=..1000]
execute if score #rg_pitchout_halloween_mod switch.data matches 6 run scoreboard players add #rg_pitchout_halloween_y switch.data 1
execute if score #rg_pitchout_halloween_mod switch.data matches 6 run scoreboard players set #rg_pitchout_halloween_mod switch.data 0

kill @s


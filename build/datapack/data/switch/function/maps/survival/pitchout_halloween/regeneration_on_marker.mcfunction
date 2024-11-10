
#> switch:maps/survival/pitchout_halloween/regeneration_on_marker
#
# @within	switch:maps/survival/pitchout_halloween/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_pitchout_halloween_y switch.data

execute if score #rg_pitchout_halloween_mod switch.data matches 0 at @s in switch:game run particle cloud 125010 ~100.5 125061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 0 at @s run clone from minecraft:overworld 125000 ~ 125000 125020 ~ 125122 to switch:game 125000 ~100 125000 replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 1 at @s in switch:game run particle cloud 125030 ~100.5 125061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 1 at @s run clone from minecraft:overworld 125020 ~ 125000 125041 ~ 125122 to switch:game 125020 ~100 125000 replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 2 at @s in switch:game run particle cloud 125051 ~100.5 125061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 2 at @s run clone from minecraft:overworld 125041 ~ 125000 125061 ~ 125122 to switch:game 125041 ~100 125000 replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 3 at @s in switch:game run particle cloud 125071 ~100.5 125061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 3 at @s run clone from minecraft:overworld 125061 ~ 125000 125081 ~ 125122 to switch:game 125061 ~100 125000 replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 4 at @s in switch:game run particle cloud 125091 ~100.5 125061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 4 at @s run clone from minecraft:overworld 125081 ~ 125000 125102 ~ 125122 to switch:game 125081 ~100 125000 replace force

execute if score #rg_pitchout_halloween_mod switch.data matches 5 at @s in switch:game run particle cloud 125112 ~100.5 125061 10 0 30 0 250 force
execute if score #rg_pitchout_halloween_mod switch.data matches 5 at @s run clone from minecraft:overworld 125102 ~ 125000 125122 ~ 125122 to switch:game 125102 ~100 125000 replace force

scoreboard players add #rg_pitchout_halloween_mod switch.data 1
execute if score #rg_pitchout_halloween_mod switch.data matches 6 in switch:game run kill @e[type=item,x=125061,y=0,z=125061,distance=..1000]
execute if score #rg_pitchout_halloween_mod switch.data matches 6 run scoreboard players add #rg_pitchout_halloween_y switch.data 1
execute if score #rg_pitchout_halloween_mod switch.data matches 6 run scoreboard players set #rg_pitchout_halloween_mod switch.data 0

kill @s


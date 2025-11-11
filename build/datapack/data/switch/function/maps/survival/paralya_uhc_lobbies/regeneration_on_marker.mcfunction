
#> switch:maps/survival/paralya_uhc_lobbies/regeneration_on_marker
#
# @within	switch:maps/survival/paralya_uhc_lobbies/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_paralya_uhc_lobbies_y switch.data

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 0 at @s in switch:game run particle cloud 98011 ~0.5 98045 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 0 at @s run clone from minecraft:overworld 98000 ~ 98000 98022 ~ 98090 to switch:game 98000 ~0 98000 strict replace force

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 1 at @s in switch:game run particle cloud 98033 ~0.5 98045 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 1 at @s run clone from minecraft:overworld 98022 ~ 98000 98045 ~ 98090 to switch:game 98022 ~0 98000 strict replace force

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 2 at @s in switch:game run particle cloud 98056 ~0.5 98045 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 2 at @s run clone from minecraft:overworld 98045 ~ 98000 98068 ~ 98090 to switch:game 98045 ~0 98000 strict replace force

execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 3 at @s in switch:game run particle cloud 98079 ~0.5 98045 11 0 22 0 250 force
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 3 at @s run clone from minecraft:overworld 98068 ~ 98000 98090 ~ 98090 to switch:game 98068 ~0 98000 strict replace force

scoreboard players add #rg_paralya_uhc_lobbies_mod switch.data 1
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 in switch:game run kill @e[type=item,x=98045,y=100,z=98045,distance=..1000]
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 run scoreboard players add #rg_paralya_uhc_lobbies_y switch.data 1
execute if score #rg_paralya_uhc_lobbies_mod switch.data matches 4 run scoreboard players set #rg_paralya_uhc_lobbies_mod switch.data 0

kill @s


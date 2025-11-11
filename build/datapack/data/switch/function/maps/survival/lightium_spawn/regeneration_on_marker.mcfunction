
#> switch:maps/survival/lightium_spawn/regeneration_on_marker
#
# @within	switch:maps/survival/lightium_spawn/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_lightium_spawn_y switch.data

execute if score #rg_lightium_spawn_mod switch.data matches 0 at @s in switch:game run particle cloud 97009 ~0.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 0 at @s run clone from minecraft:overworld 97000 ~ 97000 97018 ~ 97129 to switch:game 97000 ~0 97000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 1 at @s in switch:game run particle cloud 97027 ~0.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 1 at @s run clone from minecraft:overworld 97018 ~ 97000 97037 ~ 97129 to switch:game 97018 ~0 97000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 2 at @s in switch:game run particle cloud 97046 ~0.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 2 at @s run clone from minecraft:overworld 97037 ~ 97000 97055 ~ 97129 to switch:game 97037 ~0 97000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 3 at @s in switch:game run particle cloud 97064 ~0.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 3 at @s run clone from minecraft:overworld 97055 ~ 97000 97074 ~ 97129 to switch:game 97055 ~0 97000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 4 at @s in switch:game run particle cloud 97083 ~0.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 4 at @s run clone from minecraft:overworld 97074 ~ 97000 97092 ~ 97129 to switch:game 97074 ~0 97000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 5 at @s in switch:game run particle cloud 97101 ~0.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 5 at @s run clone from minecraft:overworld 97092 ~ 97000 97111 ~ 97129 to switch:game 97092 ~0 97000 strict replace force

execute if score #rg_lightium_spawn_mod switch.data matches 6 at @s in switch:game run particle cloud 97120 ~0.5 97064 9 0 32 0 250 force
execute if score #rg_lightium_spawn_mod switch.data matches 6 at @s run clone from minecraft:overworld 97111 ~ 97000 97129 ~ 97129 to switch:game 97111 ~0 97000 strict replace force

scoreboard players add #rg_lightium_spawn_mod switch.data 1
execute if score #rg_lightium_spawn_mod switch.data matches 7 in switch:game run kill @e[type=item,x=97064,y=100,z=97064,distance=..1000]
execute if score #rg_lightium_spawn_mod switch.data matches 7 run scoreboard players add #rg_lightium_spawn_y switch.data 1
execute if score #rg_lightium_spawn_mod switch.data matches 7 run scoreboard players set #rg_lightium_spawn_mod switch.data 0

kill @s


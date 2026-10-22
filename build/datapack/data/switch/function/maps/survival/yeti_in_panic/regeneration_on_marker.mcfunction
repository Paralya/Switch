
#> switch:maps/survival/yeti_in_panic/regeneration_on_marker
#
# @within	switch:maps/survival/yeti_in_panic/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_yeti_in_panic_y switch.data

execute if score #rg_yeti_in_panic_mod switch.data matches 0 at @s in switch:game run particle cloud 4013 ~0.5 -11965 13 0 17 0 250 force
execute if score #rg_yeti_in_panic_mod switch.data matches 0 at @s run clone from minecraft:overworld 4000 ~ -12000 4026 ~ -11930 to switch:game 4000 ~0 -12000 strict replace force

execute if score #rg_yeti_in_panic_mod switch.data matches 1 at @s in switch:game run particle cloud 4038 ~0.5 -11965 12 0 17 0 250 force
execute if score #rg_yeti_in_panic_mod switch.data matches 1 at @s run clone from minecraft:overworld 4026 ~ -12000 4051 ~ -11930 to switch:game 4026 ~0 -12000 strict replace force

execute if score #rg_yeti_in_panic_mod switch.data matches 2 at @s in switch:game run particle cloud 4064 ~0.5 -11965 13 0 17 0 250 force
execute if score #rg_yeti_in_panic_mod switch.data matches 2 at @s run clone from minecraft:overworld 4051 ~ -12000 4077 ~ -11930 to switch:game 4051 ~0 -12000 strict replace force

scoreboard players add #rg_yeti_in_panic_mod switch.data 1
execute if score #rg_yeti_in_panic_mod switch.data matches 3 in switch:game run kill @e[type=item,x=4038,y=100,z=-11965,distance=..1000]
execute if score #rg_yeti_in_panic_mod switch.data matches 3 run scoreboard players add #rg_yeti_in_panic_y switch.data 1
execute if score #rg_yeti_in_panic_mod switch.data matches 3 run scoreboard players set #rg_yeti_in_panic_mod switch.data 0

kill @s


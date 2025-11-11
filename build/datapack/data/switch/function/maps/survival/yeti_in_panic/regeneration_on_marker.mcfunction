
#> switch:maps/survival/yeti_in_panic/regeneration_on_marker
#
# @within	switch:maps/survival/yeti_in_panic/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_yeti_in_panic_y switch.data

execute if score #rg_yeti_in_panic_mod switch.data matches 0 at @s in switch:game run particle cloud 158013 ~0.5 158035 13 0 17 0 250 force
execute if score #rg_yeti_in_panic_mod switch.data matches 0 at @s run clone from minecraft:overworld 158000 ~ 158000 158026 ~ 158070 to switch:game 158000 ~0 158000 strict replace force

execute if score #rg_yeti_in_panic_mod switch.data matches 1 at @s in switch:game run particle cloud 158038 ~0.5 158035 12 0 17 0 250 force
execute if score #rg_yeti_in_panic_mod switch.data matches 1 at @s run clone from minecraft:overworld 158026 ~ 158000 158051 ~ 158070 to switch:game 158026 ~0 158000 strict replace force

execute if score #rg_yeti_in_panic_mod switch.data matches 2 at @s in switch:game run particle cloud 158064 ~0.5 158035 13 0 17 0 250 force
execute if score #rg_yeti_in_panic_mod switch.data matches 2 at @s run clone from minecraft:overworld 158051 ~ 158000 158077 ~ 158070 to switch:game 158051 ~0 158000 strict replace force

scoreboard players add #rg_yeti_in_panic_mod switch.data 1
execute if score #rg_yeti_in_panic_mod switch.data matches 3 in switch:game run kill @e[type=item,x=158038,y=100,z=158035,distance=..1000]
execute if score #rg_yeti_in_panic_mod switch.data matches 3 run scoreboard players add #rg_yeti_in_panic_y switch.data 1
execute if score #rg_yeti_in_panic_mod switch.data matches 3 run scoreboard players set #rg_yeti_in_panic_mod switch.data 0

kill @s


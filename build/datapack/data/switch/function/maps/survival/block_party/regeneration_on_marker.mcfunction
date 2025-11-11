
#> switch:maps/survival/block_party/regeneration_on_marker
#
# @within	switch:maps/survival/block_party/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_block_party_y switch.data

execute if score #rg_block_party_mod switch.data matches 0 at @s in switch:game run particle cloud 110004 ~163.5 110040 11 0 23 0 250 force
execute if score #rg_block_party_mod switch.data matches 0 at @s run clone from minecraft:overworld 109993 ~ 109993 110016 ~ 110087 to switch:game 109993 ~163 109993 strict replace force

execute if score #rg_block_party_mod switch.data matches 1 at @s in switch:game run particle cloud 110028 ~163.5 110040 12 0 23 0 250 force
execute if score #rg_block_party_mod switch.data matches 1 at @s run clone from minecraft:overworld 110016 ~ 109993 110040 ~ 110087 to switch:game 110016 ~163 109993 strict replace force

execute if score #rg_block_party_mod switch.data matches 2 at @s in switch:game run particle cloud 110052 ~163.5 110040 12 0 23 0 250 force
execute if score #rg_block_party_mod switch.data matches 2 at @s run clone from minecraft:overworld 110040 ~ 109993 110064 ~ 110087 to switch:game 110040 ~163 109993 strict replace force

execute if score #rg_block_party_mod switch.data matches 3 at @s in switch:game run particle cloud 110075 ~163.5 110040 11 0 23 0 250 force
execute if score #rg_block_party_mod switch.data matches 3 at @s run clone from minecraft:overworld 110064 ~ 109993 110087 ~ 110087 to switch:game 110064 ~163 109993 strict replace force

scoreboard players add #rg_block_party_mod switch.data 1
execute if score #rg_block_party_mod switch.data matches 4 in switch:game run kill @e[type=item,x=110040,y=-63,z=110040,distance=..1000]
execute if score #rg_block_party_mod switch.data matches 4 run scoreboard players add #rg_block_party_y switch.data 1
execute if score #rg_block_party_mod switch.data matches 4 run scoreboard players set #rg_block_party_mod switch.data 0

kill @s


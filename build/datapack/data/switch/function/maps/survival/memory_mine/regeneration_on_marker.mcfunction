
#> switch:maps/survival/memory_mine/regeneration_on_marker
#
# @within	switch:maps/survival/memory_mine/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_memory_mine_y switch.data

execute if score #rg_memory_mine_mod switch.data matches 0 at @s in switch:game run particle cloud -5993 ~0.5 -11982 7 0 9 0 250 force
execute if score #rg_memory_mine_mod switch.data matches 0 at @s run clone from minecraft:overworld -6000 ~ -12000 -5986 ~ -11964 to switch:game -6000 ~0 -12000 strict replace force

execute if score #rg_memory_mine_mod switch.data matches 1 at @s in switch:game run particle cloud -5979 ~0.5 -11982 7 0 9 0 250 force
execute if score #rg_memory_mine_mod switch.data matches 1 at @s run clone from minecraft:overworld -5986 ~ -12000 -5971 ~ -11964 to switch:game -5986 ~0 -12000 strict replace force

scoreboard players add #rg_memory_mine_mod switch.data 1
execute if score #rg_memory_mine_mod switch.data matches 2 in switch:game run kill @e[type=item,x=-5985,y=100,z=-11982,distance=..1000]
execute if score #rg_memory_mine_mod switch.data matches 2 run scoreboard players add #rg_memory_mine_y switch.data 1
execute if score #rg_memory_mine_mod switch.data matches 2 run scoreboard players set #rg_memory_mine_mod switch.data 0

kill @s


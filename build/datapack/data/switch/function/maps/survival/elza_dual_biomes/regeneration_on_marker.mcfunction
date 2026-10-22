
#> switch:maps/survival/elza_dual_biomes/regeneration_on_marker
#
# @within	switch:maps/survival/elza_dual_biomes/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_elza_dual_biomes_y switch.data

execute if score #rg_elza_dual_biomes_mod switch.data matches 0 at @s in switch:game run particle cloud -1990 ~0.5 -11979 10 0 10 0 250 force
execute if score #rg_elza_dual_biomes_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ -12000 -1979 ~ -11958 to switch:game -2000 ~0 -12000 strict replace force

execute if score #rg_elza_dual_biomes_mod switch.data matches 1 at @s in switch:game run particle cloud -1969 ~0.5 -11979 10 0 10 0 250 force
execute if score #rg_elza_dual_biomes_mod switch.data matches 1 at @s run clone from minecraft:overworld -1979 ~ -12000 -1958 ~ -11958 to switch:game -1979 ~0 -12000 strict replace force

scoreboard players add #rg_elza_dual_biomes_mod switch.data 1
execute if score #rg_elza_dual_biomes_mod switch.data matches 2 in switch:game run kill @e[type=item,x=-1979,y=100,z=-11979,distance=..1000]
execute if score #rg_elza_dual_biomes_mod switch.data matches 2 run scoreboard players add #rg_elza_dual_biomes_y switch.data 1
execute if score #rg_elza_dual_biomes_mod switch.data matches 2 run scoreboard players set #rg_elza_dual_biomes_mod switch.data 0

kill @s



#> switch:maps/survival/luxio_fish_fight/regeneration_on_marker
#
# @within	switch:maps/survival/luxio_fish_fight/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_luxio_fish_fight_y switch.data

execute if score #rg_luxio_fish_fight_mod switch.data matches 0 at @s in switch:game run particle cloud -9986 ~0.5 -11973 14 0 13 0 250 force
execute if score #rg_luxio_fish_fight_mod switch.data matches 0 at @s run clone from minecraft:overworld -10000 ~ -12000 -9972 ~ -11945 to switch:game -10000 ~0 -12000 strict replace force

execute if score #rg_luxio_fish_fight_mod switch.data matches 1 at @s in switch:game run particle cloud -9958 ~0.5 -11973 14 0 13 0 250 force
execute if score #rg_luxio_fish_fight_mod switch.data matches 1 at @s run clone from minecraft:overworld -9972 ~ -12000 -9944 ~ -11945 to switch:game -9972 ~0 -12000 strict replace force

scoreboard players add #rg_luxio_fish_fight_mod switch.data 1
execute if score #rg_luxio_fish_fight_mod switch.data matches 2 in switch:game run kill @e[type=item,x=-9972,y=100,z=-11972,distance=..1000]
execute if score #rg_luxio_fish_fight_mod switch.data matches 2 run scoreboard players add #rg_luxio_fish_fight_y switch.data 1
execute if score #rg_luxio_fish_fight_mod switch.data matches 2 run scoreboard players set #rg_luxio_fish_fight_mod switch.data 0

kill @s


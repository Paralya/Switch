
#> switch:maps/survival/stardust_prison/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_prison/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_prison_y switch.data

execute if score #rg_stardust_prison_mod switch.data matches 0 at @s in switch:game run particle cloud -1993 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 0 at @s run clone from minecraft:overworld -2000 ~ -10000 -1985 ~ -9822 to switch:game -2000 ~0 -10000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 1 at @s in switch:game run particle cloud -1978 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 1 at @s run clone from minecraft:overworld -1985 ~ -10000 -1971 ~ -9822 to switch:game -1985 ~0 -10000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 2 at @s in switch:game run particle cloud -1964 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 2 at @s run clone from minecraft:overworld -1971 ~ -10000 -1956 ~ -9822 to switch:game -1971 ~0 -10000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 3 at @s in switch:game run particle cloud -1949 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 3 at @s run clone from minecraft:overworld -1956 ~ -10000 -1941 ~ -9822 to switch:game -1956 ~0 -10000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 4 at @s in switch:game run particle cloud -1934 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 4 at @s run clone from minecraft:overworld -1941 ~ -10000 -1927 ~ -9822 to switch:game -1941 ~0 -10000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 5 at @s in switch:game run particle cloud -1920 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 5 at @s run clone from minecraft:overworld -1927 ~ -10000 -1912 ~ -9822 to switch:game -1927 ~0 -10000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 6 at @s in switch:game run particle cloud -1905 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 6 at @s run clone from minecraft:overworld -1912 ~ -10000 -1897 ~ -9822 to switch:game -1912 ~0 -10000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 7 at @s in switch:game run particle cloud -1890 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 7 at @s run clone from minecraft:overworld -1897 ~ -10000 -1883 ~ -9822 to switch:game -1897 ~0 -10000 strict replace force

execute if score #rg_stardust_prison_mod switch.data matches 8 at @s in switch:game run particle cloud -1876 ~0.5 -9911 7 0 44 0 250 force
execute if score #rg_stardust_prison_mod switch.data matches 8 at @s run clone from minecraft:overworld -1883 ~ -10000 -1868 ~ -9822 to switch:game -1883 ~0 -10000 strict replace force

scoreboard players add #rg_stardust_prison_mod switch.data 1
execute if score #rg_stardust_prison_mod switch.data matches 9 in switch:game run kill @e[type=item,x=-1934,y=100,z=-9911,distance=..1000]
execute if score #rg_stardust_prison_mod switch.data matches 9 run scoreboard players add #rg_stardust_prison_y switch.data 1
execute if score #rg_stardust_prison_mod switch.data matches 9 run scoreboard players set #rg_stardust_prison_mod switch.data 0

kill @s


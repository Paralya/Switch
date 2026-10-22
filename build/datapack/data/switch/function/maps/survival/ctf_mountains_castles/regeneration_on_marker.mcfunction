
#> switch:maps/survival/ctf_mountains_castles/regeneration_on_marker
#
# @within	switch:maps/survival/ctf_mountains_castles/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_ctf_mountains_castles_y switch.data

execute if score #rg_ctf_mountains_castles_mod switch.data matches 0 at @s in switch:game run particle cloud -11991 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 0 at @s run clone from minecraft:overworld -12000 ~ -6000 -11981 ~ -5842 to switch:game -12000 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 1 at @s in switch:game run particle cloud -11972 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 1 at @s run clone from minecraft:overworld -11981 ~ -6000 -11962 ~ -5842 to switch:game -11981 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 2 at @s in switch:game run particle cloud -11953 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 2 at @s run clone from minecraft:overworld -11962 ~ -6000 -11943 ~ -5842 to switch:game -11962 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 3 at @s in switch:game run particle cloud -11933 ~0.5 -5921 10 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 3 at @s run clone from minecraft:overworld -11943 ~ -6000 -11923 ~ -5842 to switch:game -11943 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 4 at @s in switch:game run particle cloud -11914 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 4 at @s run clone from minecraft:overworld -11923 ~ -6000 -11904 ~ -5842 to switch:game -11923 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 5 at @s in switch:game run particle cloud -11895 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 5 at @s run clone from minecraft:overworld -11904 ~ -6000 -11885 ~ -5842 to switch:game -11904 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 6 at @s in switch:game run particle cloud -11876 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 6 at @s run clone from minecraft:overworld -11885 ~ -6000 -11866 ~ -5842 to switch:game -11885 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 7 at @s in switch:game run particle cloud -11857 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 7 at @s run clone from minecraft:overworld -11866 ~ -6000 -11847 ~ -5842 to switch:game -11866 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 8 at @s in switch:game run particle cloud -11838 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 8 at @s run clone from minecraft:overworld -11847 ~ -6000 -11828 ~ -5842 to switch:game -11847 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 9 at @s in switch:game run particle cloud -11818 ~0.5 -5921 10 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 9 at @s run clone from minecraft:overworld -11828 ~ -6000 -11808 ~ -5842 to switch:game -11828 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 10 at @s in switch:game run particle cloud -11799 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 10 at @s run clone from minecraft:overworld -11808 ~ -6000 -11789 ~ -5842 to switch:game -11808 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 11 at @s in switch:game run particle cloud -11780 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 11 at @s run clone from minecraft:overworld -11789 ~ -6000 -11770 ~ -5842 to switch:game -11789 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 12 at @s in switch:game run particle cloud -11761 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 12 at @s run clone from minecraft:overworld -11770 ~ -6000 -11751 ~ -5842 to switch:game -11770 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 13 at @s in switch:game run particle cloud -11742 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 13 at @s run clone from minecraft:overworld -11751 ~ -6000 -11732 ~ -5842 to switch:game -11751 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 14 at @s in switch:game run particle cloud -11723 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 14 at @s run clone from minecraft:overworld -11732 ~ -6000 -11713 ~ -5842 to switch:game -11732 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 15 at @s in switch:game run particle cloud -11703 ~0.5 -5921 10 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 15 at @s run clone from minecraft:overworld -11713 ~ -6000 -11693 ~ -5842 to switch:game -11713 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 16 at @s in switch:game run particle cloud -11684 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 16 at @s run clone from minecraft:overworld -11693 ~ -6000 -11674 ~ -5842 to switch:game -11693 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 17 at @s in switch:game run particle cloud -11665 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 17 at @s run clone from minecraft:overworld -11674 ~ -6000 -11655 ~ -5842 to switch:game -11674 ~0 -6000 strict replace force

execute if score #rg_ctf_mountains_castles_mod switch.data matches 18 at @s in switch:game run particle cloud -11646 ~0.5 -5921 9 0 39 0 250 force
execute if score #rg_ctf_mountains_castles_mod switch.data matches 18 at @s run clone from minecraft:overworld -11655 ~ -6000 -11636 ~ -5842 to switch:game -11655 ~0 -6000 strict replace force

scoreboard players add #rg_ctf_mountains_castles_mod switch.data 1
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 in switch:game run kill @e[type=item,x=-11818,y=100,z=-5921,distance=..1000]
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 run scoreboard players add #rg_ctf_mountains_castles_y switch.data 1
execute if score #rg_ctf_mountains_castles_mod switch.data matches 19 run scoreboard players set #rg_ctf_mountains_castles_mod switch.data 0

kill @s


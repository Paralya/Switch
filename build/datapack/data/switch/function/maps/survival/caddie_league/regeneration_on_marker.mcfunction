
#> switch:maps/survival/caddie_league/regeneration_on_marker
#
# @within	switch:maps/survival/caddie_league/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_caddie_league_y switch.data

execute if score #rg_caddie_league_mod switch.data matches 0 at @s in switch:game run particle cloud -3907 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 0 at @s run clone from minecraft:overworld -3912 ~ 6000 -3901 ~ 6256 to switch:game -3912 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 1 at @s in switch:game run particle cloud -3895 ~0.5 6128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 1 at @s run clone from minecraft:overworld -3901 ~ 6000 -3889 ~ 6256 to switch:game -3901 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 2 at @s in switch:game run particle cloud -3884 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 2 at @s run clone from minecraft:overworld -3889 ~ 6000 -3878 ~ 6256 to switch:game -3889 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 3 at @s in switch:game run particle cloud -3873 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 3 at @s run clone from minecraft:overworld -3878 ~ 6000 -3867 ~ 6256 to switch:game -3878 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 4 at @s in switch:game run particle cloud -3861 ~0.5 6128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 4 at @s run clone from minecraft:overworld -3867 ~ 6000 -3855 ~ 6256 to switch:game -3867 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 5 at @s in switch:game run particle cloud -3850 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 5 at @s run clone from minecraft:overworld -3855 ~ 6000 -3844 ~ 6256 to switch:game -3855 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 6 at @s in switch:game run particle cloud -3839 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 6 at @s run clone from minecraft:overworld -3844 ~ 6000 -3833 ~ 6256 to switch:game -3844 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 7 at @s in switch:game run particle cloud -3827 ~0.5 6128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 7 at @s run clone from minecraft:overworld -3833 ~ 6000 -3821 ~ 6256 to switch:game -3833 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 8 at @s in switch:game run particle cloud -3816 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 8 at @s run clone from minecraft:overworld -3821 ~ 6000 -3810 ~ 6256 to switch:game -3821 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 9 at @s in switch:game run particle cloud -3805 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 9 at @s run clone from minecraft:overworld -3810 ~ 6000 -3799 ~ 6256 to switch:game -3810 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 10 at @s in switch:game run particle cloud -3793 ~0.5 6128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 10 at @s run clone from minecraft:overworld -3799 ~ 6000 -3787 ~ 6256 to switch:game -3799 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 11 at @s in switch:game run particle cloud -3782 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 11 at @s run clone from minecraft:overworld -3787 ~ 6000 -3776 ~ 6256 to switch:game -3787 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 12 at @s in switch:game run particle cloud -3771 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 12 at @s run clone from minecraft:overworld -3776 ~ 6000 -3765 ~ 6256 to switch:game -3776 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 13 at @s in switch:game run particle cloud -3759 ~0.5 6128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 13 at @s run clone from minecraft:overworld -3765 ~ 6000 -3753 ~ 6256 to switch:game -3765 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 14 at @s in switch:game run particle cloud -3748 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 14 at @s run clone from minecraft:overworld -3753 ~ 6000 -3742 ~ 6256 to switch:game -3753 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 15 at @s in switch:game run particle cloud -3737 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 15 at @s run clone from minecraft:overworld -3742 ~ 6000 -3731 ~ 6256 to switch:game -3742 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 16 at @s in switch:game run particle cloud -3725 ~0.5 6128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 16 at @s run clone from minecraft:overworld -3731 ~ 6000 -3719 ~ 6256 to switch:game -3731 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 17 at @s in switch:game run particle cloud -3714 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 17 at @s run clone from minecraft:overworld -3719 ~ 6000 -3708 ~ 6256 to switch:game -3719 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 18 at @s in switch:game run particle cloud -3703 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 18 at @s run clone from minecraft:overworld -3708 ~ 6000 -3697 ~ 6256 to switch:game -3708 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 19 at @s in switch:game run particle cloud -3691 ~0.5 6128 6 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 19 at @s run clone from minecraft:overworld -3697 ~ 6000 -3685 ~ 6256 to switch:game -3697 ~0 6000 strict replace force

execute if score #rg_caddie_league_mod switch.data matches 20 at @s in switch:game run particle cloud -3680 ~0.5 6128 5 0 64 0 250 force
execute if score #rg_caddie_league_mod switch.data matches 20 at @s run clone from minecraft:overworld -3685 ~ 6000 -3674 ~ 6256 to switch:game -3685 ~0 6000 strict replace force

scoreboard players add #rg_caddie_league_mod switch.data 1
execute if score #rg_caddie_league_mod switch.data matches 21 in switch:game run kill @e[type=item,x=-3793,y=100,z=6128,distance=..1000]
execute if score #rg_caddie_league_mod switch.data matches 21 run scoreboard players add #rg_caddie_league_y switch.data 1
execute if score #rg_caddie_league_mod switch.data matches 21 run scoreboard players set #rg_caddie_league_mod switch.data 0

kill @s


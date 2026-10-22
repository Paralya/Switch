
#> switch:maps/survival/stardust_pvp_zone/regeneration_on_marker
#
# @within	switch:maps/survival/stardust_pvp_zone/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_stardust_pvp_zone_y switch.data

execute if score #rg_stardust_pvp_zone_mod switch.data matches 0 at @s in switch:game run particle cloud -3995 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 0 at @s run clone from minecraft:overworld -4000 ~ -10000 -3990 ~ -9686 to switch:game -4000 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 1 at @s in switch:game run particle cloud -3986 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 1 at @s run clone from minecraft:overworld -3990 ~ -10000 -3981 ~ -9686 to switch:game -3990 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 2 at @s in switch:game run particle cloud -3976 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 2 at @s run clone from minecraft:overworld -3981 ~ -10000 -3971 ~ -9686 to switch:game -3981 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 3 at @s in switch:game run particle cloud -3966 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 3 at @s run clone from minecraft:overworld -3971 ~ -10000 -3961 ~ -9686 to switch:game -3971 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 4 at @s in switch:game run particle cloud -3957 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 4 at @s run clone from minecraft:overworld -3961 ~ -10000 -3952 ~ -9686 to switch:game -3961 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 5 at @s in switch:game run particle cloud -3947 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 5 at @s run clone from minecraft:overworld -3952 ~ -10000 -3942 ~ -9686 to switch:game -3952 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 6 at @s in switch:game run particle cloud -3937 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 6 at @s run clone from minecraft:overworld -3942 ~ -10000 -3932 ~ -9686 to switch:game -3942 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 7 at @s in switch:game run particle cloud -3927 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 7 at @s run clone from minecraft:overworld -3932 ~ -10000 -3922 ~ -9686 to switch:game -3932 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 8 at @s in switch:game run particle cloud -3918 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 8 at @s run clone from minecraft:overworld -3922 ~ -10000 -3913 ~ -9686 to switch:game -3922 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 9 at @s in switch:game run particle cloud -3908 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 9 at @s run clone from minecraft:overworld -3913 ~ -10000 -3903 ~ -9686 to switch:game -3913 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 10 at @s in switch:game run particle cloud -3898 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 10 at @s run clone from minecraft:overworld -3903 ~ -10000 -3893 ~ -9686 to switch:game -3903 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 11 at @s in switch:game run particle cloud -3889 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 11 at @s run clone from minecraft:overworld -3893 ~ -10000 -3884 ~ -9686 to switch:game -3893 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 12 at @s in switch:game run particle cloud -3879 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 12 at @s run clone from minecraft:overworld -3884 ~ -10000 -3874 ~ -9686 to switch:game -3884 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 13 at @s in switch:game run particle cloud -3869 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 13 at @s run clone from minecraft:overworld -3874 ~ -10000 -3864 ~ -9686 to switch:game -3874 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 14 at @s in switch:game run particle cloud -3859 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 14 at @s run clone from minecraft:overworld -3864 ~ -10000 -3854 ~ -9686 to switch:game -3864 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 15 at @s in switch:game run particle cloud -3850 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 15 at @s run clone from minecraft:overworld -3854 ~ -10000 -3845 ~ -9686 to switch:game -3854 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 16 at @s in switch:game run particle cloud -3840 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 16 at @s run clone from minecraft:overworld -3845 ~ -10000 -3835 ~ -9686 to switch:game -3845 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 17 at @s in switch:game run particle cloud -3830 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 17 at @s run clone from minecraft:overworld -3835 ~ -10000 -3825 ~ -9686 to switch:game -3835 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 18 at @s in switch:game run particle cloud -3821 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 18 at @s run clone from minecraft:overworld -3825 ~ -10000 -3816 ~ -9686 to switch:game -3825 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 19 at @s in switch:game run particle cloud -3811 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 19 at @s run clone from minecraft:overworld -3816 ~ -10000 -3806 ~ -9686 to switch:game -3816 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 20 at @s in switch:game run particle cloud -3801 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 20 at @s run clone from minecraft:overworld -3806 ~ -10000 -3796 ~ -9686 to switch:game -3806 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 21 at @s in switch:game run particle cloud -3792 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 21 at @s run clone from minecraft:overworld -3796 ~ -10000 -3787 ~ -9686 to switch:game -3796 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 22 at @s in switch:game run particle cloud -3782 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 22 at @s run clone from minecraft:overworld -3787 ~ -10000 -3777 ~ -9686 to switch:game -3787 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 23 at @s in switch:game run particle cloud -3772 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 23 at @s run clone from minecraft:overworld -3777 ~ -10000 -3767 ~ -9686 to switch:game -3777 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 24 at @s in switch:game run particle cloud -3763 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 24 at @s run clone from minecraft:overworld -3767 ~ -10000 -3758 ~ -9686 to switch:game -3767 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 25 at @s in switch:game run particle cloud -3753 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 25 at @s run clone from minecraft:overworld -3758 ~ -10000 -3748 ~ -9686 to switch:game -3758 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 26 at @s in switch:game run particle cloud -3743 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 26 at @s run clone from minecraft:overworld -3748 ~ -10000 -3738 ~ -9686 to switch:game -3748 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 27 at @s in switch:game run particle cloud -3733 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 27 at @s run clone from minecraft:overworld -3738 ~ -10000 -3728 ~ -9686 to switch:game -3738 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 28 at @s in switch:game run particle cloud -3724 ~0.5 -9843 4 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 28 at @s run clone from minecraft:overworld -3728 ~ -10000 -3719 ~ -9686 to switch:game -3728 ~0 -10000 strict replace force

execute if score #rg_stardust_pvp_zone_mod switch.data matches 29 at @s in switch:game run particle cloud -3714 ~0.5 -9843 5 0 78 0 250 force
execute if score #rg_stardust_pvp_zone_mod switch.data matches 29 at @s run clone from minecraft:overworld -3719 ~ -10000 -3709 ~ -9686 to switch:game -3719 ~0 -10000 strict replace force

scoreboard players add #rg_stardust_pvp_zone_mod switch.data 1
execute if score #rg_stardust_pvp_zone_mod switch.data matches 30 in switch:game run kill @e[type=item,x=-3854,y=100,z=-9843,distance=..1000]
execute if score #rg_stardust_pvp_zone_mod switch.data matches 30 run scoreboard players add #rg_stardust_pvp_zone_y switch.data 1
execute if score #rg_stardust_pvp_zone_mod switch.data matches 30 run scoreboard players set #rg_stardust_pvp_zone_mod switch.data 0

kill @s


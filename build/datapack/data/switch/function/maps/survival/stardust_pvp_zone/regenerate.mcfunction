
#> switch:maps/survival/stardust_pvp_zone/regenerate
#
# @within	switch:maps/survival/stardust_pvp_zone/regenerate 1t [ scheduled ]
#			switch:maps/loop_regenerate_every_maps
#			switch:maps/regenerate_map
#			switch:maps/resume_regeneration
#

scoreboard players add #rg_stardust_pvp_zone switch.data 1
execute if score #rg_stardust_pvp_zone switch.data matches 1 run data modify storage switch:maps to_regenerate.stardust_pvp_zone set value 2b
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -4000 -10000 -3990 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -4000 -10000 -3990 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3990 -10000 -3981 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3990 -10000 -3981 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3981 -10000 -3971 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3981 -10000 -3971 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3971 -10000 -3961 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3971 -10000 -3961 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3961 -10000 -3952 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3961 -10000 -3952 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3952 -10000 -3942 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3952 -10000 -3942 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3942 -10000 -3932 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3942 -10000 -3932 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3932 -10000 -3922 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3932 -10000 -3922 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3922 -10000 -3913 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3922 -10000 -3913 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3913 -10000 -3903 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3913 -10000 -3903 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3903 -10000 -3893 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3903 -10000 -3893 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3893 -10000 -3884 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3893 -10000 -3884 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3884 -10000 -3874 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3884 -10000 -3874 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3874 -10000 -3864 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3874 -10000 -3864 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3864 -10000 -3854 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3864 -10000 -3854 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3854 -10000 -3845 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3854 -10000 -3845 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3845 -10000 -3835 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3845 -10000 -3835 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3835 -10000 -3825 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3835 -10000 -3825 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3825 -10000 -3816 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3825 -10000 -3816 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3816 -10000 -3806 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3816 -10000 -3806 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3806 -10000 -3796 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3806 -10000 -3796 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3796 -10000 -3787 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3796 -10000 -3787 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3787 -10000 -3777 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3787 -10000 -3777 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3777 -10000 -3767 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3777 -10000 -3767 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3767 -10000 -3758 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3767 -10000 -3758 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3758 -10000 -3748 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3758 -10000 -3748 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3748 -10000 -3738 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3748 -10000 -3738 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3738 -10000 -3728 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3738 -10000 -3728 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3728 -10000 -3719 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3728 -10000 -3719 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in minecraft:overworld run forceload add -3719 -10000 -3709 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 1 in switch:game run forceload add -3719 -10000 -3709 -9686

execute if score #rg_stardust_pvp_zone switch.data matches 1 run scoreboard players set #rg_stardust_pvp_zone_y switch.data 100
execute if score #rg_stardust_pvp_zone switch.data matches 1 run scoreboard players set #rg_stardust_pvp_zone_mod switch.data 0
execute if score #rg_stardust_pvp_zone switch.data matches ..4290 summon marker run function switch:maps/survival/stardust_pvp_zone/regeneration_on_marker

execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run kill @e[type=item,x=-3854,y=100,z=-9843,distance=..1000]
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. run data remove storage switch:maps to_regenerate.stardust_pvp_zone

execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -4000 -10000 -3990 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -4000 -10000 -3990 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3990 -10000 -3981 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3990 -10000 -3981 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3981 -10000 -3971 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3981 -10000 -3971 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3971 -10000 -3961 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3971 -10000 -3961 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3961 -10000 -3952 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3961 -10000 -3952 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3952 -10000 -3942 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3952 -10000 -3942 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3942 -10000 -3932 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3942 -10000 -3932 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3932 -10000 -3922 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3932 -10000 -3922 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3922 -10000 -3913 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3922 -10000 -3913 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3913 -10000 -3903 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3913 -10000 -3903 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3903 -10000 -3893 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3903 -10000 -3893 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3893 -10000 -3884 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3893 -10000 -3884 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3884 -10000 -3874 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3884 -10000 -3874 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3874 -10000 -3864 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3874 -10000 -3864 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3864 -10000 -3854 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3864 -10000 -3854 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3854 -10000 -3845 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3854 -10000 -3845 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3845 -10000 -3835 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3845 -10000 -3835 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3835 -10000 -3825 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3835 -10000 -3825 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3825 -10000 -3816 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3825 -10000 -3816 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3816 -10000 -3806 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3816 -10000 -3806 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3806 -10000 -3796 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3806 -10000 -3796 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3796 -10000 -3787 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3796 -10000 -3787 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3787 -10000 -3777 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3787 -10000 -3777 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3777 -10000 -3767 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3777 -10000 -3767 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3767 -10000 -3758 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3767 -10000 -3758 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3758 -10000 -3748 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3758 -10000 -3748 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3748 -10000 -3738 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3748 -10000 -3738 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3738 -10000 -3728 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3738 -10000 -3728 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3728 -10000 -3719 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3728 -10000 -3719 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in minecraft:overworld run forceload remove -3719 -10000 -3709 -9686
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. in switch:game run forceload remove -3719 -10000 -3709 -9686

execute if score #rg_stardust_pvp_zone switch.data matches 4291.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Map '","color":"yellow"},{"text":"Stardust PVP Zone","color":"gold"},{"text":"' regenerated in ","color":"yellow"},{"text":"3","color":"gold"},{"text":"m","color":"yellow"},{"text":"34","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_stardust_pvp_zone switch.data matches 4291.. run function switch:engine/log_message/apply {message:"Map `Stardust PVP Zone` just regenerated!"}

execute if score #rg_stardust_pvp_zone switch.data matches 4291.. run scoreboard players reset #rg_stardust_pvp_zone switch.data
execute if score #rg_stardust_pvp_zone switch.data matches 1.. run schedule function switch:maps/survival/stardust_pvp_zone/regenerate 1t


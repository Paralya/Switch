
scoreboard players add #rg_purple_sky_island switch.data 1
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80824 80822 80833 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80833 80822 80841 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80841 80822 80850 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80850 80822 80858 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80858 80822 80867 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80867 80822 80876 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80876 80822 80884 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80884 80822 80893 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80893 80822 80901 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80901 80822 80910 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80910 80822 80918 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80918 80822 80927 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80927 80822 80936 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80936 80822 80944 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80944 80822 80953 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80953 80822 80961 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80961 80822 80970 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80970 80822 80979 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80979 80822 80987 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80987 80822 80996 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 80996 80822 81004 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81004 80822 81013 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81013 80822 81022 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81022 80822 81030 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81030 80822 81039 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81039 80822 81047 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81047 80822 81056 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81056 80822 81064 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81064 80822 81073 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81073 80822 81082 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81082 80822 81090 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81090 80822 81099 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81099 80822 81107 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81107 80822 81116 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81116 80822 81125 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81125 80822 81133 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81133 80822 81142 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81142 80822 81150 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81150 80822 81159 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81159 80822 81167 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81167 80822 81176 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81176 80822 81185 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81185 80822 81193 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81193 80822 81202 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81202 80822 81210 81182
execute if score #rg_purple_sky_island switch.data matches 1 run forceload add 81210 80822 81219 81182

execute if score #rg_purple_sky_island switch.data matches 1 run scoreboard players set #rg_purple_sky_island_y switch.data 0
execute if score #rg_purple_sky_island switch.data matches 1 run scoreboard players set #rg_purple_sky_island_mod switch.data 0
execute if score #rg_purple_sky_island switch.data matches ..236 summon marker run function switch:maps/survival/purple_sky_island/regeneration_on_marker

execute if score #rg_purple_sky_island switch.data matches 237.. run kill @e[type=item,x=81021,y=0,z=81002,distance=..1000]
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80824 80822 80833 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80833 80822 80841 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80841 80822 80850 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80850 80822 80858 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80858 80822 80867 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80867 80822 80876 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80876 80822 80884 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80884 80822 80893 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80893 80822 80901 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80901 80822 80910 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80910 80822 80918 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80918 80822 80927 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80927 80822 80936 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80936 80822 80944 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80944 80822 80953 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80953 80822 80961 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80961 80822 80970 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80970 80822 80979 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80979 80822 80987 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80987 80822 80996 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 80996 80822 81004 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81004 80822 81013 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81013 80822 81022 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81022 80822 81030 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81030 80822 81039 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81039 80822 81047 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81047 80822 81056 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81056 80822 81064 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81064 80822 81073 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81073 80822 81082 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81082 80822 81090 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81090 80822 81099 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81099 80822 81107 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81107 80822 81116 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81116 80822 81125 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81125 80822 81133 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81133 80822 81142 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81142 80822 81150 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81150 80822 81159 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81159 80822 81167 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81167 80822 81176 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81176 80822 81185 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81185 80822 81193 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81193 80822 81202 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81202 80822 81210 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run forceload remove 81210 80822 81219 81182
execute if score #rg_purple_sky_island switch.data matches 237.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"purple_sky_island","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"11","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_purple_sky_island switch.data matches 237.. run scoreboard players reset #rg_purple_sky_island switch.data

execute if score #rg_purple_sky_island switch.data matches 1.. run schedule function switch:maps/survival/purple_sky_island/regenerate 1t


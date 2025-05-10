
#> switch:maps/survival/sakura_land/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [19945.7.5d, 106.79.5d, 20073.99.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/sakura_land/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/sakura_land/if_race


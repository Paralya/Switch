
#> switch:maps/survival/hills_land/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [20406.5d, 101.5d, 20073.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/hills_land/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/hills_land/if_race


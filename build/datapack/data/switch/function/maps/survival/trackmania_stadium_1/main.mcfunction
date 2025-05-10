
#> switch:maps/survival/trackmania_stadium_1/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [25349.85.5d, 158.73.5d, 25099.32.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/trackmania_stadium_1/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/trackmania_stadium_1/if_race


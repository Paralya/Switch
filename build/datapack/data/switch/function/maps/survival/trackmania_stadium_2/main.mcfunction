
#> switch:maps/survival/trackmania_stadium_2/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [37392.24.5d, 175.88.5d, 37147.97.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/trackmania_stadium_2/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/trackmania_stadium_2/if_race


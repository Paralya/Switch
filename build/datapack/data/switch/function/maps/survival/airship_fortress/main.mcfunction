
#> switch:maps/survival/airship_fortress/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [7212.5d, 137.5d, -5008.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/airship_fortress/teleport_players

execute if score #is_race switch.data matches 1 in switch:game run function switch:maps/survival/airship_fortress/if_race


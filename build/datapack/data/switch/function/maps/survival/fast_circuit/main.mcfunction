
#> switch:maps/survival/fast_circuit/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [20173.5d, 102.5d, 19538.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/fast_circuit/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/fast_circuit/if_race


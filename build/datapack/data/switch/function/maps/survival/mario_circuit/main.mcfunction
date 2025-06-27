
#> switch:maps/survival/mario_circuit/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [20506.5d, 123.5d, 19539.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/mario_circuit/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/mario_circuit/if_race


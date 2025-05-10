
#> switch:maps/survival/clock_circuit/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [19522.77.5d, 145.6.5d, 20303.09.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/clock_circuit/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/clock_circuit/if_race


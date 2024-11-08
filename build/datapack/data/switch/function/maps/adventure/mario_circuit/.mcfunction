
#> switch:maps/adventure/mario_circuit/
#
# @within	switch:maps/load_adventure
#

## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [20406.5d, 101.0d, 19587.0d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/adventure/mario_circuit/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/adventure/mario_circuit/if_kart_racer


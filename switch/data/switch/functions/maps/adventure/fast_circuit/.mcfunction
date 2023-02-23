
## Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [20212.5d, 92.0d, 19584.0d]

scoreboard players set #count switch.data 0
execute as @a[sort=random] run function switch:maps/adventure/fast_circuit/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/adventure/fast_circuit/if_kart_racer


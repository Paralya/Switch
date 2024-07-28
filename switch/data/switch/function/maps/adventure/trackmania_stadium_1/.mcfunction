
## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [25106.5d, 103.0d, 24998.0d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/adventure/trackmania_stadium_1/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/adventure/trackmania_stadium_1/if_kart_racer


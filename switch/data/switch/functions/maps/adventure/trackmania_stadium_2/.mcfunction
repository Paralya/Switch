
## Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [37106.5d, 103.0d, 36998.0d]

scoreboard players set #count switch.data 0
execute as @a[tag=!switch.detached,sort=random] run function switch:maps/adventure/trackmania_stadium_2/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/adventure/trackmania_stadium_2/if_kart_racer



## Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [19947.5d, 107.0d, 20556.0d]

scoreboard players set #count switch.data 0
execute as @a[tag=!switch.detached,sort=random] run function switch:maps/adventure/dk_mountain/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/adventure/dk_mountain/if_kart_racer


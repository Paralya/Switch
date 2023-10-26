
## Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [19920.5d, 114.0d, 20042.0d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/adventure/sakura_land/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/adventure/sakura_land/if_kart_racer



## Teleport players
execute in minecraft:overworld run summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [32992.5d, 101.0d, 33000.0d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/adventure/dishorreur/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/adventure/dishorreur/if_kart_racer



summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [22999.0d, 143.0d, 23006.0d]

scoreboard players set #count switch.data 0
execute as @a[sort=random] run function switch:maps/survival/snow_travel/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/survival/snow_travel/if_kart_racer


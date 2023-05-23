
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [21956.5d, 131.5d, 22056.5d]

scoreboard players set #count switch.data 0
execute as @a[sort=random] run function switch:maps/survival/bowser_castle/teleport_players

execute if data storage switch:main {current_game:"kart_racer"} run function switch:maps/survival/bowser_castle/if_kart_racer


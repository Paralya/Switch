
## Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [3500.5d, 103.5d, 3505.5d]

scoreboard players set #count switch.data 0
execute as @a[sort=random] run function switch:maps/adventure/pitch_creep_1/teleport_players


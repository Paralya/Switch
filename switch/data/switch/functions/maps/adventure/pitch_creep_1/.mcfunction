
##Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [38000.0d, 107.0d, 38000.5d]

scoreboard players set #count switch.data 0
execute as @a[sort=random] run function switch:maps/adventure/pitch_creep_2/teleport_players



##Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [100.0d, 110.0d, 110.0d]

scoreboard players set #count switch.data 0
execute as @a[sort=random] run function switch:engine/maps/adventure/pitch_creep_1/teleport_players


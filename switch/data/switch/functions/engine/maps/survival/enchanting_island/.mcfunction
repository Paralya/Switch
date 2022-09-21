
##Teleport players
summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [7000.0d, 107.0d, 7000.0d]

scoreboard players set #count switch.data 0
execute as @a[sort=random] run function switch:engine/maps/adventure/enchanting_island/teleport_players


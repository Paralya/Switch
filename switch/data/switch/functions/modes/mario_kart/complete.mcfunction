
execute if entity @s[tag=switch.playing] run tellraw @a [{"selector":"@s","color":"red"},{"text":" a terminé la course en "},{"score":{"name":"#mario_kart_seconds","objective":"switch.data"}},{"text":" secondes !"}]

execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s[tag=!switch.playing] ~ ~ ~
tag @s remove switch.playing
gamemode spectator @s
effect clear @s
clear @s


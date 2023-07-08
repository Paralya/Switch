
execute if entity @s[gamemode=!spectator] run tellraw @a [{"selector":"@s","color":"red"},{"text":" s'est pris un mur, il a survécu "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] run summon lightning_bolt ~ ~-5 ~

gamemode spectator @s
execute if entity @s at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s


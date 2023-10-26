
execute if entity @s[gamemode=!spectator] run tellraw @a[tag=!detached] [{"selector":"@s","color":"red"},{"text":" s'est pris un mur, il a survécu "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] run summon lightning_bolt ~ ~-5 ~

ride @s dismount
execute if entity @s[gamemode=spectator] at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
gamemode spectator @s
effect clear @s
effect give @s night_vision infinite 255 true
clear @s


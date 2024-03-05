
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" s'est pris un mur, il a survécu "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" secondes !"}]


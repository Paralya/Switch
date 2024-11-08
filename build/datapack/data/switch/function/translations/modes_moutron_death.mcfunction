
#> switch:translations/modes_moutron_death
#
# @within	switch:modes/moutron/death
#

# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" s'est pris un mur, il a survécu "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" ran into a wall, survived "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" seconds!"}]


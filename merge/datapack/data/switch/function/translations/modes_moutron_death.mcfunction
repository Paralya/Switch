
# French
execute if entity @s[gamemode=!spectator] unless entity @p[tag=switch.moutron_killer] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" s'est pris un mur, survivant ainsi "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] if entity @p[tag=switch.moutron_killer] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" s'est mangé en pleine face la trainée de "},{"selector":"@p[tag=switch.moutron_killer]"},{"text":", survivant ainsi "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] unless entity @p[tag=switch.moutron_killer] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" ran into a wall, survived "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" seconds!"}]
execute if entity @s[gamemode=!spectator] if entity @p[tag=switch.moutron_killer] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" got hit by "},{"selector":"@p[tag=switch.moutron_killer]"},{"text":"'s trail, survived "},{"score":{"name":"#moutron_seconds","objective":"switch.data"}},{"text":" seconds!"}]



# French
execute if entity @s[gamemode=!spectator] unless entity @p[tag=switch.owner] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, survivant "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] if entity @p[tag=switch.owner] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a marché sur la mine de "},{"selector":"@p[tag=switch.owner]"},{"text":", survivant donc "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] unless entity @p[tag=switch.owner] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, surviving for "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" seconds!"}]
execute if entity @s[gamemode=!spectator] if entity @p[tag=switch.owner] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" stepped on "},{"selector":"@p[tag=switch.owner]"},{"text":"'s mine, surviving for "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" seconds!"}]



# French
execute if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"dark_red"},{"text":" est mort définitivement, il a survécu "},{"score":{"name":"#pitchout_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est tombé, il ne lui reste plus qu'une vie !"}]
execute if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est tombé, il lui reste seulement 2 vies !"}]

# English
execute if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"dark_red"},{"text":" died permanently, survived "},{"score":{"name":"#pitchout_seconds","objective":"switch.data"}},{"text":" seconds!"}]
execute if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" has fallen, only one life left!"}]
execute if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" has fallen, only 2 lives left!"}]


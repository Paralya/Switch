
# French
execute if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"dark_red"},{"text":" est mort. il a survécu "},{"score":{"name":"#one_shot_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a été tué, il ne lui reste plus qu'une vie !"}]
execute if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a été tué, il lui reste 2 vies !"}]
execute if entity @s[scores={switch.alive=4}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"yellow"},{"text":" a été tué, il lui reste 3 vies !"}]
execute if entity @s[scores={switch.alive=5}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"yellow"},{"text":" a été tué, il lui reste 4 vies !"}]
execute if entity @s[scores={switch.alive=6}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" a été tué, il lui reste 5 vies !"}]


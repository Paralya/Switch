
# French
execute if score @s switch.temp.lives matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a raté son saut mais il lui reste une vie !"}]
execute if score @s switch.temp.lives matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a raté son saut, il termine "},{"score":{"name":"#position","objective":"switch.data"}},{"text":"ème !"}]

# English
execute if score @s switch.temp.lives matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":"missed his jump but has one life left!"}]
execute if score @s switch.temp.lives matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":"missed his jump, he's finishing"},{"score":{"name":"#position","objective":"switch.data"}},{"text":"th!"}]


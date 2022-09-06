
scoreboard players set #success switch.data 0
execute store success score #success switch.data if predicate switch:chance/0.5

execute if score #success switch.data matches 0 if entity @s[tag=switch.traitors_game.innocent] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, il était un "},{"text":"Innocent","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[tag=switch.traitors_game.detective] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, il était un "},{"text":"Detective","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[tag=switch.traitors_game.ninja] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, il était le "},{"text":"Ninja","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[tag=switch.traitors_game.traitor] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, il était un "},{"text":"Traitre","color":"red"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[tag=switch.traitors_game.big_traitor] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, il était le "},{"text":"Gros Traitre","color":"red"},{"text":" !"}]

execute if score #success switch.data matches 1 if entity @s[tag=switch.traitors_game.innocent] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, c'était un "},{"text":"Innocent","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[tag=switch.traitors_game.detective] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, c'était un "},{"text":"Detective","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[tag=switch.traitors_game.ninja] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, c'était le "},{"text":"Ninja","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[tag=switch.traitors_game.traitor] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, c'était un "},{"text":"Traitre","color":"red"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[tag=switch.traitors_game.big_traitor] run tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s"},{"text":" est mort, c'était le "},{"text":"Gros Traitre","color":"red"},{"text":" !"}]

kill @s

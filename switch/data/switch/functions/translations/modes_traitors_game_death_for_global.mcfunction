
# French
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=0}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était "},{"text":"UWUWUWUWU","color":"gray","obfuscated":true},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Innocent","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"nbt":"solitaire","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était l'"},{"text":"Inspecteur","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était le "},{"text":"Ninja","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"nbt":"solitaire","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Traitre","color":"red"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était le "},{"text":"Gros Traitre","color":"dark_red"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était le "},{"text":"Floupy","color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=0}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"UWUWUWUWU","color":"gray","obfuscated":true},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Innocent","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"nbt":"solitaire","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était l'"},{"text":"Inspecteur","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était le "},{"text":"Ninja","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"nbt":"solitaire","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Traitre","color":"red"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était le "},{"text":"Gros Traitre","color":"dark_red"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était le "},{"text":"Floupy","color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=0}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"UWUWUWUWU","color":"gray","obfuscated":true},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Innocent","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"nbt":"solitaire","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Inspecteur","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Ninja","color":"green"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"nbt":"solitaire","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Traitre","color":"red"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Gros Traitre","color":"dark_red"},{"nbt":"stolen","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Floupy","color":"yellow"},{"text":" fût son rôle..."}]

# English
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=0}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text":" The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" died, he was"},{"text": "UWUWUWUWU", "color": "gray", "obfuscated":true},{"text":"!"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" died, he was a"},{"text": "Innocent", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"nbt": "solitaire", "storage": "switch:temp", "interpret":false, "color": "dark_aqua"},{"text":"!"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" died, he was the"},{"text": "Inspector", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text":"!"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead, he was the"},{"text": "Ninja", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"nbt": "solitaire", "storage": "switch:temp", "interpret":false, "color": "dark_aqua"},{"text":"!"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" died, he was a"},{"text": "Traitor", "color": "red"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text":"!"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead, he was the"},{"text": "Big Traitor", "color": "dark_red"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text":"!"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead, he was the"},{"text": "Floupy", "color": "yellow"},{"text":"!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=0}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text": "died, it was a"},{"text": "UWUWUWUWU", "color": "gray", "obfuscated":true},{"text":"!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" died, it was a"},{"text": "Innocent", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"nbt": "solitaire", "storage": "switch:temp", "interpret":false, "color": "dark_aqua"},{"text":"!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead, it was the"},{"text": "Inspector", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text":"!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead, it was the"},{"text": "Ninja", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"nbt": "solitaire", "storage": "switch:temp", "interpret":false, "color": "dark_aqua"},{"text":"!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead, he was a"},{"text": "Traitor", "color": "red"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text":"!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead, it was the"},{"text": "Big Traitor", "color": "dark_red"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text":"!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead, it was the"},{"text": "Floupy", "color": "yellow"},{"text":"!"}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=0}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" died,"},{"text": "UWUWUWUWU", "color": "gray", "obfuscated":true},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text":" was his role..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text": "died,"},{"text": "Innocent", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"nbt": "solitaire", "storage": "switch:temp", "interpret":false, "color": "dark_aqua"},{"text":" was his role..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text": "died,"},{"text": "Inspector", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text": "was his role..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text": "died,"},{"text": "Ninja", "color": "green"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"nbt": "solitaire", "storage": "switch:temp", "interpret":false, "color": "dark_aqua"},{"text":" was his role..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text": "died,"},{"text": "Traitor", "color": "red"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text": "was his role..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" died,"},{"text": "Big Traitor", "color": "dark_red"},{"nbt": "stolen", "storage": "switch:temp", "interpret":false, "color": "yellow"},{"text":" was his role..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text":" The player"},{"nbt": "data.Name", "entity":"@s"},{"text":" is dead,"},{"text": "Floupy", "color": "yellow"},{"text":" was his role..."}]


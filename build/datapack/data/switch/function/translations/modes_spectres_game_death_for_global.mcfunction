
#> switch:translations/modes_spectres_game_death_for_global
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/spectres_game/death/for_global
#

# French
execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Spectre","color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Visible","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Spectror","color":"red"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Spectre","color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Visible","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Spectror","color":"red"},{"text":" !"}]

# English
execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player "},{"nbt":"data.name","entity":"@s"},{"text":" died, they was a "},{"text":"Spectre","color":"yellow"},{"text":"!"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player "},{"nbt":"data.name","entity":"@s"},{"text":" died, they was a "},{"text":"Visible","color":"green"},{"text":"!"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player "},{"nbt":"data.name","entity":"@s"},{"text":" died, they was a "},{"text":"Spectror","color":"red"},{"text":"!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player "},{"nbt":"data.name","entity":"@s"},{"text":" died, "},{"text":"Spectre","color":"yellow"},{"text":" they was!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player "},{"nbt":"data.name","entity":"@s"},{"text":" died, "},{"text":"Visible","color":"green"},{"text":" they was!"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player "},{"nbt":"data.name","entity":"@s"},{"text":" died, "},{"text":"Spectror","color":"red"},{"text":" they was!"}]


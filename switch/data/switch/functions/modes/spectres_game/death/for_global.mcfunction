
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
clear @a[predicate=switch:has_same_temp_id]

function switch:modes/spectres_game/death/inventory_filter
execute at @s run function switch:modes/spectres_game/death/inventory_drop

scoreboard players set #success switch.data 0
execute store success score #success switch.data if predicate switch:chance/0.5

execute as @a at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2

execute if score #success switch.data matches 0 if entity @s[tag=switch.spectres_game.visible] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Visible","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[tag=switch.spectres_game.spectre] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Spectre","color":"yellow"},{"text":" !"}]

execute if score #success switch.data matches 1 if entity @s[tag=switch.spectres_game.visible] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Visible","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[tag=switch.spectres_game.spectre] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Spectre","color":"yellow"},{"text":" !"}]

kill @s


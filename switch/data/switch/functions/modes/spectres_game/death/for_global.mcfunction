
scoreboard players operation #player_id switch.id = @s switch.id
tag @a[tag=!detached,predicate=switch:has_same_id] add switch.temp
clear @a[tag=switch.temp]

function switch:modes/spectres_game/death/inventory_filter
execute at @s run function switch:modes/spectres_game/death/inventory_drop

scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1

execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
execute if entity @a[tag=switch.temp,scores={switch.temp.spectror=1}] run scoreboard players set @s switch.alive 3

execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=1}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Spectre","color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=2}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Visible","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.alive=3}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Spectror","color":"red"},{"text":" !"}]

execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=1}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Spectre","color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=2}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Visible","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.alive=3}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Spectror","color":"red"},{"text":" !"}]

execute if entity @s[scores={switch.alive=1}] run scoreboard players add #nb_dead_spectres switch.data 1
execute if entity @s[scores={switch.alive=2}] run scoreboard players add #nb_dead_visibles switch.data 1


# Kill marker and remove player temp tag
tag @a[tag=switch.temp] remove switch.temp
kill @s


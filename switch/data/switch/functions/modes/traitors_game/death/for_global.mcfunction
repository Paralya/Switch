
scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]
execute at @s run function switch:modes/traitors_game/death/drop_inventory

scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 if predicate switch:chance/0.5 run scoreboard players set #success switch.data 2

execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2

execute if score #sc_silencieux switch.data matches 1 if predicate switch:chance/0.5 run scoreboard players set @s switch.temp.role 0

execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=0}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était "},{"text":"UWUWUWUWU","color":"gray","obfuscated":true},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=2}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Innocent","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=1}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était l'"},{"text":"Inspecteur","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était le "},{"text":"Ninja","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=5}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Traitre","color":"red"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=6}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était le "},{"text":"Gros Traitre","color":"dark_red"},{"text":" !"}]

execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=0}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"UWUWUWUWU","color":"gray","obfuscated":true},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=2}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Innocent","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=1}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était l'"},{"text":"Inspecteur","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était le "},{"text":"Ninja","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=5}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Traitre","color":"red"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=6}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était le "},{"text":"Gros Traitre","color":"dark_red"},{"text":" !"}]

execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=0}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"UWUWUWUWU","color":"gray","obfuscated":true},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=2}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Innocent","color":"green"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=1}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Inspecteur","color":"green"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Ninja","color":"green"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=5}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Traitre","color":"red"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=6}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Gros Traitre","color":"dark_red"},{"text":" fût son rôle..."}]

kill @s
execute unless score #sc_silencieux switch.data matches 1 run function switch:modes/traitors_game/update_sidebar


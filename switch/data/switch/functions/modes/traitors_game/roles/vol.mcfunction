
# Tag the Floupy and copy new role
tag @p[tag=!detached,scores={switch.temp.kills=1..,switch.temp.role=7}] add switch.floupy
scoreboard players operation #role switch.data = @s switch.temp.role
scoreboard players operation #player_id switch.id = @p[tag=switch.floupy] switch.id
scoreboard players operation @p[tag=switch.floupy] switch.temp.role = #role switch.data
scoreboard players operation @e[type=marker,predicate=switch:has_same_id] switch.temp.role = #role switch.data

# Remove current role
scoreboard players operation #player_id switch.id = @s switch.id
scoreboard players set @e[type=marker,predicate=switch:has_same_id] switch.temp.role 0
scoreboard players set @s switch.temp.role 0

# Tellraws
tellraw @s [{"text":"\nFloupy vient de vous voler votre rôle !\n","color":"red"}]
execute if score #role switch.data matches 1 run tellraw @p[tag=switch.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Inspecteur","color":"green"},{"text":" !"}]
execute if score #role switch.data matches 2 run tellraw @p[tag=switch.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Innocent","color":"green"},{"text":" !"}]
execute if score #role switch.data matches 3 run tellraw @p[tag=switch.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Ninja (seconde vie non-utilisée)","color":"green"},{"text":" !"}]
execute if score #role switch.data matches 4 run tellraw @p[tag=switch.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Ninja (seconde vie utilisée)","color":"green"},{"text":" !"}]
execute if score #role switch.data matches 5 run tellraw @p[tag=switch.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Traitre","color":"red"},{"text":" !"}]
execute if score #role switch.data matches 6 run tellraw @p[tag=switch.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Gros Traitre","color":"red"},{"text":" !"}]
execute if score #role switch.data matches 7 run tellraw @p[tag=switch.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Floupy","color":"yellow"},{"text":" !"}]

# Effects
execute if score #role switch.data matches 1 run attribute @p[tag=switch.floupy] generic.max_health base set 16
execute if score #role switch.data matches 1 run team join switch.temp.visible @p[tag=switch.floupy]
execute if score #role switch.data matches 3..4 run attribute @p[tag=switch.floupy] generic.movement_speed base set 0.115
execute if score #role switch.data matches 7 run attribute @p[tag=switch.floupy] generic.max_health base set 30

# Remove tag
scoreboard players reset @a[tag=switch.floupy] switch.temp.kills
tag @a[tag=switch.floupy] remove switch.floupy

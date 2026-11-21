
#> switch:modes/traitors_game/translations/roles_vol
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/traitors_game/roles/vol
#

# French
tellraw @s[scores={switch.lang=0}] [{"text":"\nFloupy vient de vous voler votre rôle !\n","color":"#FF3347"}]
execute if score #role switch.data matches 1 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Inspecteur","color":"#2EFF8B"},{"text":" !"}]
execute if score #role switch.data matches 2 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Innocent","color":"#2EFF8B"},{"text":" !"}]
execute if score #role switch.data matches 3 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Ninja (seconde vie non-utilisée)","color":"#2EFF8B"},{"text":" !"}]
execute if score #role switch.data matches 4 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Ninja (seconde vie utilisée)","color":"#2EFF8B"},{"text":" !"}]
execute if score #role switch.data matches 5 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Traitre","color":"#FF3347"},{"text":" !"}]
execute if score #role switch.data matches 6 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Gros Traitre","color":"#FF3347"},{"text":" !"}]
execute if score #role switch.data matches 7 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Floupy","color":"#FFE60A"},{"text":" !"}]

# English
tellraw @s[scores={switch.lang=1}] [{"text":"\nFloupy just stole your role!\n","color":"#FF3347"}]
execute if score #role switch.data matches 1 run tellraw @p[scores={switch.lang=1},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You stole the role "},{"text":"Inspector","color":"#2EFF8B"},{"text":"!"}]
execute if score #role switch.data matches 2 run tellraw @p[scores={switch.lang=1},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You stole the role "},{"text":"Innocent","color":"#2EFF8B"},{"text":"!"}]
execute if score #role switch.data matches 3 run tellraw @p[scores={switch.lang=1},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You stole the role "},{"text":"Ninja (second life unused)","color":"#2EFF8B"},{"text":"!"}]
execute if score #role switch.data matches 4 run tellraw @p[scores={switch.lang=1},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You stole the role "},{"text":"Ninja (second life used)","color":"#2EFF8B"},{"text":"!"}]
execute if score #role switch.data matches 5 run tellraw @p[scores={switch.lang=1},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You stole the role "},{"text":"Traitor","color":"#FF3347"},{"text":"!"}]
execute if score #role switch.data matches 6 run tellraw @p[scores={switch.lang=1},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You stole the role "},{"text":"Big Traitor","color":"#FF3347"},{"text":"!"}]
execute if score #role switch.data matches 7 run tellraw @p[scores={switch.lang=1},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You stole the role "},{"text":"Floupy","color":"#FFE60A"},{"text":"!"}]


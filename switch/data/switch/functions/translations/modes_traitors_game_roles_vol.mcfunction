
# French
tellraw @s[scores={switch.lang=0}] [{"text":"\nFloupy vient de vous voler votre rôle !\n","color":"red"}]
execute if score #role switch.data matches 1 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Inspecteur","color":"green"},{"text":" !"}]
execute if score #role switch.data matches 2 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Innocent","color":"green"},{"text":" !"}]
execute if score #role switch.data matches 3 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Ninja (seconde vie non-utilisée)","color":"green"},{"text":" !"}]
execute if score #role switch.data matches 4 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Ninja (seconde vie utilisée)","color":"green"},{"text":" !"}]
execute if score #role switch.data matches 5 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Traitre","color":"red"},{"text":" !"}]
execute if score #role switch.data matches 6 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Gros Traitre","color":"red"},{"text":" !"}]
execute if score #role switch.data matches 7 run tellraw @p[scores={switch.lang=0},tag=switch.temp.floupy] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez volé le rôle "},{"text":"Floupy","color":"yellow"},{"text":" !"}]


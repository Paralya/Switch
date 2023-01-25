tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"Le crossbow ne fonctionne pas normalement, il faut des pièces pour l'utiliser"}]
say not charge

item modify entity @s weapon.mainhand switch:not_charged
item modify entity @s weapon.offhand switch:not_charged
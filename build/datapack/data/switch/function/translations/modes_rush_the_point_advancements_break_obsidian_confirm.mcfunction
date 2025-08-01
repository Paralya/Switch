
#> switch:translations/modes_rush_the_point_advancements_break_obsidian_confirm
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/advancements/break_obsidian_confirm
#

# French
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Absorption à son équipe ! [+250 points]\n"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Speed à son équipe ! [+250 points]\n"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Strength à son équipe ! [+250 points]\n"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Resistance à son équipe ! [+250 points]\n"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, un Wither a été invoqué contre l'équipe ennemi ! [+250 points]\n"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Slowness à l'équipe ennemi ! [+250 points]\n"}]
execute if score #random switch.data matches 6 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Glowing à l'équipe ennemi ! [+250 points]\n"}]
execute if score #random switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Levitation à l'équipe ennemi ! [+250 points]\n"}]
execute if score #random switch.data matches 8 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Wither à l'équipe ennemi ! [+250 points]\n"}]
execute if score #random switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé l'obsidienne, cela donne l'effet Weakness à l'équipe ennemi ! [+250 points]\n"}]

# English
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Absorption effect to their team! [+250 points]\n"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Speed effect to their team! [+250 points]\n"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Strength effect to their team! [+250 points]\n"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, this gives the Resistance effect to their team! [+250 points]\n"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, a Wither has been summoned against the enemy team! [+250 points]\n"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Slowness effect to the enemy team! [+250 points]\n"}]
execute if score #random switch.data matches 6 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Glowing effect to the enemy team! [+250 points]\n"}]
execute if score #random switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Levitation effect to the enemy team! [+250 points]\n"}]
execute if score #random switch.data matches 8 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Wither effect to the enemy team! [+250 points]\n"}]
execute if score #random switch.data matches 9 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" got the obsidian bonus, which gives the Weakness effect to the enemy team! [+250 points]\n"}]


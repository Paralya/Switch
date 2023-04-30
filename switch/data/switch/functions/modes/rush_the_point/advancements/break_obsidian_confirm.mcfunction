
scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.rush_the_point.blue]
execute as @a at @s run playsound entity.player.levelup ambient @s

execute if score #color switch.data matches 0 run scoreboard players add #red_points switch.data 100
execute if score #color switch.data matches 0 run function switch:modes/rush_the_point/update_sidebar/red_points/

execute if score #color switch.data matches 1 run scoreboard players add #blue_points switch.data 100
execute if score #color switch.data matches 1 run function switch:modes/rush_the_point/update_sidebar/blue_points/

# Random
scoreboard players set #modulo_rand switch.data 10
function switch:math/get_random/

# Color red
execute if score #random switch.data matches 0 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.red] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.red] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.red] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.red] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.red] regeneration 60 0 true
execute if score #random switch.data matches 5 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.blue] slowness 60 0 true
execute if score #random switch.data matches 6 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.blue] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.blue] levitation 5 0 true
execute if score #random switch.data matches 8 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.blue] poison 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 0 run effect give @a[team=switch.rush_the_point.blue] weakness 60 0 true

# Color blue
execute if score #random switch.data matches 0 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.blue] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.blue] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.blue] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.blue] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.blue] regeneration 60 0 true
execute if score #random switch.data matches 5 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.red] slowness 60 0 true
execute if score #random switch.data matches 6 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.red] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.red] levitation 5 0 true
execute if score #random switch.data matches 8 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.red] poison 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 1 run effect give @a[team=switch.rush_the_point.red] weakness 60 0 true

# Messages
execute if score #random switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Absorption à son équipe [+100 points]\n"}]
execute if score #random switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Speed à son équipe [+100 points]\n"}]
execute if score #random switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Strength à son équipe [+100 points]\n"}]
execute if score #random switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Resistance à son équipe [+100 points]\n"}]
execute if score #random switch.data matches 4 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Régéneration à son équipe [+100 points]\n"}]
execute if score #random switch.data matches 5 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Slowness à l'équipe ennemi [+100 points]\n"}]
execute if score #random switch.data matches 6 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Glowing à l'équipe ennemi [+100 points]\n"}]
execute if score #random switch.data matches 7 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Levitation à l'équipe ennemi [+100 points]\n"}]
execute if score #random switch.data matches 8 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Poison à l'équipe ennemi [+100 points]\n"}]
execute if score #random switch.data matches 9 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a récuperé le bonus, cela donne l'effet Weakness à l'équipe ennemi [+100 points]\n"}]


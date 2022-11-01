
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=switch.alive,tag=switch.rush_the_point.red] unless entity @a[tag=switch.alive,tag=switch.rush_the_point.blue] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=switch.alive,tag=switch.rush_the_point.blue] unless entity @a[tag=switch.alive,tag=switch.rush_the_point.red] run scoreboard players add #game_state switch.data 2
execute unless entity @a[tag=switch.alive] run scoreboard players add #game_state switch.data 3

#1 = que des visibles
#2 = que des spectres
#3 = Plus personne

#Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #rush_the_point_seconds switch.data 100000

#Cas des vainqueurs
execute if score #rush_the_point_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 10 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"visibles","color":"green"},{"text":" ! GG à "},{"selector":"@a[tag=switch.alive,tag=switch.rush_the_point.red]"}]
execute if score #game_state switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"spectres","color":"yellow"},{"text":" ! GG à "},{"selector":"@a[tag=switch.alive,tag=switch.rush_the_point.blue]"}]
execute if score #game_state switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

execute if score #game_state switch.data matches 1 run scoreboard players add @a[tag=switch.alive,tag=switch.rush_the_point.red] switch.money 1
execute if score #game_state switch.data matches 2 run scoreboard players add @a[tag=switch.alive,tag=switch.rush_the_point.blue] switch.money 1

#Visuel de fin de partie
execute if score #rush_the_point_seconds switch.data matches 900.. as @a at @s run playsound item.totem.use ambient @s


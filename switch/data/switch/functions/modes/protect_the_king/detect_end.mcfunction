
scoreboard players set #game_state switch.data 0
execute if entity @a[gamemode=survival,team=switch.temp.red_king] unless entity @a[gamemode=survival,team=switch.temp.blue_king] run scoreboard players add #game_state switch.data 1
execute if entity @a[gamemode=survival,team=switch.temp.blue_king] unless entity @a[gamemode=survival,team=switch.temp.red_king] run scoreboard players add #game_state switch.data 2
execute unless entity @a[gamemode=survival] run scoreboard players add #game_state switch.data 3

#1 = Victoire Rouge
#2 = Victoire Bleue
#3 = Plus personne

#Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #protect_the_king_seconds switch.data 100000

#Cas des vainqueurs
execute if score #protect_the_king_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 15 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"rouges","color":"red"},{"text":" ! GG à "},{"selector":"@a[team=switch.temp.red_king]"},{"text":", "},{"selector":"@a[team=switch.temp.red]"}]
execute if score #game_state switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"bleus","color":"blue"},{"text":" ! GG à "},{"selector":"@a[team=switch.temp.blue_king]"},{"text":", "},{"selector":"@a[team=switch.temp.blue]"}]
execute if score #game_state switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

execute if score #game_state switch.data matches 1 run scoreboard players add @a[gamemode=survival,team=switch.temp.red_king] switch.money 1
execute if score #game_state switch.data matches 1 run scoreboard players add @a[gamemode=survival,team=switch.temp.red] switch.money 1
execute if score #game_state switch.data matches 2 run scoreboard players add @a[gamemode=survival,team=switch.temp.blue_king] switch.money 1
execute if score #game_state switch.data matches 2 run scoreboard players add @a[gamemode=survival,team=switch.temp.blue] switch.money 1

#Visuel de fin de partie
execute if score #protect_the_king_seconds switch.data matches 900.. as @a at @s run playsound item.totem.use ambient @s


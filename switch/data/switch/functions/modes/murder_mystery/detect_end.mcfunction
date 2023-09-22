
# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[gamemode=!spectator,scores={switch.temp.role=1..2}] unless entity @a[gamemode=!spectator,scores={switch.temp.role=3}] run scoreboard players set #game_state switch.data 1
execute if entity @a[gamemode=!spectator,team=switch.temp.innocent] unless entity @a[gamemode=!spectator,team=!switch.temp.innocent] run scoreboard players set #game_state switch.data 2
execute unless entity @a[gamemode=!spectator] run scoreboard players set #game_state switch.data 3

# 1 = Victoire Innocent
# 2 = Victoire Murder
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs
execute if score #remaining_time switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des innocents restants !"}]
execute if score #game_state switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire de "},{"selector":"@a[gamemode=!spectator,scores={switch.temp.role=3}]","color":"red"}]
execute if score #game_state switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"innocents","color":"green"},{"text":" ! GG à "},{"selector":"@a[gamemode=!spectator,scores={switch.temp.role=1..2}]"}]
execute if score #game_state switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

execute if score #game_state switch.data matches 0 as @a[gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 1 as @a[gamemode=!spectator,scores={switch.temp.role=3}] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:engine/add_money

# Visuel de fin de partie
execute if score #remaining_time switch.data matches 1 as @a at @s run playsound item.totem.use ambient @s


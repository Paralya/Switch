
# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[gamemode=!spectator,team=switch.temp.red] unless entity @a[gamemode=!spectator,team=!switch.temp.red] run scoreboard players add #game_state switch.data 1
execute if entity @a[gamemode=!spectator,team=switch.temp.blue] unless entity @a[gamemode=!spectator,team=!switch.temp.blue] run scoreboard players add #game_state switch.data 2
execute unless entity @a[gamemode=!spectator] run scoreboard players add #game_state switch.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs
execute if score #remaining_time switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 12 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"rouges","color":"red"},{"text":" ! GG à "},{"selector":"@a[gamemode=!spectator,team=switch.temp.red]"}]
execute if score #game_state switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"bleus","color":"blue"},{"text":" ! GG à "},{"selector":"@a[gamemode=!spectator,team=switch.temp.blue]"}]
execute if score #game_state switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

execute if score #game_state switch.data matches 1 as @a[gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_money

# Visuel de fin de partie
execute if score #remaining_time switch.data matches 1 as @a at @s run playsound item.totem.use ambient @s


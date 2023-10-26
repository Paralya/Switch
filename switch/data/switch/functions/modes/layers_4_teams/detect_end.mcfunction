
# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red] run scoreboard players set #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.blue] run scoreboard players set #game_state switch.data 2
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.green] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.green] run scoreboard players set #game_state switch.data 3
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.yellow] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.yellow] run scoreboard players set #game_state switch.data 4
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state switch.data 5

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Victoire Verte
# 4 = Victoire Jaune
# 5 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..4 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 12 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"rouges","color":"red"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.red]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"bleus","color":"blue"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.blue]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"verts","color":"green"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.green]"}]
execute if score #game_state switch.data matches 4 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"jaunes","color":"yellow"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.yellow]"}]
execute if score #game_state switch.data matches 5 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 3 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.green] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 4 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.yellow] at @s run function switch:engine/add_money

# Visuel de fin de partie
execute if score #remaining_time switch.data matches 0 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s



# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] unless entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] run scoreboard players set #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] unless entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] run scoreboard players set #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state switch.data 3

# 1 = Victoire Innocent
# 2 = Victoire Murder
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 0 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des innocents restants !"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 1 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire de "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}]","color":"red"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 2 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"innocents","color":"green"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}]"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 3 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 0 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:engine/add_money
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] at @s run function switch:engine/add_money
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:engine/add_money

execute if score #remaining_time switch.data matches ..1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Détective : "},{"selector":"@a[scores={switch.temp.role=2}]","color":"green"},{"text":" - Murderer : "},{"selector":"@a[scores={switch.temp.role=3}]","color":"red"}]
execute if score #remaining_time switch.data matches ..1 as @a[scores={switch.temp.role=3}] on attacker if entity @s[scores={switch.temp.role=1}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Héro : "},{"selector":"@s","color":"blue"}]

# Visuel de fin de partie
execute if score #remaining_time switch.data matches ..1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s



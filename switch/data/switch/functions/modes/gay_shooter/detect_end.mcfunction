
scoreboard players set #game_state switch.data 0
execute if entity @a[gamemode=adventure,tag=switch.gay_shooter.gay] unless entity @a[gamemode=adventure,tag=switch.gay_shooter.shooter] run scoreboard players set #game_state switch.data 1
execute if entity @a[gamemode=adventure,tag=switch.gay_shooter.shooter] unless entity @a[gamemode=adventure,tag=switch.gay_shooter.gay] run scoreboard players set #game_state switch.data 2
execute unless entity @a[gamemode=adventure] run scoreboard players set #game_state switch.data 3
execute if score #gay_shooter_seconds switch.data matches 300.. run scoreboard players set #game_state switch.data 4

# 1 = que des gays
# 2 = que des shooters
# 3 = Plus personne
# 4 = Temps écoulé

# Cas de fin de partie
execute if score #game_state switch.data matches 1..4 run scoreboard players set #gay_shooter_seconds switch.data 100000

# Cas des vainqueurs
execute if score #gay_shooter_seconds switch.data matches 300 if score #game_state switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 10 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"gays","color":"light_purple"},{"text":" ! GG à "},{"selector":"@a[gamemode=adventure,tag=switch.gay_shooter.gay]"}]
execute if score #game_state switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"shooters","color":"gray"},{"text":" ! GG à "},{"selector":"@a[gamemode=adventure,tag=switch.gay_shooter.shooter]"}]
execute if score #game_state switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]
execute if score #game_state switch.data matches 4 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des shooters ("},{"selector":"@a[gamemode=adventure,tag=switch.gay_shooter.shooter]"},{"text":") !"}]

execute if score #game_state switch.data matches 1 as @a[gamemode=adventure,tag=switch.gay_shooter.gay] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[gamemode=adventure,tag=switch.gay_shooter.shooter] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 4 as @a[gamemode=adventure,tag=switch.gay_shooter.shooter] at @s run function switch:engine/add_money

# Visuel de fin de partie
execute if score #gay_shooter_seconds switch.data matches 300.. as @a at @s run playsound item.totem.use ambient @s


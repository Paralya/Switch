
scoreboard players set #game_state switch.data 0
execute if entity @a[gamemode=!spectator,team=switch.temp.hunter] unless entity @a[gamemode=!spectator,team=switch.temp.mouse] run scoreboard players set #game_state switch.data 1
execute if entity @a[gamemode=!spectator,team=switch.temp.mouse] unless entity @a[gamemode=!spectator,team=switch.temp.hunter] run scoreboard players set #game_state switch.data 2
execute unless entity @a[gamemode=!spectator] run scoreboard players set #game_state switch.data 3

# 1 = que des chasseurs
# 2 = que des souris
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data -1

# Cas des vainqueurs
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des "},{"text":"souris","color":"blue"},{"text":" ! GG à "},{"selector":"@a[gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"chasseurs","color":"red"},{"text":" ! GG à "},{"selector":"@a[gamemode=!spectator,team=switch.temp.hunter]"}]
execute if score #game_state switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, plus aucun chasseur en vie donc victoire des "},{"text":"souris","color":"blue"},{"text":" ! GG à "},{"selector":"@a[gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# Money
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 as @a[gamemode=!spectator,team=switch.temp.mouse] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 1 as @a[gamemode=!spectator,team=switch.temp.hunter] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[gamemode=!spectator,team=switch.temp.mouse] at @s run function switch:engine/add_money

# Visuel de fin de partie
execute if score #remaining_time switch.data matches ..0 as @a at @s run playsound item.totem.use ambient @s

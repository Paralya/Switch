
scoreboard players set #game_state switch.data 0
# Role reminder (1 = inspecteur, 2 = innocent, 3 & 4 = ninja, 5 = traitor, 6 = big traitor)
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=..4}] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=5}] run scoreboard players add #game_state switch.data 2
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=6}] run scoreboard players add #game_state switch.data 4

# 1 = que des innocents
# 2 = que des traitres normaux
# 3 = Innocents et traitres
# 4 = que le gros traitre
# 5 = gros traitre + innocent
# 6 = gros traitre + traitres normaux
# 7 = encore tous les camps

# Cas de fin de partie
execute if score #game_state switch.data matches 1 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #game_state switch.data matches 2 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #game_state switch.data matches 4 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #traitors_game_seconds switch.data matches 100000 as @e[type=marker,tag=switch.player_dead] run function switch:modes/traitors_game/death/for_global

# Cas des vainqueurs
execute if score #game_state switch.data matches 1 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"innocents","color":"green"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..,switch.temp.role=..4}]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"traitres","color":"red"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..,switch.temp.role=5}]"}]
execute if score #game_state switch.data matches 4 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire du "},{"text":"gros traitre","color":"dark_red"},{"text":" ! GG "},{"selector":"@a[scores={switch.alive=1..,switch.temp.role=6}]"}]
execute if score #traitors_game_seconds switch.data matches 1200 if score #game_state switch.data matches 6 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des "},{"text":"traitres normaux","color":"red"},{"text":" car il ne reste aucun innocent et que le gros traitre n'a pas su trahir ! GG à "},{"selector":"@a[scores={switch.alive=1..,switch.temp.role=5}]"}]
execute if score #game_state switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=..4}] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=5},tag=!switch.traitors_game.big_traitor] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 4 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=6}] at @s run function switch:engine/add_money
execute if score #traitors_game_seconds switch.data matches 1200 if score #game_state switch.data matches 1 as @a[scores={switch.alive=1..,switch.temp.role=..4}] at @s run function switch:engine/add_money

# Cas des égalités
execute if score #traitors_game_seconds switch.data matches 1200 if score #game_state switch.data matches 3 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 20 minutes !"}]
execute if score #traitors_game_seconds switch.data matches 1200 if score #game_state switch.data matches 5 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 20 minutes !"}]
execute if score #traitors_game_seconds switch.data matches 1200 if score #game_state switch.data matches 7 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 20 minutes !"}]


# Visuel de fin de partie
execute if score #traitors_game_seconds switch.data matches 1200.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s


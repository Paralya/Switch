
scoreboard players set #game_state switch.data 0
execute if entity @a[scores={switch.alive=1..},tag=!switch.murder_uhc.traitor] run scoreboard players add #game_state switch.data 1
execute if entity @a[scores={switch.alive=1..},tag=switch.murder_uhc.traitor,tag=!switch.murder_uhc.big_traitor] run scoreboard players add #game_state switch.data 2
execute if entity @a[scores={switch.alive=1..},tag=switch.murder_uhc.big_traitor] run scoreboard players add #game_state switch.data 4

# 1 = que des innocents
# 2 = que des traitres normaux
# 3 = Innocents et traitres
# 4 = que le gros traitre
# 5 = gros traitre + innocent
# 6 = gros traitre + traitres normaux
# 7 = encore tous les camps

# Cas de fin de partie
execute if score #game_state switch.data matches 1 run scoreboard players set #murder_uhc_seconds switch.data 100000
execute if score #game_state switch.data matches 2 run scoreboard players set #murder_uhc_seconds switch.data 100000
execute if score #game_state switch.data matches 4 run scoreboard players set #murder_uhc_seconds switch.data 100000
execute if score #murder_uhc_seconds switch.data matches 100000 as @e[type=marker,tag=switch.player_dead] run function switch:modes/murder_uhc/death/for_global

# Cas des vainqueurs
execute if score #game_state switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"innocents","color":"green"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..},tag=!switch.murder_uhc.traitor]"}]
execute if score #game_state switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"traitres","color":"red"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..},tag=switch.murder_uhc.traitor]"}]
execute if score #game_state switch.data matches 4 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire du "},{"text":"gros traitre","color":"dark_red"},{"text":" ! GG "},{"selector":"@a[scores={switch.alive=1..},tag=switch.murder_uhc.big_traitor]"}]
execute if score #murder_uhc_seconds switch.data matches 1200 if score #game_state switch.data matches 6 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des "},{"text":"traitres normaux","color":"red"},{"text":" car il ne reste aucun innocent et que le gros traitre n'a pas su trahir ! GG à "},{"selector":"@a[scores={switch.alive=1..},tag=switch.murder_uhc.traitor]"}]
execute if score #game_state switch.data matches 1 as @a[scores={switch.alive=1..},tag=!switch.murder_uhc.traitor] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[scores={switch.alive=1..},tag=switch.murder_uhc.traitor,tag=!switch.murder_uhc.big_traitor] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 4 as @a[scores={switch.alive=1..},tag=switch.murder_uhc.big_traitor] at @s run function switch:engine/add_money
execute if score #murder_uhc_seconds switch.data matches 1200 if score #game_state switch.data matches 1 as @a[scores={switch.alive=1..},tag=!switch.murder_uhc.traitor] at @s run function switch:engine/add_money

# Cas des égalités
execute if score #murder_uhc_seconds switch.data matches 1200 if score #game_state switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 20 minutes !"}]
execute if score #murder_uhc_seconds switch.data matches 1200 if score #game_state switch.data matches 5 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 20 minutes !"}]
execute if score #murder_uhc_seconds switch.data matches 1200 if score #game_state switch.data matches 7 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 20 minutes !"}]


# Visuel de fin de partie
execute if score #murder_uhc_seconds switch.data matches 1200.. as @a at @s run playsound item.totem.use ambient @s


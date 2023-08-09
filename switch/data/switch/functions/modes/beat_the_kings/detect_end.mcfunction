
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=switch.alive,tag=switch.beat_the_kings.civil] unless entity @a[tag=switch.alive,tag=switch.beat_the_kings.king] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=switch.alive,tag=switch.beat_the_kings.king] unless entity @a[tag=switch.alive,tag=switch.beat_the_kings.civil] run scoreboard players add #game_state switch.data 2
execute unless entity @a[tag=switch.alive] run scoreboard players add #game_state switch.data 3

# 1 = que des civils
# 2 = que des kings
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #beat_the_kings_seconds switch.data 100000

# Cas des vainqueurs
execute if score #beat_the_kings_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 10 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"civils","color":"green"},{"text":" ! GG à "},{"selector":"@a[tag=switch.alive,tag=switch.beat_the_kings.civil]"}]
execute if score #game_state switch.data matches 2 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"kings","color":"yellow"},{"text":" ! GG à "},{"selector":"@a[tag=switch.alive,tag=switch.beat_the_kings.king]"}]
execute if score #game_state switch.data matches 3 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

execute if score #game_state switch.data matches 1 as @a[tag=switch.alive,tag=switch.beat_the_kings.civil] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[tag=switch.alive,tag=switch.beat_the_kings.king] at @s run function switch:engine/add_money

# Visuel de fin de partie
execute if score #beat_the_kings_seconds switch.data matches 900.. as @a at @s run playsound item.totem.use ambient @s


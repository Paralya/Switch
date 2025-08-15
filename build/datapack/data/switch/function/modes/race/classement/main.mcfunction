
#> switch:modes/race/classement/main
#
# @within	switch:modes/race/second
#

# Définition du classement selon le nombre de checkpoints passés
scoreboard players set @a[tag=!detached] switch.temp.classement 1
execute as @a[tag=!detached] at @a[tag=!detached] if score @s switch.temp.checkpoint < @p switch.temp.checkpoint run scoreboard players add @s switch.temp.classement 1

# Amélioration du classement selon leur distance du prochain checkpoint si des joueurs ont le même nombre de checkpoints
execute as @a[tag=!detached] run function switch:modes/race/classement/find_anyone_in_same_cp
execute as @a[tag=!detached] run function switch:modes/race/classement/try

# Attribution des places
team join switch.temp.1 @a[scores={switch.temp.classement=1}]
team join switch.temp.2 @a[scores={switch.temp.classement=2}]
team join switch.temp.3 @a[scores={switch.temp.classement=3}]
team join switch.temp.4 @a[scores={switch.temp.classement=4}]
team join switch.temp.5 @a[scores={switch.temp.classement=5}]
team join switch.temp.6 @a[scores={switch.temp.classement=6}]
team join switch.temp.7 @a[scores={switch.temp.classement=7}]
team join switch.temp.8 @a[scores={switch.temp.classement=8}]
team join switch.temp.9 @a[scores={switch.temp.classement=9}]
team join switch.temp.10 @a[scores={switch.temp.classement=10}]
team join switch.temp.10+ @a[scores={switch.temp.classement=11..}]
execute as @a[tag=!detached] run scoreboard players operation @s switch.temp.pv_classement = @s switch.temp.classement

# Repositionnement des joueurs selon leur place dans le scoreboard sidebar
scoreboard players set #max switch.temp.classement 0
scoreboard players operation #max switch.temp.classement > @a[tag=!detached] switch.temp.classement
scoreboard players operation @a[tag=!detached] switch.temp.classement -= #max switch.temp.classement
scoreboard players operation @a[tag=!detached] switch.temp.classement *= #-1 switch.data

# Application des changements à droite
execute as @a[tag=!detached] run scoreboard players operation @s switch.temp.sidebar = @s switch.temp.classement


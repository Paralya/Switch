
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[scores={switch.alive=2}] at @s run function switch:engine/add_money
execute if score #process_end switch.data matches 1 if entity @a[scores={switch.alive=2}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "},{"selector":"@a[scores={switch.alive=1},sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[scores={switch.alive=2}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Aucun joueur n'a terminé la course dans le temps imparti !"}]
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/kart_racer/complete

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart


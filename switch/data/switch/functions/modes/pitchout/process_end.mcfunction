
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run scoreboard players add @a[tag=switch.first_life] switch.money 1
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=switch.first_life]"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]
execute if score #process_end switch.data matches 1 run tag @a remove switch.first_life
execute if score #process_end switch.data matches 1 run tag @a remove switch.second_life
execute if score #process_end switch.data matches 1 run tag @a remove switch.third_life
execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/pitchout/death

execute if score #process_end switch.data matches 100 run function switch:engine/restart


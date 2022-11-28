
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run scoreboard players operation #max switch.data > @a switch.temp.points
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 as @a if score @s switch.temp.points = #max switch.data run tag @s add switch.winner
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run scoreboard players add @a[scores={switch.temp.lives=1..}] switch.money 1
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=switch.winner]"},{"text":" avec "},{"score":{"name":"#max","objective":"switch.data"},"color":"gold"},{"text":" points !"}]
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 2 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run gamemode spectator @a
execute if score #process_end switch.data matches 1 as @a run function switch:modes/de_a_coudre/death

execute if score #process_end switch.data matches 100 run function switch:engine/restart


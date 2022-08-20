
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a run function switch:modes/pitch_creep/death
execute if score #process_end switch.data matches 1 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Merci d'avoir repoussé un maximum de creepers."}]

execute if score #process_end switch.data matches 100 run function switch:engine/restart


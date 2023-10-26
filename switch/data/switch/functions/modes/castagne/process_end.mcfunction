
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 store result score #health switch.data run data get entity @r[gamemode=survival] Health
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run scoreboard players operation #health switch.data /= #2 switch.data
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!switch.detached,gamemode=survival] at @s run function switch:engine/add_money
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[tag=!switch.detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!switch.detached,gamemode=survival]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#health","objective":"switch.data"},"color":"yellow"},{"text":" points de vie restants !"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[tag=!switch.detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]
execute if score #process_end switch.data matches 1 as @a[tag=!switch.detached] run function switch:modes/castagne/death

execute if score #process_end switch.data matches 100 run function switch:engine/restart


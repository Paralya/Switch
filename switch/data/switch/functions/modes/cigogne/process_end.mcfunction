
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 store result score #health switch.data run data get entity @r[gamemode=survival] Health
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,gamemode=survival]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#health","objective":"switch.data"},"color":"yellow"},{"text":" points de vie restants !"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/cigogne/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Advancement
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached,scores={switch.temp.kill=1..}] switch.temp.kill
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={switch.temp.kill=1..}] if score #max switch.data = @s switch.temp.kill run advancement grant @s only switch:visible/23

execute if score #process_end switch.data matches 200 run function switch:engine/restart


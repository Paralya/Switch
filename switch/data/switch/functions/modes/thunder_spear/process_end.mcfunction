
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run tag @a[tag=!detached] remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.kills
execute if score #process_end switch.data matches 1 as @a[tag=!detached] if score #max switch.data = @s switch.temp.kills run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 store result score #remaining_players switch.data if entity @a[tag=!detached,tag=switch.winner]
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,tag=switch.winner]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills !"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une égalité entre "},{"selector":"@a[tag=!detached,tag=switch.winner]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills !"}]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/thunder_spear/death
execute if score #process_end switch.data matches 1 run tag @a[tag=!detached] remove switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 100 run function switch:engine/restart


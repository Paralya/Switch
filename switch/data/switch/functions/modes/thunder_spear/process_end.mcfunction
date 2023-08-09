
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a switch.temp.kills
execute if score #process_end switch.data matches 1 as @a if score #max switch.data = @s switch.temp.kills run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=switch.winner] at @s run function switch:engine/add_money
execute if score #process_end switch.data matches 1 store result score #remaining_players switch.data if entity @a[tag=switch.winner]
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=switch.winner]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills !"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une égalité entre "},{"selector":"@a[tag=switch.winner]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills !"}]
execute if score #process_end switch.data matches 1 as @a run function switch:modes/thunder_spear/death
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner

execute if score #process_end switch.data matches 100 run function switch:engine/restart


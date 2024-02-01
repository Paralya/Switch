
scoreboard players add #process_end switch.data 1

# Get the winner (the player with the most points)
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.points
execute if score #process_end switch.data matches 1 as @a[tag=!detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.winner

# Give the winner money and tellraw
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,tag=switch.winner]"},{"text":" avec "},{"score":{"name":"#max","objective":"switch.data"},"color":"gold"},{"text":" points !"}]
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner

# Other stuff
execute if score #process_end switch.data matches 1 run clear @a[tag=!detached]
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game
execute if score #process_end switch.data matches 200 run function switch:engine/restart


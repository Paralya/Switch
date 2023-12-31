
scoreboard players add #process_end switch.data 1

# Get the winner (the player with the less shots)
execute if score #process_end switch.data matches 1 run tag @a[tag=!detached] remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #min switch.data 1000000
execute if score #process_end switch.data matches 1 run scoreboard players operation #min switch.data < @a[tag=!detached,scores={golf_ball.shots=1..}] golf_ball.shots
execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={golf_ball.shots=1..}] if score @s golf_ball.shots = #min switch.data run tag @s add switch.winner

# Give the winner money and tellraw
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] run function switch:modes/minigolf/record_save with storage switch:records minigolf
execute if score #process_end switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,tag=switch.winner]"},{"text":" avec "},{"score":{"name":"#min","objective":"switch.data"},"color":"gold"},{"text":" coups !"}]
execute if score #process_end switch.data matches 1 run tag @a[tag=!detached] remove switch.winner

# Other stuff
execute if score #process_end switch.data matches 1 as @a[tag=!detached,predicate=golf_ball:has_vehicle] at @s run function golf_ball:ball/exit_player
execute if score #process_end switch.data matches 1 run clear @a[tag=!detached]
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 100 run function switch:engine/restart


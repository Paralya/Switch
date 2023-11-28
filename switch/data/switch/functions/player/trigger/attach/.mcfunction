
scoreboard players set @s switch.trigger.attach 0
tag @s remove detached

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s switch.alive 0
execute if score #state switch.data matches 2 run function switch:engine/voting_time/player_join
execute if score #state switch.data matches 3 run function #switch:signals/player/joined


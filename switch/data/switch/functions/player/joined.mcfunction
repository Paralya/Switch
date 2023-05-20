
# On reset le score de déconnexion
scoreboard players set @s switch.leave 0

# On détecte si c'est une reconnexion ou non
scoreboard players set #reconnect switch.data 0
execute store success score #reconnect switch.data if score @s switch.last_total_games = #total_games switch.data

# Selon l'état du jeu, on exécute les fonctions correspondantes
execute if score #state switch.data matches 2 run function switch:engine/voting_time/player_join
execute if score #state switch.data matches 3 run function #switch:signals/player/joined


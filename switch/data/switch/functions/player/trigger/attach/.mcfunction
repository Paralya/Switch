
scoreboard players set @s switch.trigger.attach 0
execute unless entity @s[team=switch.tutoriel] run tag @s remove detached

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s switch.alive 0
execute unless entity @s[team=switch.tutoriel] if score #state switch.data matches 2 run function switch:engine/voting_time/player_join
execute unless entity @s[team=switch.tutoriel] if score #state switch.data matches 3 run function #switch:signals/player/joined



execute unless entity @s[team=switch.tutorial] run tag @s remove detached
execute unless entity @s[team=switch.tutorial] run team leave @s

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s switch.alive 0
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 2 run function switch:engine/voting_time/player_join
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 3 run scoreboard players set #reconnect switch.data 0
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 3 run function switch:engine/signals/joined

# Check if enough players
execute store result score #nb_attached switch.data if entity @a[tag=!detached]
execute unless score #nb_attached switch.data matches 5.. run tellraw @s[tag=!detached] [{"text":"\n\n\nPas assez de joueurs sont attachés pour lancer le moteur !","color":"red"},{"text":"\nConsidérez de vous détacher vers le lobby Switch avec '/detach' ou bien faire venir au minimum 5 joueurs","color":"gray"}]


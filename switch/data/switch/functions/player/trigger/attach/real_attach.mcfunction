
execute unless entity @s[team=switch.tutorial] run tag @s remove detached
execute unless entity @s[team=switch.tutorial] run team leave @s

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s switch.alive 0
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 2 run function switch:engine/voting_time/player_join
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 3 run scoreboard players set #reconnect switch.data 0
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 3 run function switch:engine/signals/joined

# Check if enough players
execute store result score #nb_attached switch.data if entity @a[tag=!detached]
function switch:translations/player_trigger_attach_real_attach


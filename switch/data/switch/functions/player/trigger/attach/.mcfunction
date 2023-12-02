
scoreboard players set @s switch.trigger.attach 0
execute if score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] run tag @s remove detached
execute unless score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s [{"text":"Cette commande est désactivée pour le moment.","color":"red"}]

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s switch.alive 0
execute if score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] if score #state switch.data matches 2 run function switch:engine/voting_time/player_join
execute if score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] if score #state switch.data matches 3 run function #switch:signals/player/joined


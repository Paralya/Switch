
## Fonction executée quand un joueur se connecte sur le serveur et lorsque le mode de jeu est activé
## Le score #reconnect dans switch.data prend une valeur de 0 ou de 1 selon si il s'est reconnecté dans la même partie
# execute if score #reconnect switch.data matches 0 run tell none new player, launch join function ?
# execute if score #reconnect switch.data matches 1 run tell none reconnected

## New player
# Spectator when final phase
execute if score #reconnect switch.data matches 0 unless score #build_battle_state switch.data matches 0..1 run gamemode spectator @s

# First and second phase, make the player join the game
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 0..1 run scoreboard players set @s switch.temp.id -1
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 0..1 summon marker run function switch:modes/build_battle/preparation/summon_marker
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 1 run gamemode creative @s
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 0 run gamemode adventure @s
execute if score #reconnect switch.data matches 0 if score #build_battle_state switch.data matches 0 run effect give @s levitation infinite 255 true


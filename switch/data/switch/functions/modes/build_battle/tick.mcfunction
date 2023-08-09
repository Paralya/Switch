
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #build_battle_ticks switch.data 1

## Global tick
# For each marker, place the correct template
execute if data storage switch:main {map:"build_battle"} at @e[tag=switch.build_battle_marker] run place template switch:build_battle


## Fin de partie
scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches ..0 run function switch:modes/build_battle/process_end


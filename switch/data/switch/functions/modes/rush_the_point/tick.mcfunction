
## Fonction executée tous les ticks lorsque le mode de jeu est activé

function switch:modes/rush_the_point/tick_common

# Maps colors capture
scoreboard players set #color switch.data 0
execute if score #remaining_time switch.data matches 1.. if data storage switch:main {map:"rush_the_point_1"} run function switch:modes/rush_the_point/maps/rush_the_point_1

# Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. if score #red_points switch.data matches 5000.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1.. if score #blue_points switch.data matches 5000.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 0 run function switch:modes/rush_the_point/process_end


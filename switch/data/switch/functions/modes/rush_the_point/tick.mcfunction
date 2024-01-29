
function switch:modes/rush_the_point/tick_common

# Marker zone tick
execute as @e[type=marker,tag=switch.rush_the_point.zone] at @s run function switch:modes/rush_the_point/tick_zone

# Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. if score #red_points switch.data matches 5000.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1.. if score #blue_points switch.data matches 5000.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 0 run function switch:modes/rush_the_point/process_end


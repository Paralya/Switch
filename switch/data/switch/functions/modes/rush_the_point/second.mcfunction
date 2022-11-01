
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #rush_the_point_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
function switch:modes/rush_the_point/update_sidebar/timer/

execute if score #rush_the_point_seconds switch.data matches 0.. run function switch:modes/rush_the_point/xp_bar
execute if score #rush_the_point_seconds switch.data matches 0 run function switch:modes/rush_the_point/roles/announcement



##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #laser_game_seconds switch.data 1
execute if score #laser_game_seconds switch.data matches 1 run setblock 516 104 523 iron_trapdoor[powered=true,open=true]

scoreboard players remove #remaining_time switch.data 1
function switch:modes/laser_game/update_sidebar/timer


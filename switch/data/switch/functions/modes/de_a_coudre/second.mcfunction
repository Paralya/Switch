
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #de_a_coudre_seconds switch.data 1

function switch:modes/de_a_coudre/xp_bar
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches 0 run kill @a[gamemode=adventure]


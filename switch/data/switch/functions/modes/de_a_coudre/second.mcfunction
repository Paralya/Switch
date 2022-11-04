
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #de_a_coudre_seconds switch.data 1

execute if score #de_a_coudre_seconds switch.data matches 0 as @a at @s run function switch:modes/de_a_coudre/give_items


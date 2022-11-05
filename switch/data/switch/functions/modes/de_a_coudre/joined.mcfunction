
##Fonction executée quand un joueur se connecte sur le serveur et lorsque le mode de jeu est activé
##Le score #reconnect dans switch.data prend une valeur de 0 ou de 1 selon si il s'est reconnecté dans la même partie
#execute if score #reconnect switch.data matches 0 run tell none new player, launch join function ?
#execute if score #reconnect switch.data matches 1 run tell none reconnected

scoreboard players reset @s switch.temp.order
scoreboard players reset @s switch.temp.lives
function switch:modes/de_a_coudre/death


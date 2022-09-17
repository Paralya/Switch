
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #traitors_game_seconds switch.data 1

execute if score #traitors_game_seconds switch.data matches 0 run function switch:modes/traitors_game/roles/announcement
execute if score #traitors_game_seconds switch.data matches 60 run tellraw @a[tag=switch.traitors_game.detective] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=switch.traitors_game.traitor,sort=random,limit=1]","color":"green"},{"text":" !"}]




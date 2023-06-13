
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #traitors_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #traitors_game_seconds switch.data matches 0.. run function switch:modes/traitors_game/xp_bar
execute if score #traitors_game_seconds switch.data matches 0 run function switch:modes/traitors_game/roles/announcement
execute if score #traitors_game_seconds switch.data matches 120 run tellraw @a[tag=switch.traitors_game.detective] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[gamemode=!spectator,tag=switch.traitors_game.traitor,sort=random,limit=1]","color":"green"},{"text":" !"}]
execute if score #traitors_game_seconds switch.data matches 240 run tellraw @a[tag=switch.traitors_game.detective] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[gamemode=!spectator,tag=switch.traitors_game.traitor,sort=random,limit=1]","color":"green"},{"text":" !"}]


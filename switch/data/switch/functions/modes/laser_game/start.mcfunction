
##Fonction executée lors du lancement de la partie

##Explication du MDJ :
##Dans une map de laser game, les joueurs possèdent une arme capable de tirer instantanément.
##Enfin bref, tout comme au LaserGame dans la vraie vie.
##Il n'y a pas de respawn, vous voyez les pseudos de votre équipe, une fois touché, vous devenez de couleur foncée
##aux yeux des autres pendant 5 secondes et vous ne pouvez pas tirer, donc à vous de vous déplacer.
##Il y a aussi une "Base" sur la map dans un endroit bien exposé qui se recharge toutes les 30 secondes
##et qui permet d'obtenir un de ces effets au hasard :
##Bouclier (-20% de vie du bouclier par coup dessus),
##Mitrailette (vous tirez 5 fois par secondes),
##Darkness (à la team ennemie pendant 5 secondes),
##Changement de couleur (seulement visuelement donc pour brain l'ennemi: 30 secondes),
##Effet glowing sur une team (pendant 5 secondes)

clear @a
effect clear @a
gamemode adventure @a
team add switch.laser_game.blue
team add switch.laser_game.red
team modify switch.laser_game.blue color blue
team modify switch.laser_game.blue seeFriendlyInvisibles true
team modify switch.laser_game.blue nametagVisibility hideForOtherTeams
team modify switch.laser_game.red color red
team modify switch.laser_game.red seeFriendlyInvisibles true
team modify switch.laser_game.red nametagVisibility hideForOtherTeams

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
effect give @a weakness 99999 255 true
time set 18000

##Traitement des joueurs
scoreboard players set #team_boolean switch.data 0
execute as @a[sort=random] run function switch:modes/laser_game/teleport_players

gamerule fallDamage false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Laser Game, tuez le plus d'ennemis possible !"}]

data modify storage iris:input TargetEntities set value true
data modify storage iris:input MaxRecursionDepth set value 50
scoreboard objectives add switch.temp.kills dummy
scoreboard objectives add switch.temp.shield dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.dead_cooldown dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Points","color":"yellow"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar

scoreboard players set #laser_game_seconds switch.data 0
scoreboard players set #laser_game_ticks switch.data 0
scoreboard players set #blue_points switch.data 0
scoreboard players set #red_points switch.data 0
scoreboard players set #remaining_time switch.data 300
scoreboard players set #process_end switch.data 0
scoreboard players set #base_reload switch.data 30

team add switch.temp.sidebar.3
team add switch.temp.sidebar.2
team add switch.temp.sidebar.1
team modify switch.temp.sidebar.3 suffix [{"text":"emps restant : "},{"text":"5","color":"yellow"},{"text":"m"},{"text":"0","color":"yellow"},{"text":"s"}]
team modify switch.temp.sidebar.2 suffix [{"text":"quipe Bleue : ","color":"blue"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"uipe Rouge : ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.3 T
team join switch.temp.sidebar.2 É
team join switch.temp.sidebar.1 Éq
scoreboard players set T switch.temp.sidebar 3
scoreboard players set É switch.temp.sidebar 2
scoreboard players set Éq switch.temp.sidebar 1




## Objectives:
# How to vote
# Shop
# Help
# Attach/Detach
# End


# Init dialog
execute if score @s switch.tutorial matches 0..2 run data modify storage switch:temp cutted_username set string entity @s Inventory[-1].tag.SkullOwner.Name 0 4
execute if score @s switch.tutorial matches 0..2 run data modify storage switch:temp username set from entity @s Inventory[-1].tag.SkullOwner.Name
execute if score @s switch.tutorial matches 0..2 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 0..2 run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", \
	{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch mon cher "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-chan !","color":"gold"}, \
	{"text":"\nAh pardon, je suis peut-être trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"..."}, \
	{"text":"\nBref, je suis le moteur de l'espace Switch, je suis là pour t'aider à comprendre comment tout fonctionne ici ! Actuellement, tu es séparé du reste du monde, mais ne t'inquiète pas, tu pourras bientôt rejoindre les autres joueurs !"}]

# First dialog
execute if score @s switch.tutorial matches 1..2 run tellraw @s ["\n", {"text":"Premièrement, qu'est-ce que l'espace Switch ?","color":"gray"}, \
	{"text":"\nL'espace Switch est un serveur/map Minecraft mini-jeux démocratique, c'est-à-dire que les joueurs peuvent voter pour les mini-jeux qu'ils veulent jouer !"}, \
	{"text":"\nJe vais te montrer comment voter pour un mini-jeu, suis-moi !"}]

# Second dialog
execute if score @s switch.tutorial matches 2..3 run scoreboard players set #vote_game_1 switch.data 2
execute if score @s switch.tutorial matches 2..3 run scoreboard players set #vote_game_2 switch.data 1
execute if score @s switch.tutorial matches 2..3 run scoreboard players set #vote_game_3 switch.data 0
execute if score @s switch.tutorial matches 2..3 run scoreboard players set #vote_game_4 switch.data 0
execute if score @s switch.tutorial matches 2..3 run scoreboard players set #vote_game_5 switch.data 9
execute if score @s switch.tutorial matches 2..3 run scoreboard players set #vote_game_6 switch.data 1
execute if score @s switch.tutorial matches 2..3 run function switch:engine/voting_time/message
execute if score @s switch.tutorial matches 2..3 run tellraw @s ["\n",{"text":"Ce que tu peux voir au dessus, c'est le vote pour les mini-jeux !"}, \
	{"text":"\nTu peux voir la description de chaque mini-jeu en passant ta souris dessus, et tu peux voter pour un mini-jeu en cliquant dessus !"}, \
	{"text":"\nDès que le temps sera écoulé, le mini-jeu qui aura le plus de votes sera choisi !"}, \
	{"text":"\nMaintenant, je vais te montrer comment acheter des objets dans le shop !","color":"gray"}]

# Third dialog
execute if score @s switch.tutorial matches 3..4 run tellraw @s ["\n",{"text":"Est-ce que tu vois ces particules au sol ? Je les ai placés de tel sorte à ce qu'elles te guident vers le shop du Pitchout, essaie de les suivre !"}, \
	{"text":"\nEssaie de cliquer sur le panneau du shop !\n","color":"gray"}]
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 0 69.1 3 0 0 1.5 0 150 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 0 69.6 4 0 0 0.35 0 35 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 0 70.1 9 0 0 2 0 200 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -2 70.1 13 1 0 0 0 100 force @s

# Fourth dialog
execute if score @s switch.tutorial matches 4..5 run function switch:shop/pitchout
execute if score @s switch.tutorial matches 4..5 run tellraw @s ["\n",{"text":"Voici le shop du Pitchout ! Ici est listé toutes les améliorations que tu peux acheter pour ce mini-jeu !"}, \
	{"text":"\nComme je suis sympa, je viens de te donner 100$, essaie d'acheter une amélioration !\n","color":"gray"}]

# Fifth dialog
execute if score @s switch.tutorial matches 5..6 run tellraw @s ["",{"text":"Bien joué ! Tu viens d'acheter ta première amélioration !"}, \
	{"text":"\nMaintenant, je vais te montrer comment obtenir de l'aide si tu es perdu ! Cela est très simple, essaie de taper la commande /help !\n","color":"gray"}]

# Sixth dialog
execute if score @s switch.tutorial matches 6.. run scoreboard players set @s switch.trigger.help 1
execute if score @s switch.tutorial matches 6.. run function switch:player/trigger/help/
execute if score @s switch.tutorial matches 6.. run tellraw @s ["",{"text":"Tu peux voir ici toutes les commandes que tu peux utiliser (sauf les deux dernières) !"}, \
	{"text":"\nSi tu as bien suivi, tu verras qu'il y a deux commandes /attach et /detach, je vais t'expliquer à quoi elles servent !\n","color":"gray"}, \
	{"text":"\nDans l'espace Switch, tu peux décider de te détacher du moteur pour retourner dans ce lobby où tu es actuellement, ou de te rattacher au moteur pour rejoindre les autres joueurs !"}, \
	{"text":"\n\nBref, je pense que tu as compris le principe du Switch, je vais te laisser découvrir le reste par toi-même !"}, \
	{"text":"\nJe te souhaite un bon jeu sur l'espace Switch !","color":"gray"}]
execute if score @s switch.tutorial matches 6.. run tellraw @s ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Cliquez [ici] pour terminer le tutoriel !","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.tutorial set 2"}}]

# Go next dialog
execute if score @s switch.tutorial matches 0..2 run tellraw @s ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Cliquez [ici] pour passer au dialogue suivant !","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.tutorial set 2"}}]


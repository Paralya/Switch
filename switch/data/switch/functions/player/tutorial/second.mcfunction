
## Objectives:
# How to vote
# Shop
# Help
# Attach/Detach
# End

# Title
execute if score @s switch.tutorial matches 0..2 run title @s times 0 30 20
execute if score @s switch.tutorial matches 0..2 run title @s title {"text":"[Tutoriel]","color":"gold"}
execute if score @s switch.tutorial matches 0..2 run title @s subtitle {"text":"Regardez votre tchat","color":"yellow"}
execute if score @s switch.tutorial matches 4.. run title @s times 0 30 20
execute if score @s switch.tutorial matches 4.. run title @s title {"text":"[Tutoriel]","color":"gold"}
execute if score @s switch.tutorial matches 4.. run title @s subtitle {"text":"Regardez votre tchat","color":"yellow"}

# Init dialog
execute if score @s switch.tutorial matches 0 run data modify storage switch:temp cutted_username set string entity @s Inventory[-1].tag.SkullOwner.Name 0 4
execute if score @s switch.tutorial matches 0 run data modify storage switch:temp username set from entity @s Inventory[-1].tag.SkullOwner.Name
execute if score @s switch.tutorial matches 0 run scoreboard players operation #dialog_type switch.data = @s switch.id
execute if score @s switch.tutorial matches 0 run scoreboard players operation #dialog_type switch.data %= #6 switch.data
execute if score @s switch.tutorial matches 0 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 0 run tellraw @s [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-chan !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 1 run tellraw @s [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-kun !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 2 run tellraw @s [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-sama !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 3 run tellraw @s [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-sensei !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 4 run tellraw @s [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-san !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 5 run tellraw @s [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-senpai !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 0 run tellraw @s [{"text":"Ah pardon, je suis peut-être trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nBref, je suis le moteur de l'espace Switch, je suis là pour t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es séparé du reste du monde, mais ne t'inquiète pas, tu pourras bientôt rejoindre les autres joueurs !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 1 run tellraw @s [{"text":"Ah excuse-moi, je suis peut-être trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nBon, je suis le moteur de l'espace Switch et je vais t'expliquer comment tout fonctionne ici !\nPour l'instant, tu ne peux pas lire les messages des autres joueurs, jusqu'à tu finisses ce tutoriel !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 2 run tellraw @s [{"text":"Ah désolé, je suis peut-être un peu trop familier avec toi "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nEnfin, je suis le moteur de l'espace Switch, et je vais t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es isolé des autres joueurs, mais ne t'en fais pas, tu pourras bientôt les rejoindre !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 3 run tellraw @s [{"text":"Oh pardon, je suis peut-être un peu trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nEh bien, je suis le moteur de l'espace Switch, et je vais te guider pour comprendre comment tout fonctionne ici !\nPour le moment, tu es séparé des autres joueurs, mais rassure-toi, tu pourras bientôt les rejoindre !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 4 run tellraw @s [{"text":"Oh excuse-moi, je suis peut-être trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nAlors voilà, je suis le moteur de l'espace Switch, et je suis là pour t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es séparé des autres joueurs, mais ne t'inquiète pas, tu pourras bientôt les rejoindre !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 5 run tellraw @s [{"text":"Oh, je m'excuse, peut-être que je suis un peu trop familier avec toi "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nEnfin, je suis le moteur de l'espace Switch, et je vais te guider pour que tu comprennes comment tout fonctionne ici !\nPour l'instant, tu es séparé des autres joueurs, mais ne t'en fais pas, tu pourras bientôt les rejoindre !"}]


# First dialog
execute if score @s switch.tutorial matches 1 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 1 run tellraw @s ["\n", {"text":"Premièrement, qu'est-ce que l'espace Switch ?\n","color":"gray"}, \
	{"text":"\nL'espace Switch est un serveur/map Minecraft mini-jeux démocratique, c'est-à-dire que les joueurs peuvent voter pour les mini-jeux qu'ils veulent jouer !"}, \
	{"text":"\nJe vais te montrer comment voter pour un mini-jeu, suis-moi !"}]

# Second dialog
execute if score @s switch.tutorial matches 2 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_1 switch.data 2
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_2 switch.data 1
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_3 switch.data 0
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_4 switch.data 0
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_5 switch.data 9
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_6 switch.data 1
execute if score @s switch.tutorial matches 2 run scoreboard players set #for_tutorial switch.data 1
execute if score @s switch.tutorial matches 2 run function switch:engine/voting_time/message
execute if score @s switch.tutorial matches 2 run tellraw @s ["\n",{"text":"Ce que tu peux voir au dessus, c'est au moment du vote pour les mini-jeux, "}, \
	{"text":"tu peux voir la description de chaque mini-jeu en passant ta souris dessus, et tu pourras voter pour un mini-jeu en cliquant dessus !"}, \
	{"text":"\nDès que le temps sera écoulé, le mini-jeu qui aura le plus de votes sera choisi !","color":"gray"}, \
	{"text":"\nMaintenant, je vais te montrer comment acheter des objets dans le shop !"}]

# Third dialog
execute if score @s switch.tutorial matches 3 run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", \
	{"text":"Est-ce que tu vois ces particules au sol ? Je les ai placés de tel sorte à ce qu'elles te guident vers le shop du Pitchout, essaie de les suivre !"}, \
	{"text":"\nEssaie de cliquer sur le panneau du shop !\n","color":"gray"}]
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -500 69.1 -497 0.1 0 1.5 0 150 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -500 69.6 -496 0.1 0 0.35 0 35 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -500 70.1 -491 0.1 0 2 0 200 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -502 70.1 -487 1 0 0.1 0 100 force @s

# Fourth dialog
execute if score @s switch.tutorial matches 4 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 4 run function switch:shop/pitchout
execute if score @s switch.tutorial matches 4 run tellraw @s ["\n",{"text":"Voici le shop du Pitchout ! Ici est listé toutes les améliorations que tu peux acheter pour ce mini-jeu !"}, \
	{"text":"\nComme je suis sympa, je viens de te donner 100$. Essaie d'acheter une amélioration !\n","color":"gray"}]

# Fifth dialog
execute if score @s switch.tutorial matches 5 run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", \
	{"text":"Bien joué ! Tu viens d'acheter ta première amélioration !"}, \
	{"text":"\nMaintenant, je vais te montrer comment obtenir de l'aide si tu es perdu ! Cela est très simple, essaie de taper la commande","color":"gray"},{"text":" '/help' ","color":"aqua"},{"text":"!\n","color":"gray"}]

# Sixth dialog
execute if score @s switch.tutorial matches 6 run scoreboard players set @s switch.trigger.help 1
execute if score @s switch.tutorial matches 6 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 6 run function switch:player/trigger/help/
execute if score @s switch.tutorial matches 6 run tellraw @s ["",{"text":"Tu verras qu'il y a deux commandes '/attach' et '/detach'.","color":"gray"}, \
	{"text":"\nDans l'espace Switch, tu peux te détacher du moteur pour retourner dans ce lobby où tu es actuellement, ou te rattacher pour jouer !"}, \
	{"text":"\nBref, je pense que tu as compris le principe du Switch, je vais te laisser découvrir le reste par toi-même !\nJe te souhaite un bon jeu sur l'espace Switch !","color":"gray"}]
execute if score @s switch.tutorial matches 6 run tellraw @s ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tapez '/attach' pour terminer le tutoriel !","color":"green"}]

# Go next dialog
execute if score @s switch.tutorial matches 0..2 run tellraw @s ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Cliquez [ici] pour passer au dialogue suivant !","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.tutorial set 2"}}]


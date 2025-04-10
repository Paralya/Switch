
#> switch:translations/player_tutorial_second
#
# @within	switch:player/tutorial/second
#

# French
execute if score @s switch.tutorial matches 0..2 run title @s[scores={switch.lang=0}] times 0 30 20
execute if score @s switch.tutorial matches 0..2 run title @s[scores={switch.lang=0}] title {"text":"[Tutoriel]","color":"gold"}
execute if score @s switch.tutorial matches 0..2 run title @s[scores={switch.lang=0}] subtitle {"text":"Regardez votre tchat","color":"yellow"}
execute if score @s switch.tutorial matches 4.. run title @s[scores={switch.lang=0}] times 0 30 20
execute if score @s switch.tutorial matches 4.. run title @s[scores={switch.lang=0}] title {"text":"[Tutoriel]","color":"gold"}
execute if score @s switch.tutorial matches 4.. run title @s[scores={switch.lang=0}] subtitle {"text":"Regardez votre tchat","color":"yellow"}
execute if score @s switch.tutorial matches 0 run tellraw @s[scores={switch.lang=0}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 0 run tellraw @s[scores={switch.lang=0}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-chan !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-kun !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 2 run tellraw @s[scores={switch.lang=0}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-sama !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 3 run tellraw @s[scores={switch.lang=0}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-sensei !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 4 run tellraw @s[scores={switch.lang=0}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-san !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 5 run tellraw @s[scores={switch.lang=0}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Bienvenue à toi sur l'espace Switch "},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-senpai !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Ah pardon, je suis peut-être trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nBref, je suis le moteur de l'espace Switch, je suis là pour t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es séparé du reste du monde, mais ne t'inquiète pas, tu pourras bientôt rejoindre les autres joueurs !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Ah excuse-moi, je suis peut-être trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nBon, je suis le moteur de l'espace Switch et je vais t'expliquer comment tout fonctionne ici !\nPour l'instant, tu ne peux pas lire les messages des autres joueurs, jusqu'à tu finisses ce tutoriel !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 2 run tellraw @s[scores={switch.lang=0}] [{"text":"Ah désolé, je suis peut-être un peu trop familier avec toi "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nEnfin, je suis le moteur de l'espace Switch, et je vais t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es isolé des autres joueurs, mais ne t'en fais pas, tu pourras bientôt les rejoindre !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 3 run tellraw @s[scores={switch.lang=0}] [{"text":"Oh pardon, je suis peut-être un peu trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nEh bien, je suis le moteur de l'espace Switch, et je vais te guider pour comprendre comment tout fonctionne ici !\nPour le moment, tu es séparé des autres joueurs, mais rassure-toi, tu pourras bientôt les rejoindre !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 4 run tellraw @s[scores={switch.lang=0}] [{"text":"Oh excuse-moi, je suis peut-être trop familier avec toi, désolé "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nAlors voilà, je suis le moteur de l'espace Switch, et je suis là pour t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es séparé des autres joueurs, mais ne t'inquiète pas, tu pourras bientôt les rejoindre !"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 5 run tellraw @s[scores={switch.lang=0}] [{"text":"Oh, je m'excuse, peut-être que je suis un peu trop familier avec toi "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nEnfin, je suis le moteur de l'espace Switch, et je vais te guider pour que tu comprennes comment tout fonctionne ici !\nPour l'instant, tu es séparé des autres joueurs, mais ne t'en fais pas, tu pourras bientôt les rejoindre !"}]
execute if score @s switch.tutorial matches 1 run tellraw @s[scores={switch.lang=0}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"Premièrement, qu'est-ce que l'espace Switch ?\n","color":"gray"},{"text":"\nL'espace Switch est un serveur/map Minecraft mini-jeux démocratique, c'est-à-dire que les joueurs peuvent voter pour les mini-jeux qu'ils veulent jouer !"},{"text":"\nJe vais te montrer comment voter pour un mini-jeu, suis-moi !"}]
execute if score @s switch.tutorial matches 2 run tellraw @s[scores={switch.lang=0}] ["",{"text":"Ce que tu peux voir au dessus, c'est au moment du vote pour les mini-jeux, tu peux voir la description de chaque mini-jeu en passant ta souris dessus, et tu pourras voter pour un mini-jeu en cliquant dessus !"},{"text":"\nDès que le temps sera écoulé, le mini-jeu qui aura le plus de votes sera choisi !","color":"gray"},{"text":"\nMaintenant, je vais te montrer comment acheter des objets dans le shop !"}]
execute if score @s switch.tutorial matches 3 run tellraw @s[scores={switch.lang=0}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"Est-ce que tu vois ces particules au sol ? Je les ai placés de tel sorte à ce qu'elles te guident vers le shop du Pitchout, essaie de les suivre !"},{"text":"\nEssaie de cliquer sur le panneau du shop !\n","color":"gray"}]
execute if score @s switch.tutorial matches 4 run tellraw @s[scores={switch.lang=0}] ["",{"text":"Voici le shop du Pitchout ! Ici est listé toutes les améliorations que tu peux acheter pour ce mini-jeu !"},{"text":"\nComme je suis sympa, je viens de te donner 100","color":"gray"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":". Essaie d'acheter une amélioration !\n","color":"gray"}]
execute if score @s switch.tutorial matches 5 run tellraw @s[scores={switch.lang=0}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"Bien joué ! Tu viens d'acheter ta première amélioration !"},{"text":"\nMaintenant, je vais te montrer comment obtenir de l'aide si tu es perdu ! Cela est très simple, essaie de taper la commande","color":"gray"},{"text":" '/help' ","color":"aqua"},{"text":"!\n","color":"gray"}]
execute if score @s switch.tutorial matches 6 run tellraw @s[scores={switch.lang=0}] ["",{"text":"Tu verras qu'il y a deux commandes '/attach' et '/detach'.","color":"gray"},{"text":"\nDans l'espace Switch, tu peux te détacher du moteur pour retourner dans ce lobby où tu es actuellement, ou te rattacher pour jouer !"},{"text":"\nBref, je pense que tu as compris le principe du Switch, je vais te laisser découvrir le reste par toi-même !\nJe te souhaite un bon jeu sur l'espace Switch !","color":"gray"}]
execute if score @s switch.tutorial matches 6 run tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tapez '/attach' pour terminer le tutoriel !","color":"green"}]
execute if score @s switch.tutorial matches 0..2 run tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Cliquez [ici] pour passer au dialogue suivant !","color":"green","click_event":{"action":"run_command","command":"/trigger switch.trigger.tutorial set 2"}}]

# English
execute if score @s switch.tutorial matches 0..2 run title @s[scores={switch.lang=1}] times 0 30 20
execute if score @s switch.tutorial matches 0..2 run title @s[scores={switch.lang=1}] title {"text":"[Tutorial]","color":"gold"}
execute if score @s switch.tutorial matches 0..2 run title @s[scores={switch.lang=1}] subtitle {"text":"Watch your chat","color":"yellow"}
execute if score @s switch.tutorial matches 4.. run title @s[scores={switch.lang=1}] times 0 30 20
execute if score @s switch.tutorial matches 4.. run title @s[scores={switch.lang=1}] title {"text":"[Tutorial]","color":"gold"}
execute if score @s switch.tutorial matches 4.. run title @s[scores={switch.lang=1}] subtitle {"text":"Watch your chat","color":"yellow"}
execute if score @s switch.tutorial matches 0 run tellraw @s[scores={switch.lang=1}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 0 run tellraw @s[scores={switch.lang=1}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Welcome to the Switch space"},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-chan!","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 1 run tellraw @s[scores={switch.lang=1}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Welcome to the Switch space"},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-kun !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 2 run tellraw @s[scores={switch.lang=1}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Welcome to the Switch space"},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-sama!","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 3 run tellraw @s[scores={switch.lang=1}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Welcome to the Switch space"},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-sensei!","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 4 run tellraw @s[scores={switch.lang=1}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Welcome to the Switch space"},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-san !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 5 run tellraw @s[scores={switch.lang=1}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Welcome to the Switch space"},{"nbt":"cutted_username","storage":"switch:temp","color":"gold"},{"text":"-senpai !","color":"gold"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 0 run tellraw @s[scores={switch.lang=1}] [{"text":"Ah sorry, maybe I'm too familiar with you, sorry "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nHowever, I'm the Switch engine, I'm here to help you understand how everything works here!\nCurrently, you're separated from the rest of the world, but don't worry, you'll soon be able to join the other players!"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 1 run tellraw @s[scores={switch.lang=1}] [{"text":"Ah excuse me, perhaps I'm too familiar with you, sorry "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nOkay, I'm the Switch engine and I'm going to explain how everything works here!\nFor the moment, you can't read other players' messages, until you finish this tutorial!"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 2 run tellraw @s[scores={switch.lang=1}] [{"text":"Ah sorry, maybe I'm a bit too familiar with you "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nFinally, I'm the Switch engine, and I'm going to help you understand how everything works here!\nAt the moment, you're isolated from the other players, but don't worry, you'll soon be able to join them!"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 3 run tellraw @s[scores={switch.lang=1}] [{"text":"Oh sorry, maybe I'm a bit too familiar with you, sorry "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nWell, I'm the Switch engine, and I'm going to guide you through how everything works here!\nFor the moment, you're separated from the other players, but don't worry, you'll soon be able to join them!"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 4 run tellraw @s[scores={switch.lang=1}] [{"text":"Oh excuse me, maybe I'm too familiar with you, sorry "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nSo here I am, the Switch engine, and I'm here to help you understand how everything works here!\nCurrently, you're separated from the other players, but don't worry, you'll soon be able to join them!"}]
execute if score @s switch.tutorial matches 0 if score #dialog_type switch.data matches 5 run tellraw @s[scores={switch.lang=1}] [{"text":"Oh, I'm sorry, maybe I'm a little too familiar with you "},{"nbt":"username","storage":"switch:temp","color":"gold"},{"text":"...\nFinally, I'm the engine of the Switch space, and I'm going to guide you so that you understand how everything works here!\nFor the moment, you're separated from the other players, but don't worry, you'll soon be able to join them!"}]
execute if score @s switch.tutorial matches 1 run tellraw @s[scores={switch.lang=1}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"First of all, what is the Switch space?\n","color":"gray"},{"text":"\nThe Switch space is a democratic Minecraft mini-games server/map, meaning that players can vote for the mini-games they want to play!"},{"text": "\nI'll show you how to vote for a mini-game, just follow me!"}]
execute if score @s switch.tutorial matches 2 run tellraw @s[scores={switch.lang=1}] ["",{"text":"What you can see above is when you vote for the mini-games, you can see the description of each mini-game by hovering your mouse over it, and you can vote for a mini-game by clicking on it!"},{"text":"\nAs soon as the time runs out, the mini-game with the most votes will be chosen!","color":"gray"},{"text":"\nNow I'm going to show you how to buy items in the shop!"}]
execute if score @s switch.tutorial matches 3 run tellraw @s[scores={switch.lang=1}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"Can you see these particles on the floor? I've placed them so that they guide you to the Pitchout shop, so try to follow them!"},{"text":"\nTry to click on the shop sign!","color":"gray"}]
execute if score @s switch.tutorial matches 4 run tellraw @s[scores={switch.lang=1}] ["",{"text":"Here's the Pitchout shop! Here's a list of all the upgrades you can buy for this mini-game!"},{"text":"\nJust because I'm nice, I just gave you 100","color":"gray"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":". Try to buy an upgrade!\n","color":"gray"}]
execute if score @s switch.tutorial matches 5 run tellraw @s[scores={switch.lang=1}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"Well done! You've just bought your first upgrade!"},{"text":"\nNow I'll show you how to get help if you're lost! It's very simple, just try typing the command","color":"gray"},{"text":" '/help' ","color":"aqua"},{"text":"!\n","color":"gray"}]
execute if score @s switch.tutorial matches 6 run tellraw @s[scores={switch.lang=1}] ["",{"text":"You'll see that there are two commands '/attach' and '/detach'.","color":"gray"},{"text":"\nIn the Switch space, you can detach yourself from the engine to return to this lobby where you currently are, or reattach yourself to play!"},{"text":"\nI think you've understood the Switch principle, so I'll let you discover the rest for yourself!\nI hope you enjoy playing in the Switch space!","color":"gray"}]
execute if score @s switch.tutorial matches 6 run tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Type '/attach' to end the tutorial!","color":"green"}]
execute if score @s switch.tutorial matches 0..2 run tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Click [here] to go to the next dialog!","color":"green","click_event":{"action":"run_command","command":"/trigger switch.trigger.tutorial set 2"}}]


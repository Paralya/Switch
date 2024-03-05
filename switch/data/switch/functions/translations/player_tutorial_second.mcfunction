
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
execute if score @s switch.tutorial matches 1 run tellraw @s[scores={switch.lang=0}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 1 run tellraw @s[scores={switch.lang=0}] ["\n", {"text":"Premièrement, qu'est-ce que l'espace Switch ?\n","color":"gray"}, \
execute if score @s switch.tutorial matches 2 run tellraw @s[scores={switch.lang=0}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 2 run tellraw @s[scores={switch.lang=0}] ["\n",{"text":"Ce que tu peux voir au dessus, c'est au moment du vote pour les mini-jeux, "}, \
execute if score @s switch.tutorial matches 3 run tellraw @s[scores={switch.lang=0}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", \
execute if score @s switch.tutorial matches 4 run tellraw @s[scores={switch.lang=0}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 4 run tellraw @s[scores={switch.lang=0}] ["\n",{"text":"Voici le shop du Pitchout ! Ici est listé toutes les améliorations que tu peux acheter pour ce mini-jeu !"}, \
execute if score @s switch.tutorial matches 5 run tellraw @s[scores={switch.lang=0}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", \
execute if score @s switch.tutorial matches 6 run tellraw @s[scores={switch.lang=0}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 6 run tellraw @s[scores={switch.lang=0}] ["",{"text":"Tu verras qu'il y a deux commandes '/attach' et '/detach'.","color":"gray"}, \
execute if score @s switch.tutorial matches 6 run tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tapez '/attach' pour terminer le tutoriel !","color":"green"}]
execute if score @s switch.tutorial matches 0..2 run tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Cliquez [ici] pour passer au dialogue suivant !","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.tutorial set 2"}}]


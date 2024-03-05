
## Objectives:
# How to vote
# Shop
# Help
# Attach/Detach
# End

# Title

# Init dialog
execute if score @s switch.tutorial matches 0 run data modify storage switch:temp cutted_username set string entity @s Inventory[-1].tag.SkullOwner.Name 0 4
execute if score @s switch.tutorial matches 0 run data modify storage switch:temp username set from entity @s Inventory[-1].tag.SkullOwner.Name
execute if score @s switch.tutorial matches 0 run scoreboard players operation #dialog_type switch.data = @s switch.id
execute if score @s switch.tutorial matches 0 run scoreboard players operation #dialog_type switch.data %= #6 switch.data


# First dialog
	{"text":"\nL'espace Switch est un serveur/map Minecraft mini-jeux démocratique, c'est-à-dire que les joueurs peuvent voter pour les mini-jeux qu'ils veulent jouer !"}, \
	{"text":"\nJe vais te montrer comment voter pour un mini-jeu, suis-moi !"}]

# Second dialog
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_1 switch.data 2
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_2 switch.data 1
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_3 switch.data 0
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_4 switch.data 0
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_5 switch.data 9
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_6 switch.data 1
execute if score @s switch.tutorial matches 2 run scoreboard players set #for_tutorial switch.data 1
execute if score @s switch.tutorial matches 2 run function switch:engine/voting_time/message
	{"text":"tu peux voir la description de chaque mini-jeu en passant ta souris dessus, et tu pourras voter pour un mini-jeu en cliquant dessus !"}, \
	{"text":"\nDès que le temps sera écoulé, le mini-jeu qui aura le plus de votes sera choisi !","color":"gray"}, \
	{"text":"\nMaintenant, je vais te montrer comment acheter des objets dans le shop !"}]

# Third dialog
	{"text":"Est-ce que tu vois ces particules au sol ? Je les ai placés de tel sorte à ce qu'elles te guident vers le shop du Pitchout, essaie de les suivre !"}, \
	{"text":"\nEssaie de cliquer sur le panneau du shop !\n","color":"gray"}]
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -500 69.1 -497 0.1 0 1.5 0 150 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -500 69.6 -496 0.1 0 0.35 0 35 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -500 70.1 -491 0.1 0 2 0 200 force @s
execute if score @s switch.tutorial matches 3 run particle dust 0 1 0 1 -502 70.1 -487 1 0 0.1 0 100 force @s

# Fourth dialog
execute if score @s switch.tutorial matches 4 run function switch:shop/pitchout
	{"text":"\nComme je suis sympa, je viens de te donner 100 Saphirs. Essaie d'acheter une amélioration !\n","color":"gray"}]

# Fifth dialog
	{"text":"Bien joué ! Tu viens d'acheter ta première amélioration !"}, \
	{"text":"\nMaintenant, je vais te montrer comment obtenir de l'aide si tu es perdu ! Cela est très simple, essaie de taper la commande","color":"gray"},{"text":" '/help' ","color":"aqua"},{"text":"!\n","color":"gray"}]

# Sixth dialog
execute if score @s switch.tutorial matches 6 run scoreboard players set @s switch.trigger.help 1
execute if score @s switch.tutorial matches 6 run function switch:player/trigger/help/
	{"text":"\nDans l'espace Switch, tu peux te détacher du moteur pour retourner dans ce lobby où tu es actuellement, ou te rattacher pour jouer !"}, \
	{"text":"\nBref, je pense que tu as compris le principe du Switch, je vais te laisser découvrir le reste par toi-même !\nJe te souhaite un bon jeu sur l'espace Switch !","color":"gray"}]

# Go next dialog
function switch:translations/player_tutorial_second


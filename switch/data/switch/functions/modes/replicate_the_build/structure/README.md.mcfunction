

# Comment ajouter une structure ?


## Etape 1 : La structure

# Commence par build ou voler ta structure. Attention elle doit faire 7x7x7 blocs maximum.

# Sauvegarde là grâce à un structure block.

## Etape 2 : Le fichier

# Copie le fichier dans : ``datapacks/switch/data/switch/structures/replicate_the_build/``

## Etape 3 : Ajoute la structure au jeu

# Va dans le fichier ``datapacks/switch/data/switch/functions/modes/replicate_the_build/structure/place.mcfunction``

#Ajoute une ligne avec le nom de la structure et en incrémentant le ``if score #rtb.random switch.rtb.data matches X`` de 1.

# Incrémente aussi dans ``datapacks/switch/data/switch/functions/modes/replicate_the_build/round/3.mcfunction`` le ``scoreboard players set #rtb.number_of_structure switch.rtb.data X`` de 1.

## Etape 4 : Ajoute des items composants la structure et indique le temps voulu

# Va dans le fichier ``datapacks/switch/data/switch/functions/modes/replicate_the_build/structure/give.mcfunction``

#Ajoute une ligne et modifie de même avec le même ID que précédemment. Tu dois donner tout les items composants la structure au joueur @s. Choisis aussi le temps imparti pour la construction de la structure (400 = 20 secondes par exemple).


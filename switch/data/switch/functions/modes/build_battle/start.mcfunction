
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode creative @a
team leave @a

kill @e[type=!player]
kill @e[type=!player]

time set 6000
weather clear

## Téléportation des joueurs
function switch:choose_map_for/build_battle

scoreboard players set #build_battle_state switch.data 0
scoreboard players set #build_battle_seconds switch.data -20
scoreboard players set #build_battle_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.points dummy
scoreboard players set @a switch.temp.id -1

function switch:modes/build_battle/preparation/

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Build Battle ! Votez pour le thème en ouvrant votre inventaire !"}]


## Choix des thèmes, remplissage de la liste des thèmes si elle est trop petite (moins de 20 thèmes)
scoreboard players set #count switch.data 0
execute store result score #count switch.data run data get storage switch:main build_battle_themes
execute if score #count switch.data matches ..20 run data modify storage switch:main build_battle_themes set value ["Maison traditionnelle","France","États-Unis","Japon","Chat","Chien","Tour Eiffel","Oeil","Vache","Crabe","Porte","Incendie","Château","Apocalypse","Ville","Drapeau","Système Solaire","Planète Terre","Piscine","Discothèque","Champignon","Pixel Art","Vaisseau spatial","Avion","Voiture","Étoile","École","Jardin","Plage","Montagne","Mer","Rivière","Volcan","Île","Labyrinthe","Tuyau","Trésor","Survisland","Paralya","Montre","Colère","Joie","Tristesse","Peur","Amour","Camera","Ordinateur","Technologie","Internet","Sport","Dragon","Frigo","Pyramid","Builder","Librairie","Tornade","Tsunami","Catastrophe Naturelle","Centrale Nucléaire","Virus","Physique Quantique","Aquarium","Total Wipeout","Death Run","Golf","Rocket League","Caverne","Parcours","The Floor is Lava","Murder","Salle des fêtes","Conseil","Météorite","Naufrage","Parachute","Plongeon","Barbecue","Feu de Camp","14 Juillet","Moulin","Astronaute","Déjeûner","Hamburger","Jambon-Beurre","Moto","Cascade","Paradis","Paradis Fiscal","Pompier","Chimie","Hawaii","Cabane","Plateau","Super Hero","Terrain de Foot","Ton âme soeur","Musique","Pêche","Parc d'attraction","Monument","Bowling","Musculation","Arcade","Switch","Mojang","Tesla","Elon Musk","Apple","Argent","Ange","Démon","Enfer","Mariage","Poupée","Bébé","Ta chambre","Programmation","Stoupy51","Manifestation","Republique","Netflix","Animé","Communisme","Capitalisme","Démocratisme","Explorateur de Fichiers","Guerre Mondiale","Intelligence Artificielle","Grotte","Russie","De la bonne grosse merde","Plasma","Effet Doppler","Inceste","Boulanger","Artisan","Mathématiques","Philosophie","Professeur","Galaxie","Gay","Windobe","Linux","Révolution française","Cinéma","Infirmière","Hôpital","Chocolatine","Relativité Générale","Espace-Temps","Ordinateur Quantique","Globe","Sélection Naturelle","Licorne","Poudre de Perlimpinpin","Calme","Débilité","Abruti","Cafetière","Cristaline","Europe","Expression","Tablette","Crûche / Pichet / Carafe / Broc / Pot d'eau / Pot à eau","Trou Noir","Trou de Ver","Montagne Russe","Drône","Uranium","Photographie","Artiste","Beauté","Vieillesse","Jeunesse","Toilettes","Ton repas préféré","Le Pire Endroit sur Terre","Meurtre","Détective","Liberté","Égalité","Fraternité","Inadmissible","La personne que tu préfères ici","Éternité","Nerd"]



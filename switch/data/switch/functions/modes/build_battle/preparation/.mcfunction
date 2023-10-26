
# Summon markers from 8 100 8, progressively add 48 to z until 8 100 248, then increment x
scoreboard players set #x switch.data 8
scoreboard players set #z switch.data 8
scoreboard players set #next_id switch.temp.id 0
execute as @a[tag=!switch.detached] summon marker run function switch:modes/build_battle/preparation/summon_marker

# Give everyone effects
effect give @a[tag=!switch.detached] levitation infinite 255 true

## Choose themes
# Themes list
scoreboard players set #nb_themes switch.data 0
data modify storage switch:main build_battle_themes set value ["Maison traditionnelle","France","États-Unis","Japon","Chat","Chien","Tour Eiffel","Oeil","Vache","Crabe","Porte","Incendie","Château","Apocalypse","Ville","Drapeau","Système Solaire","Planète Terre","Piscine","Discothèque","Champignon","Pixel Art","Vaisseau spatial","Avion","Voiture","Étoile","École","Jardin","Plage","Montagne","Mer","Rivière","Volcan","Île","Labyrinthe","Tuyau","Trésor","Survisland","Paralya","Montre","Colère","Joie","Tristesse","Peur","Amour","Camera","Ordinateur","Technologie","Internet","Sport","Dragon","Frigo","Pyramid","Builder","Librairie","Tornade","Tsunami","Catastrophe Naturelle","Centrale Nucléaire","Virus","Physique Quantique","Aquarium","Total Wipeout","Death Run","Golf","Rocket League","Caverne","Parcours","The Floor is Lava","Murder","Salle des fêtes","Conseil","Météorite","Naufrage","Parachute","Plongeon","Barbecue","Feu de Camp","14 Juillet","Moulin","Astronaute","Déjeûner","Hamburger","Jambon-Beurre","Moto","Cascade","Paradis","Paradis Fiscal","Pompier","Chimie","Hawaii","Cabane","Plateau","Super Hero","Terrain de Foot","Ton âme soeur","Musique","Pêche","Parc d'attraction","Monument","Bowling","Musculation","Arcade","Switch","Mojang","Tesla","Elon Musk","Apple","Argent","Ange","Démon","Enfer","Mariage","Poupée","Bébé","Ta chambre","Programmation","Stoupy51","Manifestation","Republique","Netflix","Animé","Communisme","Capitalisme","Démocratisme","Explorateur de Fichiers","Guerre Mondiale","Intelligence Artificielle","Grotte","Russie","De la bonne grosse merde","Plasma","Effet Doppler","Inceste","Boulanger","Artisan","Mathématiques","Philosophie","Professeur","Galaxie","Gay","Windobe","Linux","Révolution française","Cinéma","Infirmière","Hôpital","Chocolatine","Relativité Générale","Espace-Temps","Ordinateur Quantique","Globe","Sélection Naturelle","Licorne","Poudre de Perlimpinpin","Calme","Débilité","Abruti","Cafetière","Cristaline","Europe","Expression","Tablette","Crûche / Pichet / Carafe / Broc / Pot d'eau / Pot à eau","Trou Noir","Trou de Ver","Montagne Russe","Drône","Uranium","Photographie","Artiste","Beauté","Vieillesse","Jeunesse","Toilettes","Ton repas préféré","Le Pire Endroit sur Terre","Meurtre","Détective","Liberté","Égalité","Fraternité","Inadmissible","La personne que tu préfères ici","Éternité","Nerd","Épreuve"]
execute store result score #nb_themes switch.data run data get storage switch:main build_battle_themes

# Pick 5 random themes by getting a random number between 0 and the number of themes
scoreboard players operation #modulo_rand switch.data = #nb_themes switch.data
function switch:utils/get_random/
scoreboard players operation #theme_1 switch.data = #random switch.data
function switch:utils/get_random/
scoreboard players operation #theme_2 switch.data = #random switch.data
function switch:utils/get_random/
scoreboard players operation #theme_3 switch.data = #random switch.data
function switch:utils/get_random/
scoreboard players operation #theme_4 switch.data = #random switch.data
function switch:utils/get_random/
scoreboard players operation #theme_5 switch.data = #random switch.data

# Get the themes from the list
data modify storage switch:main choosed_themes set value []
data modify storage switch:main copy set from storage switch:main build_battle_themes
scoreboard players operation #index switch.data = #theme_1 switch.data
function switch:modes/build_battle/preparation/get_theme
data modify storage switch:main copy set from storage switch:main build_battle_themes
scoreboard players operation #index switch.data = #theme_2 switch.data
function switch:modes/build_battle/preparation/get_theme
data modify storage switch:main copy set from storage switch:main build_battle_themes
scoreboard players operation #index switch.data = #theme_3 switch.data
function switch:modes/build_battle/preparation/get_theme
data modify storage switch:main copy set from storage switch:main build_battle_themes
scoreboard players operation #index switch.data = #theme_4 switch.data
function switch:modes/build_battle/preparation/get_theme
data modify storage switch:main copy set from storage switch:main build_battle_themes
scoreboard players operation #index switch.data = #theme_5 switch.data
function switch:modes/build_battle/preparation/get_theme

# Prepare a copy for macros
data modify storage switch:main themes set value {}
data modify storage switch:main themes.theme1 set from storage switch:main choosed_themes[0]
data modify storage switch:main themes.theme2 set from storage switch:main choosed_themes[1]
data modify storage switch:main themes.theme3 set from storage switch:main choosed_themes[2]
data modify storage switch:main themes.theme4 set from storage switch:main choosed_themes[3]
data modify storage switch:main themes.theme5 set from storage switch:main choosed_themes[4]

# Display the themes in the inventory
execute as @a[tag=!switch.detached] in overworld run function switch:modes/build_battle/preparation/display_themes



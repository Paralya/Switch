
## Python script that generates the "_load.mcfunction" and "update_percentages.mcfunction" files
## It also update names and description of advancements in data/switch/advancements/visible/*.json files
## Additionally, it will create hidden advancements for each advancement in data/switch/advancements/visible/*.json files

# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

## Setups
LOAD_FILE = "_load.mcfunction"
UPDATE_PERCENTAGES_FILE = "update_percentages.mcfunction"
VISIBLE_ADV_FOLDER = "../../advancements/visible/"
colors = {
	"jump":"blue",
	"easy":"green",
	"medium":"yellow",
	"hard":"red"
}
google_sheet = """
jump_green	Stoupy	jump	The Green Jump	Finir le jump vert pour la première fois	Finish the green jump for the first time
jump_white	Stoupy	jump	The White Jump	Finir le jump blanc pour la première fois	Finish the white jump for the first time
jump_blue	Stoupy	jump	The Blue Jump	Finir le jump bleu pour la première fois	Finish the blue jump for the first time
jump_yellow	ArtiGrrr	jump	The Yellow Jump	Finir le jump jaune pour la première fois	Finish the yellow jump for the first time
jump_red	Stoupy	jump	The Red Jump	Finir le jump rouge pour la première fois	Finish the red jump for the first time
jump_brown	OfChara	jump	The Brown Jump	Finir le jump marron pour la première fois	Finish the brown jump for the first time
jump_purple	AirDox	jump	The Purple Jump	Finir le jump violet pour la première fois	Finish the purple jump for the first time
jump_dripstone	AirDox	jump	The Dripstone Jump	Finir le jump dripstone pour la première fois	Finish the dripstone jump for the first time
jump_bricks	Thitanas	jump	The Bricks Jump	Finir le jump des briques pour la première fois	Finish the brick jump for the first time
jump_pink	OfChara	jump	The Pink Jump	Finir le jump rose pour la première fois	Finish the pink jump for the first time
jump_obsidian	Stoupy	jump	The Obsidian Jump	Finir le jump obsidienne pour la première fois	Finish the obsidian jump for the first time
jump_duality	Stoupy	jump	The Duality Jump	Finir le jump duo pour la première fois	Finish the duo jump for the first time
jump_graviglitch	Stoupy	jump	The GraviGlitch Jump	Finir le jump graviglitch pour la première fois	Finish the graviglitch jump for the first time																			
1	Stoupy	easy	Bénévolat	Aider à la construction d'une map ou la création d'un mini-jeu	Help to build a map or create a mini-game
2	Stoupy	easy	Fidèle	Jouez un total de 100 parties sur le Switch	Play a total of 100 games on the Switch
3	Stoupy	easy	La moula	Ayez au moins 400 Saphirs dans votre banque	Have at least 400 Sapphires in your bank
4	Lawtank	easy	First Victor	Gagnez votre première partie dans n'importe quel mini-jeu	Win your first game in any mini-game
5	GoldVision	hard	Gros Diabète	Gagner une partie de Traitors Game en étant Gros Traitre	Win a game of Traitors Game by being a Big Traitor
6	Fhara	medium	Gay Jumper	Terminer le parcours du Gay Shooter	Complete the Gay Shooter parkour
7	TreekoZ	hard	Pitch Slayer	Remporter un Pitchout avec 3 vies	Win a Pitchout with 3 lives
8	Poppiz	easy	Fast Food	Atteignez au moins 50 points en Feed Fast	Reach at least 50 points in Feed Fast
9	TreekoZ	hard	Bagarreur	Tuez deux personnes dans un délai de 10 secondes en Castagne	Kill two people within 10 seconds in Castagne
10	Stoupy	medium	Contre Courant	Réussissez à faire voter au moins 8 personnes un jeu non populaire (Feed Fast, Snowball Painter, etc.)	Get at least 8 people to vote for an unpopular game (Feed Fast, Snowball Painter, etc.)
11	Lawtank	easy	Berger	Gagnez une partie de SheepWars sans utiliser aucun mouton	Win a game of SheepWars without using any sheep
12	OfChara	hard	Sans Faute	Gagnez une partie de Spectres Game sans perdre aucun membre de votre équipe	Win a game of Spectres Game without losing a member of your team
13	Axaltau	easy	Pacifiste	Survivez 100 secondes en Pitchout sans mettre aucun coup	Survive 100 seconds in Pitchout without taking a single hit
14	Lawtank	hard	The Last King	Soyez le dernier survivant en Protect The King	Be the last survivor in Protect The King
15	Lawtank	medium	Tomahawk	Tuez un joueur en lançant votre couteau en Murder Mystery	Kill a player by throwing your knife in Murder Mystery
16	Lawtank	hard	Héro Humanitaire	Tuez au moins 8 zombies en une partie d'Infected	Kill at least 8 zombies in one game of Infected
17	Lawtank	hard	Vive la chair	Infectez 5 survivants dans une partie d'Infected	Infect 5 survivors in one game of Infected
18	OfChara	hard	Roi fantôme	Tuez 3 personnes en tant que spectre en Spectres Games	Kill 3 people as a spectre in Spectres Games
19	Manu	medium	Wattouat	Mourir à cause d'un moutron foudroyant en SheepWars	Die from a lightning sheep in SheepWars
20	OfChara	medium	Fusée	Dépassez 5 joueurs dans le dernier tour en Kart Racer	Overtake 5 players in the last lap of Kart Racer
21	OfChara	medium	Plongeur Expert	Complétez 3 dés à coudre dans les modes de jeu du style	Complete 3 holes in game modes such as Dé à Coudre
22	OfChara	hard	Homophobe	Mettre au moins 42 flèches en Gay Shooter	Put at least 42 arrows in Gay Shooter
23	Lawtank	medium	Pélican	Soyez celui ayant le plus de kills en Cigogne (égalité autorisée)	Be the one with the most kills in Cigogne (ties allowed)
24	Fhara	hard	Feeling The Music	Survivez 20 manches en Block Party	Survive 20 rounds in Block Party
25	OfChara	hard	Ocelot	Ne pas descendre en dessous de la moitié de vie en Creeper Apocalypse	Don't drop below half life in Creeper Apocalypse
26	Marcus	medium	Suicidaire	Soyez la cible de 8 wardens en Warden Escape	Be the target of 8 wardens in Warden Escape
27	Megamat	hard	Sam Flynn	Éliminer 3 joueurs avec sa traînée en Moutron	Eliminate 3 players with your trail in Moutron
28	Megamat	medium	D&Cube	Faites au minimum 50 points en Build Battle	Score at least 50 points in Build Battle
29	Marcus	medium	Embrouilleur	Tapez chaque joueur de la partie en Castagne	Hit every player in a game of Castagne
30	Lawtank	hard	Légende	Gagnez 5 mini-jeux d'affilée	Win 5 mini-games in a row
31	Xiaojuun	medium	Interville	Mourir en Block Party à cause d'une vache folle	Die in Block Party because of a mad cow (Ravager)
32	Enlaniel	medium	Reste dans ta tombe	Tuez deux fois le ninja dans une partie de Traitors Game	Kill the ninja twice in Traitors Game
33	Megamat	medium	Rush Thief	Sécurisez le drapeau ennemi en Capture/Rush The Flag	Secure the enemy flag in Capture/Rush The Flag
34	Megamat	easy	Monopoly	Ramasser 20 lingots d'or en une partie en Murder Mystery	Collect 20 gold ingots in one game of Murder Mystery
35	Xiaojuun	easy	Daltonien	Meurs à la première manche en Block Party	Die in the first round of Block Party
36	Megamat	easy	Contre son camp	Marcher sur sa propre mine pendant une partie de Memory Mine	Step on your own mine in Memory Mine
37	Megamat	medium	Oppenheimer	Survivre plus d'une minute en Bombardement	Survive for more than one minute in Bombardement
38	Xiaojuun	medium	Regarde ma queue	Avoir une trainée de 15 secondes en moutron	Have a 15-second trail in Moutron
39	ArtiGrrr	hard	Précision Artistique	Finir une partie de Snowball Painter avec exactement 51 points	Finish a game of Snowball Painter with exactly 51 points
40	Marcus	medium	Harcelé	Mourir 3 fois par la même personne en Pitchout	Be killed 3 times by the same person in Pitchout
41	ArtiGrrr	hard	Vengeur	Tuez son meurtrier en temps que ninja dans une partie de Traitors Game	Kill your murderer as a ninja in Traitors Game
42	ArtiGrrr	hard	Xenophobe	Eliminer tous les joueurs d'une même couleur en Layers 4 Teams	Eliminate all players of the same color in Layers 4 Teams
43	ArtiGrrr	medium	Avide	Détruisez 5 blocs d'obsidienne en une partie de Rush The Point	Destroy 5 obsidian blocks in a game of Rush The Point
44	Xiaojuun	medium	C'est tout naturel	Poussez un joueur vers un dé à coudre en Simultaneous Jump	Push a player towards a hole in Simultaneous Jump
45	Lawtank	easy	Humm Charal !	Tuez 10 moutons en une partie de SheepWars	Kill 10 sheep in one game of SheepWars
46	Stoupy	easy	Automutilation	Se tuer soi-même avec un mouton en SheepWars	Kill yourself with a sheep in SheepWars
47	luigimario12	easy	Il a rien compris lui	Courir 500 blocs en une partie de Pitchout	Run 500 blocks in one game of Pitchout
48	luigimario12	hard	Donald Trump	Faire au maximum 5 coups en une partie de MiniGolf	Hit a maximum of 5 shots in a game of MiniGolf
49	luigimario12	medium	Damidot	Recevoir une note Legendary en Build Battle	Receive a Legendary rating in Build Battle
50	Stoupy et Lawtank	hard	Zom 100	Terminer le secret de la map Old Japan Apocalypse en Infected	Complete the Old Japan Apocalypse map secret in Infected
51	Stoupy	hard	Pharaon	Terminer le secret de la map Ancienne Egypte en Infected	Complete the Ancient Egypt map secret in Infected
52	Stoupy et Lawtank	hard	The Volcano Core	Terminer le secret de la map Lost Graveyard Remastered en Infected	Complete the Lost Graveyard Remastered map secret in Infected
53	Stoupy	hard	Storm Area	Terminer le secret de la map Area51 en Infected	Complete the Area51 map secret in Infected
54	Stoupy	hard	Secret Slayer	Terminer les secrets de toutes les maps dans le mode de jeu Infected	Complete all map secrets in Infected game mode
55	Thitanas	medium	Stomp	Terminer une partie de Rush The Point en atteignant 5000 points	Complete a game of Rush The Point by reaching 5000 points
56	Stoupy	easy	Jugeote	Noter les étoiles de 20 mini-jeux	Rate 20 different mini-games
57	Goldvision	hard	Survivor	Gagner une partie d'Infecté sans prendre aucun coup en tant qu'humain	Win a game of Infected without taking any hits as a human
58	Stoupy	medium	Harceleur	Eliminer 3 fois la même personne en Pitchout	Eliminate the same person 3 times in Pitchout
59	Stoupy	medium	La plèbe a travaillé pour moi	Remporter une partie de PitchCreep sans tirer une seule flèche	Win a game of PitchCreep without firing a single arrow
60	Redemoles	hard	Multigamer	Gagner une partie de chaque mini-jeu au moins une fois	Win each mini-game at least once
61	luigimario12	easy	Héro	Tuez le meurtrier en Murder Mystery en tant qu'innocent	Kill the murderer as an innocent in Murder Mystery
62	OfChara	hard	Chaud les fesses	Remporter une partie de Panic Chase avec moins de 3 coeurs	Win a game of Panic Chase with less than 3 hearts
63	OfChara	easy	Raciste	Tirer sur 3 moutons noirs en une partie de Shoot Da'Sheep	Shoot 3 black sheep in a game of Shoot Da'Sheep
64	Goldvision	easy	Rater son moment de gloire	Mourir sur un cactus, d'une tnt ou de suffocation dans une partie de Murder Mystery	Die on a cactus, from a tnt or suffocation in a game of Murder Mystery
65	Shazin	hard	Régicide	Gagner une partie de Protect The King sans perdre aucun membre de votre royaume	Win a game of Protect The King without losing any members of your kingdom
66	OfChara	medium	Révolution	Tuer un roi dans une partie de Beat The Kings	Kill a king in a game of Beat The Kings
67	luigimario12	medium	Tonerre de Zeus	Eliminer 10 joueurs dans une partie de Thunder Spear	Eliminate 10 players in a game of Thunder Spear
68	OfChara	hard	Collatéral	Tuer deux joueurs en Quake avec un seul tir	Kill two players in Quake with a single shot
69	OfChara	easy	Porc-épic	Se prendre 10 flèches en une partie de Gay Shooter	Take 10 arrows in a game of Gay Shooter
70	Oraclette	easy	Electro-choc	Mourir du rayon d'un warden en Warden Escape	Die from a warden's beam in Warden Escape
71	Shazin	medium	Merci Gertrude	A partir de la 10ème manche en Block Party, en survivre une grâce à Gertrude	From the 10th round in Block Party, survive one thanks to Gertrude
72	luigimario12	easy	C'est donc ça, de se vider...	Lancer 42 boules de neige en une partie de Warden Escape	Throw 42 snowballs in one game of Warden Escape
73	OfChara	hard	Parade Parfaite	Réussir à parer une flèche en lançant son couteau en Murder Mystery	Parry an arrow by throwing your knife in Murder Mystery
74	OfChara	hard	I am Legend	Gagner une partie d'Infecté en étant le dernier humain (si il y a plus de 10 joueurs)	Win a game of Infected by being the last human (if there are more than 10 players)
75	OfChara	medium	Tout ça pour ça...	Survivre 42 secondes puis mourir en tombant dans l'eau en Bombardement	Survive 42 seconds and then die by falling into the water in Bombardement
76	OfChara	hard	Injustice	Finir le parcours en Gay Shooter mais mourir de la main d'un Shooter	Finish the parkour in Gay Shooter but die from the hands of a Shooter
77	Stoupy	easy	Pour l'équipe !	Tirer sur la base de bonus dans une partie de Laser Game	Shoot the bonus base in Laser Game
78	TreekoZ	easy	Banger sucré au sucre	Préparez un gâteau en une partie de Cooking Festival	Bake a cake in Cooking Festival
79	Thakeax	easy	Le boulet	Mourir du premier coup de canon en Bombardement	Die from the first cannon shot in Bombardement
80	ArtiGrrr	medium	Ooopsy	Se faire tuer par un autre meutrier en tant que meurtrier en Murder Mystery	Get killed by another murderer as a murderer in Murder Myster
81	ArtiGrrr	easy	Reviens par ici	Replacer le drapeau de son équipe en une partie de Capture/Rush The Flag	Return your team's flag in a game of Capture/Rush The Flag
82	Stoupy	hard	Bien placé	Survivre 30 secondes sans bouger en Block Party	Survive 30 seconds without moving in Block Party
83	AirDox	medium	Chercheur Acharné	Trouver tous les Easter Eggs du lobby	Find all the Easter Eggs in the lobby
""".split("\n")


#############################################
## "_load.mcfunction"
# Prepare file_content
file_content = """
## This file is autogenerated by the "automatic_advancements.py" script. Do not edit it but the script instead.

# Setup storages
execute unless data storage switch:advancements all run data modify storage switch:advancements all set value []
"""

# For each advancement, generate the append line
for line in google_sheet:
	line = line.split("\t")
	if len(line) < 3:
		continue
	id = line[0]
	try:
		id = int(id)
	except ValueError:
		id = f'"{id}"'
	file_content += f"""execute unless data storage switch:advancements all[{{id:{id}}}] run data modify storage switch:advancements all append value {{id:{id},percent:{{int:0,digits:0}},players:[],total:0}}\n"""

# Next
file_content += """

# Update storages
"""

# For each advancement, generate the merge line
for line in google_sheet:
	line = line.split("\t")
	if len(line) < 3:
		continue
	id = line[0]
	author = line[1]
	color = colors[line[2]]
	name = line[3]
	description = line[4]
	desc_en = line[5] if len(line) > 5 else description
	try:
		id = int(id)
	except ValueError:
		id = f'"{id}"'
	file_content += f"""data modify storage switch:advancements all[{{id:{id}}}] merge value {{color:"{color}",auteur:"{author}",name:"{name}",description:"{description}",description_en:"{desc_en}"}}\n"""

with open(LOAD_FILE, "w", encoding = "utf-8") as f:
	f.write(file_content + "\n")
	pass


#############################################
## "update_percentages.mcfunction"
# Prepare file
file_content = """
## This file is autogenerated by the "automatic_advancements.py" script. Do not edit it but the script instead.
# Update percentage
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
data modify storage switch:main input set value {id:"",username:""}
data modify storage switch:main input.username set from block 0 0 0 Items[0].tag.SkullOwner.Name

## For each advancement, check if the player has the advancement
scoreboard players set @s switch.advancements 0
___LINES___
setblock 0 0 0 air
"""
# For each advancement, generate the check line #execute if entity @s[advancements={switch:visible/jump_green=true}] run function switch:advancements/_pre_macro {id:"jump_green"}
to_lines = ""
for line in google_sheet:
	line = line.split("\t")
	if len(line) < 3:
		continue
	id = line[0]
	to_lines += f"""execute if entity @s[advancements={{switch:visible/{id}=true}}] run function switch:advancements/_pre_macro {{id:"{id}"}}\n"""

file_content = file_content.replace("___LINES___", to_lines)

# Write file
with open(UPDATE_PERCENTAGES_FILE, "w", encoding = "utf-8") as f:
	f.write(file_content + "\n")
	pass


#############################################
## Generate a hidden advancement for each advancement
# Get all .json files path in the previous directory
paths = []
for root, dirs, files in os.walk(VISIBLE_ADV_FOLDER):
	for file in files:
		if file.endswith(".json") and "categories" not in root:
			paths.append(file.replace(".json",""))

# For each path, create a hidden advancement
for p in paths:
	with open(VISIBLE_ADV_FOLDER + f"categories/ends/{p}.json", "w", encoding = "utf-8") as f:
		f.write("""{
	"criteria": {"requirement": {"trigger": "minecraft:tick"}},
	"requirements": [["requirement"]],
	"parent": "switch:visible/__ADV_ID__"
}
""".replace("__ADV_ID__", p))
		pass
	pass


#############################################
## Update name, description, and difficulty of each advancement
for line in google_sheet:
	line = line.split("\t")
	if len(line) < 3:
		continue
	id = line[0]
	difficulty = line[2]
	name = line[3]
	description = line[4]
	desc_en = line[5] if len(line) > 5 else description
	
	# Get file_content
	try:
		with open(VISIBLE_ADV_FOLDER + f"{id}.json", "r", encoding = "utf-8") as f:
			file_content = f.read().split("\n")
			pass
	except FileNotFoundError:
		pass # It should create the file with the base content of the previous file

	# For each line,
	for i, line in enumerate(file_content):
		if "title" in line:
			file_content[i] = '\t\t"title": {"text": "' + name + '", "color": "yellow"},'
		elif "description" in line:
			file_content[i] = '\t\t"description": {"text": "' + desc_en + '", "color": "aqua"},'
		elif "rewards" in line:
			if difficulty == "jump":
				file_content[i] = '\t"rewards": {"function": "switch:advancements/jumps/' + id.replace("jump_", "") + '"},'
			else:
				file_content[i] = '\t"rewards": {"function": "switch:advancements/' + difficulty + '"},'
		pass

	# Write file
	with open(VISIBLE_ADV_FOLDER + f"{id}.json", "w", encoding = "utf-8") as f:
		f.write("\n".join(file_content))
	pass


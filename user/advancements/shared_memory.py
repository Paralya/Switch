
# Constants
LOAD_FILE: str = "switch:advancements/_load.mcfunction"
UPDATE_PERCENTAGES_FILE: str = "switch:advancements/update_percentages"
CHALLENGES: list[str] = ["50", "51", "52", "53", "54", "jump_obsidian"]
CATEGORIES_COLOR: dict[str, str] = {
	"jump":		"blue",
	"easy":		"green",
	"medium":	"yellow",
	"hard":		"red"
}

# Format: [parent, id, author, category, title, desc_fr, desc_en]
GOOGLE_SHEET: str = """

{"id": "minecraft:lime_concrete"}	categories/jumps	jump_green	Stoupy	jump	The Green Jump	Finir le jump vert pour la première fois	Finish the green jump for the first time
{"id": "minecraft:white_concrete"}	jump_green	jump_white	Stoupy	jump	The White Jump	Finir le jump blanc pour la première fois	Finish the white jump for the first time
{"id": "minecraft:blue_concrete"}	jump_white	jump_blue	Stoupy	jump	The Blue Jump	Finir le jump bleu pour la première fois	Finish the blue jump for the first time
{"id": "minecraft:yellow_concrete"}	jump_dripstone	jump_yellow	ArtiGrrr	jump	The Yellow Jump	Finir le jump jaune pour la première fois	Finish the yellow jump for the first time
{"id": "minecraft:red_concrete"}	jump_yellow	jump_red	Stoupy	jump	The Red Jump	Finir le jump rouge pour la première fois	Finish the red jump for the first time
{"id": "minecraft:brown_concrete"}	jump_pink	jump_brown	OfChara	jump	The Brown Jump	Finir le jump marron pour la première fois	Finish the brown jump for the first time
{"id": "minecraft:purple_concrete"}	jump_brown	jump_purple	AirDox	jump	The Purple Jump	Finir le jump violet pour la première fois	Finish the purple jump for the first time
{"id": "minecraft:dripstone_block"}	jump_blue	jump_dripstone	AirDox	jump	The Dripstone Jump	Finir le jump dripstone pour la première fois	Finish the dripstone jump for the first time
{"id": "minecraft:bricks"}	jump_purple	jump_bricks	Thitanas	jump	The Bricks Jump	Finir le jump des briques pour la première fois	Finish the brick jump for the first time
{"id": "minecraft:pink_concrete"}	jump_duality	jump_pink	OfChara	jump	The Pink Jump	Finir le jump rose pour la première fois	Finish the pink jump for the first time
{"id": "minecraft:crying_obsidian"}	jump_graviglitch	jump_obsidian	Stoupy	jump	The Obsidian Jump	Finir le jump obsidienne pour la première fois	Finish the obsidian jump for the first time
{"id": "minecraft:waxed_copper_block"}	jump_red	jump_duality	Stoupy	jump	The Duality Jump	Finir le jump duo pour la première fois	Finish the duo jump for the first time
{"id": "minecraft:suspicious_gravel"}	jump_bricks	jump_graviglitch	Stoupy	jump	The GraviGlitch Jump	Finir le jump graviglitch pour la première fois	Finish the graviglitch jump for the first time
{"id": "minecraft:stone", "components": {"minecraft:item_model": "switch:life_crystal"}}	categories/easy	1	Stoupy	easy	Bénévolat	Aider à la construction d'une map ou la création d'un mini-jeu	Help to build a map or create a mini-game
{"id": "minecraft:apple"}	1	2	Stoupy	easy	Fidèle	Jouez un total de 100 parties sur le Switch	Play a total of 100 games on the Switch
{"id": "minecraft:gold_nugget"}	2	3	Stoupy	easy	La moula	Ayez au moins 400 Saphirs dans votre banque	Have at least 400 Sapphires in your bank
{"id": "minecraft:nether_star"}	3	4	Lawtank	easy	First Victor	Gagnez votre première partie dans n'importe quel mini-jeu	Win your first game in any mini-game
{"id": "minecraft:sugar"}	7	5	GoldVision	hard	Gros Diabète	Gagner une partie de Traitors Game en étant Gros Traitre	Win a game of Traitors Game by being a Big Traitor
{"id": "minecraft:magenta_wool"}	categories/medium	6	Fhara	medium	Guy Jumper	Terminer le parcours du Guy Shooter	Complete the Guy Shooter parkour
{"id": "minecraft:blue_ice"}	categories/hard	7	TreekoZ	hard	Pitch Slayer	Remporter un Pitchout avec 3 vies	Win a Pitchout with 3 lives
{"id": "minecraft:rabbit_stew"}	categories/easy	8	Poppiz	easy	Fast Food	Atteignez au moins 50 points en Feed Fast	Reach at least 50 points in Feed Fast
{"id": "minecraft:diamond_axe"}	7	9	TreekoZ	hard	Bagarreur	Tuez deux personnes dans un délai de 10 secondes en Castagne	Kill two people within 10 seconds in Castagne
{"id": "minecraft:paper"}	categories/medium	10	Stoupy	medium	Contre Courant	Réussissez à faire voter au moins 8 personnes un jeu non populaire (Feed Fast, Snowball Painter, etc.)	Get at least 8 people to vote for an unpopular game (Feed Fast, Snowball Painter, etc.)
{"id": "minecraft:barrier"}	8	11	Lawtank	easy	Berger	Gagnez une partie de SheepWars sans utiliser aucun mouton	Win a game of SheepWars without using any sheep
{"id": "minecraft:totem_of_undying"}	25	12	OfChara	hard	Sans Faute	Gagnez une partie de Spectres Game sans perdre aucun membre de votre équipe	Win a game of Spectres Game without losing a member of your team
{"id": "minecraft:white_tulip"}	78	13	Axaltau	easy	Pacifiste	Survivez 100 secondes en Pitchout sans mettre aucun coup	Survive 100 seconds in Pitchout without taking a single hit
{"id": "minecraft:player_head", "components": {"minecraft:profile": {"name": "King"}}}	39	14	Lawtank	hard	The Last King	Soyez le dernier survivant en Protect The King	Be the last survivor in Protect The King
{"id": "minecraft:golden_sword"}	6	15	Lawtank	medium	Tomahawk	Tuez un joueur en lançant votre couteau en Murder Mystery	Kill a player by throwing your knife in Murder Mystery
{"id": "minecraft:zombie_head"}	73	16	Lawtank	hard	Héro Humanitaire	Tuez au moins 8 zombies en une partie d'Infected	Kill at least 8 zombies in one game of Infected
{"id": "minecraft:rotten_flesh"}	16	17	Lawtank	hard	Vive la chair	Infectez 5 survivants dans une partie d'Infected	Infect 5 survivors in one game of Infected
{"id": "minecraft:iron_sword", "components": {"minecraft:enchantment_glint_override": true}}	12	18	OfChara	hard	Roi fantôme	Tuez 3 personnes en tant que spectre en Spectres Games	Kill 3 people as a spectre in Spectres Games
{"id": "minecraft:yellow_wool"}	6	19	Manu	medium	Wattouat	Mourir à cause d'un moutron foudroyant en SheepWars	Die from a lightning sheep in SheepWars
{"id": "minecraft:minecart"}	19	20	OfChara	medium	Fusée	Dépassez 5 joueurs dans le dernier tour en Kart Racer	Overtake 5 players in the last lap of Kart Racer
{"id": "minecraft:water_bucket"}	20	21	OfChara	medium	Plongeur Expert	Complétez 3 dés à coudre dans les modes de jeu du style	Complete 3 holes in game modes such as Dé à Coudre
{"id": "minecraft:stone", "components": {"minecraft:item_model": "switch:ultimate_bow"}}	48	22	OfChara	hard	Homophobe	Mettre au moins 42 flèches en Guy Shooter	Put at least 42 arrows in Guy Shooter
{"id": "minecraft:feather"}	21	23	Lawtank	medium	Pélican	Soyez celui ayant le plus de kills en Cigogne (égalité autorisée)	Be the one with the most kills in Cigogne (ties allowed)
{"id": "minecraft:jukebox"}	68	24	Fhara	hard	Feeling The Music	Survivez 20 manches en Block Party	Survive 20 rounds in Block Party
{"id": "minecraft:ocelot_spawn_egg"}	9	25	OfChara	hard	Ocelot	Ne pas descendre en dessous de la moitié de vie en Creeper Apocalypse	Don't drop below half life in Creeper Apocalypse
{"id": "minecraft:sculk_sensor"}	23	26	Marcus	medium	Suicidaire	Soyez la cible de 8 wardens en Warden Escape	Be the target of 8 wardens in Warden Escape
{"id": "minecraft:red_stained_glass"}	25	27	Megamat	hard	Sam Flynn	Éliminer 3 joueurs avec sa traînée en Moutron	Eliminate 3 players with your trail in Moutron
{"id": "minecraft:bricks"}	21	28	Megamat	medium	D&Cube	Faites au minimum 50 points en Build Battle	Score at least 50 points in Build Battle
{"id": "minecraft:stick"}	26	29	Marcus	medium	Embrouilleur	Tapez chaque joueur de la partie en Castagne	Hit every player in a game of Castagne
{"id": "minecraft:stone", "components": {"minecraft:item_model": "switch:ultimate_fragment"}}	categories/hard	30	Lawtank	hard	Légende	Gagnez 5 mini-jeux d'affilée	Win 5 mini-games in a row
{"id": "minecraft:saddle"}	29	31	Xiaojuun	medium	Interville	Mourir en Block Party à cause d'une vache folle	Die in Block Party because of a mad cow (Ravager)
{"id": "minecraft:wither_rose"}	31	32	Enlaniel	medium	Reste dans ta tombe	Tuez deux fois le ninja dans une partie de Traitors Game	Kill the ninja twice in Traitors Game
{"id": "minecraft:yellow_banner"}	29	33	Megamat	medium	Rush Thief	Sécurisez le drapeau ennemi en Capture/Rush The Flag	Secure the enemy flag in Capture/Rush The Flag
{"id": "minecraft:gold_ingot"}	69	34	Megamat	easy	Monopoly	Ramasser 20 lingots d'or en une partie en Murder Mystery	Collect 20 gold ingots in one game of Murder Mystery
{"id": "minecraft:light_gray_concrete"}	8	35	Xiaojuun	easy	Daltonien	Meurs à la première manche en Block Party	Die in the first round of Block Party
{"id": "minecraft:heavy_weighted_pressure_plate"}	35	36	Megamat	easy	Contre son camp	Marcher sur sa propre mine pendant une partie de Memory Mine	Step on your own mine in Memory Mine
{"id": "minecraft:coal_block"}	44	37	Megamat	medium	Oppenheimer	Survivre plus d'une minute en Bombardment	Survive for more than one minute in Bombardment
{"id": "minecraft:orange_stained_glass"}	32	38	Xiaojuun	medium	Regarde ma queue	Avoir une trainée de 15 secondes en moutron	Have a 15-second trail in Moutron
{"id": "minecraft:snowball"}	27	39	ArtiGrrr	hard	Précision Artistique	Finir une partie de Snowball Painter avec exactement 51 points	Finish a game of Snowball Painter with exactly 51 points
{"id": "minecraft:player_head", "components": {"minecraft:profile": {"name": "Xiaojuuun"}}}	67	40	Marcus	medium	Harcelé	Mourir 3 fois par la même personne en Pitchout	Be killed 3 times by the same person in Pitchout
{"id": "minecraft:iron_axe"}	5	41	ArtiGrrr	hard	Vengeur	Tuez son meurtrier en temps que ninja dans une partie de Traitors Game	Kill your murderer as a ninja in Traitors Game
{"id": "minecraft:dragon_head"}	39	42	ArtiGrrr	hard	Xenophobe	Eliminer tous les joueurs d'une même couleur en Layers 4 Teams	Eliminate all players of the same color in Layers 4 Teams
{"id": "minecraft:obsidian"}	33	43	ArtiGrrr	medium	Avide	Détruisez 5 blocs d'obsidienne en une partie de Rush The Point	Destroy 5 obsidian blocks in a game of Rush The Point
{"id": "minecraft:emerald_block"}	38	44	Xiaojuun	medium	C'est tout naturel	Poussez un joueur vers un dé à coudre en Simultaneous Jump	Push a player towards a hole in Simultaneous Jump
{"id": "minecraft:mutton"}	11	45	Lawtank	easy	Humm Charal !	Tuez 10 moutons en une partie de SheepWars	Kill 10 sheep in one game of SheepWars
{"id": "minecraft:red_wool"}	45	46	Stoupy	easy	Automutilation	Se tuer soi-même avec un mouton en SheepWars	Kill yourself with a sheep in SheepWars
{"id": "minecraft:packed_ice"}	13	47	luigimario12	easy	Il a rien compris lui	Courir 500 blocs en une partie de Pitchout	Run 500 blocks in one game of Pitchout
{"id": "minecraft:iron_hoe"}	42	48	luigimario12	hard	Donald Trump	Faire au maximum 5 coups en une partie de MiniGolf	Hit a maximum of 5 shots in a game of MiniGolf
{"id": "minecraft:yellow_concrete"}	28	49	luigimario12	medium	Damidot	Recevoir une note Legendary en Build Battle	Receive a Legendary rating in Build Battle
{"id": "minecraft:cherry_sapling"}	17	50	Stoupy et Lawtank	hard	Zom 100	Terminer le secret de la map Old Japan Apocalypse en Infected	Complete the Old Japan Apocalypse map secret in Infected
{"id": "minecraft:sandstone"}	50	51	Stoupy	hard	Pharaon	Terminer le secret de la map Ancienne Egypte en Infected	Complete the Ancient Egypt map secret in Infected
{"id": "minecraft:magma_block"}	51	52	Stoupy et Lawtank	hard	The Volcano Core	Terminer le secret de la map Lost Graveyard Remastered en Infected	Complete the Lost Graveyard Remastered map secret in Infected
{"id": "minecraft:quartz_block"}	52	53	Stoupy	hard	Storm Area	Terminer le secret de la map Area51 en Infected	Complete the Area51 map secret in Infected
{"id": "minecraft:stone", "components": {"minecraft:item_model": "switch:stardust_ingot"}}	53	54	Stoupy	hard	Secret Slayer	Terminer les secrets de toutes les maps dans le mode de jeu Infected	Complete all map secrets in Infected game mode
{"id": "minecraft:diamond"}	43	55	Thitanas	medium	Stomp	Terminer une partie de Rush The Point en atteignant 7500 points	Complete a game of Rush The Point by reaching 7500 points
{"id": "minecraft:writable_book"}	4	56	Stoupy	easy	Jugeote	Noter les étoiles de 20 mini-jeux	Rate 20 different mini-games
{"id": "minecraft:phantom_membrane"}	54	57	Goldvision	hard	Survivor	Gagner une partie d'Infecté sans prendre aucun coup en tant qu'humain	Win a game of Infected without taking any hits as a human
{"id": "minecraft:stone", "components": {"minecraft:item_model": "switch:awakened_stardust_bow"}}	40	58	Stoupy	medium	Harceleur	Eliminer 3 fois la même personne en Pitchout	Eliminate the same person 3 times in Pitchout
{"id": "minecraft:creeper_head"}	44	59	Stoupy	medium	La plèbe a travaillé pour moi	Remporter une partie de PitchCreep sans tirer une seule flèche	Win a game of PitchCreep without firing a single arrow
{"id": "minecraft:end_crystal"}	30	60	Redemoles	hard	Multigamer	Gagner une partie de chaque mini-jeu au moins une fois	Win each mini-game at least once
{"id": "minecraft:emerald"}	34	61	luigimario12	easy	Héro	Tuez le meurtrier en Murder Mystery en tant qu'innocent	Kill the murderer as an innocent in Murder Mystery
{"id": "minecraft:campfire"}	48	62	OfChara	hard	Chaud les fesses	Remporter une partie de Panic Chase avec moins de 3 coeurs	Win a game of Panic Chase with less than 3 hearts
{"id": "minecraft:black_wool"}	36	63	OfChara	easy	Raciste	Tirer sur 3 moutons noirs en une partie de Shoot Da'Sheep	Shoot 3 black sheep in a game of Shoot Da'Sheep
{"id": "minecraft:cactus"}	61	64	Goldvision	easy	Rater son moment de gloire	Mourir sur un cactus, d'une tnt ou de suffocation dans une partie de Murder Mystery	Die on a cactus, from a tnt or suffocation in a game of Murder Mystery
{"id": "minecraft:golden_helmet"}	14	65	Shazin	hard	Régicide	Gagner une partie de Protect The King sans perdre aucun membre de votre royaume	Win a game of Protect The King without losing any members of your kingdom
{"id": "minecraft:player_head", "components": {"minecraft:profile": {"name": "Luxio_"}}}	59	66	OfChara	medium	Révolution	Tuer un roi dans une partie de Beat The Kings	Kill a king in a game of Beat The Kings
{"id": "minecraft:crossbow"}	66	67	luigimario12	medium	Tonerre de Zeus	Eliminer 10 joueurs dans une partie de Thunder Spear	Eliminate 10 players in a game of Thunder Spear
{"id": "minecraft:diamond_hoe"}	62	68	OfChara	hard	Collatéral	Tuer deux joueurs en Quake avec un seul tir	Kill two players in Quake with a single shot
{"id": "minecraft:arrow"}	63	69	OfChara	easy	Porc-épic	Se prendre 10 flèches en une partie de Guy Shooter	Take 10 arrows in a game of Guy Shooter
{"id": "minecraft:sculk_shrieker"}	69	70	Oraclette	easy	Electro-choc	Mourir du rayon d'un warden en Warden Escape	Die from a warden's beam in Warden Escape
{"id": "minecraft:milk_bucket"}	67	71	Shazin	medium	Merci Gertrude	A partir de la 10ème manche en Block Party, en survivre une grâce à Gertrude	From the 10th round in Block Party, survive one thanks to Gertrude
{"id": "minecraft:snowball"}	70	72	luigimario12	easy	C'est donc ça, de se vider...	Lancer 42 boules de neige en une partie de Warden Escape	Throw 42 snowballs in one game of Warden Escape
{"id": "minecraft:shield"}	68	73	OfChara	hard	Parade Parfaite	Réussir à parer une flèche en lançant son couteau en Murder Mystery	Parry an arrow by throwing your knife in Murder Mystery
{"id": "minecraft:enchanted_golden_apple"}	57	74	OfChara	hard	I am Legend	Gagner une partie d'Infecté en étant le dernier humain (si il y a plus de 10 joueurs)	Win a game of Infected by being the last human (if there are more than 10 players)
{"id": "minecraft:blue_stained_glass"}	37	75	OfChara	medium	Tout ça pour ça...	Survivre 42 secondes puis mourir en tombant dans l'eau en Bombardment	Survive 42 seconds and then die by falling into the water in Bombardment
{"id": "minecraft:stone", "components": {"minecraft:item_model": "switch:ultimate_sniper"}}	22	76	OfChara	hard	Injustice	Finir le parcours en Guy Shooter mais mourir de la main d'un Shooter	Finish the parkour in Guy Shooter but die from the hands of a Shooter
{"id": "minecraft:stone", "components": {"minecraft:item_model": "switch:stardust_sniper"}}	72	77	Stoupy	easy	Pour l'équipe !	Tirer sur la base de bonus dans une partie de Laser Game	Shoot the bonus base in Laser Game
{"id": "minecraft:cake"}	77	78	TreekoZ	easy	Banger sucré au sucre	Préparez un gâteau en une partie de Cooking Festival	Bake a cake in Cooking Festival
{"id": "minecraft:coal"}	78	79	Thakeax	easy	Le boulet	Mourir du premier coup de canon en Bombardment	Die from the first cannon shot in Bombardment
{"id": "minecraft:observer"}	15	80	ArtiGrrr	medium	Ooopsy	Se faire tuer par un autre meutrier en tant que meurtrier en Murder Mystery	Get killed by another murderer as a murderer in Murder Myster
{"id": "minecraft:white_banner"}	79	81	ArtiGrrr	easy	Reviens par ici	Replacer le drapeau de son équipe en une partie de Capture/Rush The Flag	Return your team's flag in a game of Capture/Rush The Flag
{"id": "minecraft:turtle_egg"}	24	82	Stoupy	hard	Bien placé	Survivre 25 secondes sans bouger en Block Party	Survive 25 seconds without moving in Block Party
{"id": "minecraft:turtle_egg"}	24	83	AirDox	medium	Chercheur Acharné	Trouver tous les Easter Eggs du lobby	Find all the Easter Eggs in the lobby

"""

def get_id(string: str) -> str:
	try:
		return str(int(string))
	except ValueError:
		return f'"{string}"'

def convert_line_to_dict(line: str) -> dict[str, str]:
	splitted: list[str] = line.split("\t")
	return {
		"icon": splitted[0],
		"parent": splitted[1],
		"id": splitted[2],
		"string_id": get_id(splitted[2]),
		"author": splitted[3],
		"category": splitted[4],
		"title": splitted[5],
		"desc_fr": splitted[6],
		"desc_en": splitted[7],
		"children": [],
	}

ALL_ADVANCEMENTS: list[dict[str, str]] = []

def generate_adv_dictionnary() -> None:
	global ALL_ADVANCEMENTS
	ALL_ADVANCEMENTS += [convert_line_to_dict(line) for line in GOOGLE_SHEET.strip().split("\n")]

	# Create lookup dict for faster access
	adv_by_id: dict[str, dict[str, str]] = {adv["id"]: adv for adv in ALL_ADVANCEMENTS}
	
	# Process each advancement once
	for adv in ALL_ADVANCEMENTS:
		parent_id: str = adv["parent"]
		if parent_id and parent_id in adv_by_id:
			parent: dict[str, str] = adv_by_id[parent_id]
			parent["children"].append(adv["id"])







"""
# French
# data modify storage switch:main minigames append value {min_players:2	,max_players:-1		,id:"replicate_the_build"	,Name:"Replicate The Build"	,Lore:'["",{"text":"[Replicate The Build]\\n","color":"yellow"},	{"text":"Refaites le build donné le plus rapidement possible, et sans vous tromper !\\n"},																								{"text":"\\n[Estimation : 1-6 mins]","color":"gold"},	{"text":"\\n[Inspiration : Mineplex]","color":"green"},						{"text":"\\n[Proposé/Développé par AirDox]","color":"aqua"}]'}

# data modify storage switch:main minigames[{id:"replicate_the_build"}].LoreEN set value '["",	{"text":"[Replicate The Build]\\n","color":"yellow"},	{"text":"Repeat the given build as quickly as possible, without making any mistakes!\\n"},																								{"text":"\\n[Estimated: 1-6 mins]","color":"gold"},		{"text":"\\n[Inspiration: Mineplex]","color":"green"},						{"text":"\\n[Suggested/Developed by AirDox]","color":"aqua"}]'}
"""

# Imports
from python_datapack.utils.database_helper import *

# Modes list
MODES: list[dict] = [
	{
		"min_players":1, "max_players":-1, "id":"pitch_creep" ,"Name":"Pitch Creep",
		"estimated_time": "1m30s", "inspiration": "Pitchout/Épicube", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Survivez pendant le temps imparti dans\n"},{"text":"une map fermée en expulsant les\n"},{"text":"creepers qui veulent votre peau.\n"}],
			"EN": [{"text":"Survive the allotted time in\n"},{"text":"a closed map by kicking out the creepers\n"},{"text":"creepers who want to kill you.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"laser_game", "Name":"Laser Game",
		"estimated_time": "2m30s", "inspiration": "The physical world", "suggested_by": "Vigo", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Affrontez l'équipe adverse grâce à vos fusils-laser et faites\n"},{"text":"le plus d'élimination possible pendant un temps imparti !\n"}],
			"EN": [{"text":"Fight the opposing team with your laser guns and\n"},{"text":"eliminate as many players as possible within a time limit!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"castagne", "Name":"Castagne RP",
		"estimated_time": "1-5 mins", "inspiration": "Domestic Violence", "suggested_by": "JustNoob", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Vous êtes là pour frapper des gens et\n"},{"text":"rester le dernier en vie pour gagner la partie.\n"}],
			"EN": [{"text":"You're there to beat people up and\n"},{"text":"stay the last one alive to win the game.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"layers_2_teams", "Name":"Layers 2 Teams", 
		"estimated_time": "4-10 mins", "inspiration": "PenguinGames", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Soyez les plus rapides à vous équiper pour percer\n"},{"text":"le mur d'obsidienne et exterminer l'ennemi !\n"}],
			"EN": [{"text":"Be the fastest to equip yourselves to pierce\n"},{"text":"the obsidian wall and exterminate the enemy!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"layers_4_teams", "Name":"Layers 4 Teams",
		"estimated_time": "4-10 mins", "inspiration": "PenguinGames", "suggested_by": "Stoupy51", "developed_by": "Stoupy51", 
		"description": {
			"FR": [{"text":"Affrontez 3 autres équipes dans une course\n"},{"text":"à l'équipement pour détruire vos ennemis !\n"}],
			"EN": [{"text":"Compete against 3 other teams in an\n"},{"text":"equipment race to destroy your enemies!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"thunder_spear", "Name":"Thunder Spear",
		"estimated_time": "2m30s", "inspiration": "SNK/Attack On Titan", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Tuez un maximum de joueurs à l'aide d'un équipement de\n"},{"text":"manœuvre tridimensionnel et de vos armements explosifs !\n"}],
			"EN": [{"text":"Kill as many players as possible with the help of a\n"},{"text":"three-dimensional maneuver gear and your explosive armaments!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"tnt_run", "Name":"TNT Run",
		"estimated_time": "1-4 mins", "inspiration": "Grian (2013)", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Soyez le dernier en vie en restant le plus\n"},{"text":"longtemps en mouvement pour ne pas tomber\n"}],
			"EN": [{"text":"Be the last one alive by staying the longest\n"},{"text":"time on the move so you don't fall off\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"sheepwars", "Name":"SheepWars",
		"estimated_time": "2-6 mins", "inspiration": "Épicube", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Envoyez vos moutons les plus puissants pour exterminer\n"},{"text":"jusqu'au dernier membre de l'équipe adverse !\n"}],
			"EN": [{"text":"Send your most powerful sheeps to exterminate\n"},{"text":"every single one of your enemy's team!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"block_party", "Name":"Block Party",
		"estimated_time": "1-5 mins", "inspiration": "HiveMC", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Quand la musique s'arrête, déplacez-vous sur\n"},{"text":"la couleur indiquée pour éviter de tomber !\n"}],
			"EN": [{"text":"When the music stop playing, move out to\n"},{"text":"the indicated color to avoid falling!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"moutron", "Name":"Moutron",
		"estimated_time": "1-3 mins", "inspiration": "Épicube", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Continuez d'avancer en chevauchant un mouton spécial\n"},{"text":"qui crée une traînée mortelle derrière lui !\n"}],
			"EN": [{"text":"Keep moving forward by riding a special sheep\n"},{"text":"that creates a deadly trail behind it!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"snowball_painter", "Name":"Snowball Painter",
		"estimated_time": "45s", "inspiration": "Party Games/Hypixel", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Peignez le plus de blocs possible sur un\n"},{"text":"tableau blanc dans le temps imparti pour gagner !\n"}],
			"EN": [{"text":"Paint the most amount of blocks on a\n"},{"text":"whiteboard within the allotted time to claim victory!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"gay_shooter", "Name":"Guy Shooter",
		"estimated_time": "1-5 mins", "inspiration": "a Survisland Event", "suggested_by": "GoldVision & scartvol", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Un tiers des joueurs ont un arc et doivent empêcher\n"},{"text":"les autres joueurs de monter la tour arc-en-ciel !\n"}],
			"EN": [{"text":"One third of the players have a bow and must prevent\n"},{"text":"the other players from climbing the rainbow tower!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"build_battle", "Name":"Build Battle",
		"estimated_time": "5-7 mins", "inspiration": "Hypixel", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Affrontez les autres joueurs avec votre construction\n"},{"text":"sur un thème choisi démocratiquement au début !\n"}],
			"EN": [{"text":"Compete against other players with your construction\n"},{"text":"on a theme chosen democratically at the start!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"beat_the_kings", "Name":"Beat The Kings",
		"estimated_time": "3-5 mins", "inspiration": "Henry IV/Louis XVI", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"FR": [{"text":"Un groupe de rois doit se battre et se protéger contre\n"},{"text":"tous leurs concitoyens qui veulent la révolution !\n"}],
			"EN": [{"text":"A group of kings must fight and protect themselves against\n"},{"text":"all their fellow citizens who want revolution!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"coin_chaser", "Name":"Coin Chaser",
		"estimated_time": "1m30s", "inspiration": "Expiration", "suggested_by": "Ikinox", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"L'alliance de l'elytra et de l'équipement de manœuvre tridimensionnel\n"},{"text":"vous permet de récolter un maximum d'or dans le temps imparti !\n"}],
			"EN": [{"text":"The combination of elytra and three-dimensional maneuver gear\n"},{"text":"allows you to collect a maximum amount of gold in the allotted time!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"murder_mystery", "Name":"Murder Mystery",
		"estimated_time": "1-4 mins", "inspiration": "Hypixel", "suggested_by": "GoldVision", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Un meurtrier, un détective, et la plèbe se retrouvent\n"},{"text":"dans une map mystérieuse abondante en or !\n"}],
			"EN": [{"text":"A murderer, a detective, and the plebs find\n"},{"text":"themselves in a mysterious map abundant with gold!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"panic_chase", "Name":"Panic Chase",
		"estimated_time": "1-2 mins", "inspiration": "Le chat et la souris", "suggested_by": "Arti", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"La majorité des joueurs doivent trouver un moyen de survivre aux\n"},{"text":"chasseurs dans une petite zone fermée pendant un temps imparti.\n"}],
			"EN": [{"text":"The majority of players must find a way to outlast the\n"},{"text":"hunters in a small, enclosed area within a time limit.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"simultaneous_jump", "Name":"Simultaneous Jump",
		"estimated_time": "60s", "inspiration": "Dé à Coudre/MLG à Coudre", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Un Dé à Coudre OU un MLG à Coudre, mais tous les joueurs sautent en même temps dans un temps imparti !\n"}],
			"EN": [{"text":"A Dé à Coudre OR a MLG à Coudre, but all players jump at the same time within a time limit!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"bombardement", "Name":"Bombardment",
		"estimated_time": "1-2 mins", "inspiration": "Hypixel", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Esquivez les tirs de ce bateau volant\n"},{"text":"pour être le dernier survivant !\n"}],
			"EN": [{"text":"Dodge the shots from this flying boat\n"},{"text":"to be the last survivor!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"shoot_da_sheep", "Name":"Shoot Da'Sheep",
		"estimated_time": "60s", "inspiration": "BrawlMC", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Des moutons tombent du ciel, certains donnent plus de points\n"},{"text":"que d'autres, obtenez le plus de points à la fin !\n"}],
			"EN": [{"text":"Sheeps are falling from the sky, some give more points\n"},{"text":"than others, get the most points at the end!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"minigolf", "Name":"MiniGolf",
		"estimated_time": "1-4 mins", "inspiration": "The physical world", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Soyez celui qui fera tomber sa balle de golf dans\n"},{"text":"le trou avec le moins de coups possible !\n"}],
			"EN": [{"text":"Be the one to drop your golf ball in\n"},{"text":"the hole with the fewest strokes possible!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"cigogne", "Name":"Cigogne",
		"estimated_time": "1-4 mins", "inspiration": "ShoupZ/JustNoob", "suggested_by": "GoldVision", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Dans une salle fermée, plusieurs spectres puissants doivent\n"},{"text":"s'affronter pour que le dernier survivant gagne la partie !\n"}],
			"EN": [{"text":"In a closed room, several powerful spectres must battle\n"},{"text":"it out for the last survivor to win the game!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"infected", "Name":"Infected",
		"estimated_time": "5-10 mins", "inspiration": "ImagineYourCraft (2013)", "suggested_by": "the whole Earth", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Un infecté est choisi au début de la partie et doit\n"},{"text":"infecter tous les humains qui doivent attendre les secours !\n"}],
			"EN": [{"text":"An infected person is chosen at the beginning of the game and\n"},{"text":"must infect all humans who must wait for rescue!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"glassrunner", "Name":"GlassRunner",
		"estimated_time": "8-10 mins", "inspiration": "Épicube", "suggested_by": "AirDox", "developed_by": "AirDox",
		"description": {
			"FR": [{"text":"Affrontez l'équipe adverse dans les airs dans un\n"},{"text":"CaptureThePoint assaisonné de multiples spécificités\n"}],
			"EN": [{"text":"Take on the opposing team in the sky in a\n"},{"text":"CaptureThePoint seasoned with multiple special features\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"capture_the_flag", "Name":"Capture The Flag",
		"estimated_time": "10-15 mins", "inspiration": "Aspiration", "suggested_by": "Oraclette", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Deux équipes doivent s'affronter pour capturer le drapeau ennemi\n"},{"text":"à l'aide de différentes classes spécifiques\n"}],
			"EN": [{"text":"Two teams must compete to capture the enemy flag\n"},{"text":"with the help of different specific classes\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"memory_mine", "Name":"Memory Mine",
		"estimated_time": "1-2 mins", "inspiration": "Pico Party", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Posez des mines qui disparaissent et clignotent aléatoirement pour indiquer leur\n"},{"text":"position. Soyez donc le dernier survivant en mémorisant leur position.\n"}],
			"EN": [{"text":"Lay mines that vanish and blink randomly to indicate their\n"},{"text":"position. So be the last survivor by memorizing their position.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"fish_fight", "Name":"Fish Fight",
		"estimated_time": "2-4 mins", "inspiration": "Findus", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"FR": [{"text":"Éjectez vos adversaires avec votre poisson\n"},{"text":"et votre dextérité pour remporter la victoire !\n"}],
			"EN": [{"text":"Eject your opponents with your fish\n"},{"text":"and your dexterity to claim victory!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"one_shot", "Name":"One Shot",
		"estimated_time": "2-4 mins", "inspiration": "OneShot", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"FR": [{"text":"Éliminez vos adversaires avec votre\n"},{"text":"puissant arc et épée pour remporter la victoire !\n"}],
			"EN": [{"text":"Eliminate your opponents with your\n"},{"text":"powerful bow and sword to claim victory!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"pillars_of_fortune", "Name":"Pillars of Fortune",
		"estimated_time": "1-6 mins", "inspiration": "Cubecraft", "suggested_by": "TreekoZ", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Obtenez un item aléatoire toutes les 2 secondes en haut de\n"},{"text":"grands piliers et tentez d'être le dernier survivant !\n"}],
			"EN": [{"text":"Get a random item every 2 seconds at the top of\n"},{"text":"large pillars and try to be the last man standing!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"fireblast", "Name":"Fireblast",
		"estimated_time": "1-2 mins", "inspiration": "LifeCraft", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Éjectez tous les joueurs de la plateforme\n"},{"text":"en utilisant des boules de feu explosives !\n"}],
			"EN": [{"text":"Knock out every players from the platform\n"},{"text":"by using explosive fireballs!\n"}]
		},
	}
]

# Language pretext constant
LANG_PRETEXT: dict[str, dict[str, str]] = {
	"FR": {"estimated_time": "Estimation :",	"inspiration": "Inspiration :",	"suggested": "Proposé par",		"developed": "Développé par"},
	"EN": {"estimated_time": "Estimated:",		"inspiration": "Inspiration:",	"suggested": "Suggested by",	"developed": "Developed by"},
}

# Add the lores to the modes
def add_lore():
	for mode in MODES:
		description: dict[str, list[dict]] = mode["description"]

		# Add the missing lore for each language
		for lang, lore in description.items():
			pretext: dict[str, str] = LANG_PRETEXT[lang]
			lore.insert(0, "")
			lore.insert(1, {"text":f"[{mode['Name']}]\n","color":"yellow"})
			lore.append({"text":f"\n[{pretext['estimated_time']} {mode['estimated_time']}]","color":"gold"})
			lore.append({"text":f"\n[{pretext['inspiration']} {mode['inspiration']}]","color":"green"})
			lore.append({"text":f"\n[{pretext['suggested']} {mode['suggested_by']}]","color":"aqua"})
			lore.append({"text":f"\n[{pretext['developed']} {mode['developed_by']}]","color":"aqua"})
			lore_key: str = f"Lore{lang}" if lang != "FR" else "Lore"
			mode[lore_key] = json.dumps(lore, ensure_ascii=False)

		del mode["description"]

@measure_time(progress, "Generated modes load file")
def main(config: dict):
	add_lore()
	append_lines: list[str] = ["data modify storage switch:main minigames append value " + json.dumps(mode, ensure_ascii=False) for mode in MODES]
	write_to_function(config, "switch:modes/load", "\n".join(append_lines))


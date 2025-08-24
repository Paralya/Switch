
"""
# French
# data modify storage switch:main minigames append value {min_players:2	,max_players:-1		,id:"replicate_the_build"	,name_fr:"Replicate The Build"	,lore_fr:["",{"text":"[Replicate The Build]\n","color":"yellow"},	{"text":"Refaites le build donné le plus rapidement possible, et sans vous tromper !\n"},																								{"text":"\n[Estimation : 1-6 mins]","color":"gold"},	{"text":"\n[Inspiration : Mineplex]","color":"green"},						{"text":"\n[Proposé/Développé par AirDox]","color":"aqua"}]}

# data modify storage switch:main minigames[{id:"replicate_the_build"}].lore_en set value ["",	{"text":"[Replicate The Build]\n","color":"yellow"},	{"text":"Repeat the given build as quickly as possible, without making any mistakes!\n"},																								{"text":"\n[Estimated: 1-6 mins]","color":"gold"},		{"text":"\n[Inspiration: Mineplex]","color":"green"},						{"text":"\n[Suggested/Developed by AirDox]","color":"aqua"}]}
"""  # noqa: E501

# Imports
import json

import stouputils as stp
from stewbeet.core import write_function

# Modes list
MODES: list[dict] = [
	{
		"min_players":1, "max_players":-1, "id":"pitch_creep", "name_fr":"Pitch Creep",
		"estimated_time": "1m30s", "inspiration": "Pitchout/Épicube", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Survivez en repoussant les creepers\n"},{"text":"dans une arène fermée.\n"}],
			"en": [{"text":"Survive by pushing away creepers\n"},{"text":"in a closed arena.\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"laser_game", "name_fr":"Laser Game",
		"estimated_time": "2m30s", "inspiration": "The physical world", "suggested_by": "Vigo", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Affrontez l'équipe adverse grâce à vos fusils-laser et faites\n"},{"text":"le plus d'élimination possible pendant un temps imparti !\n"}],
			"en": [{"text":"Battle the enemy team with your laser rifles and get\n"},{"text":"as many takedowns as possible within the allotted time!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"warden_escape", "name_fr":"Warden Escape",
		"estimated_time": "1m30s", "inspiration": "Minecraft 1.19", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Survivez aux wardens dans\n"},{"text":"une arène fermée.\n"}],
			"en": [{"text":"Survive the wardens in\n"},{"text":"a closed arena.\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"pitchout", "name_fr":"Pitchout",
		"estimated_time": "1-5 mins", "inspiration": "Épicube", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Poussez vos adversaires dans l'eau\n"},{"text":"et soyez le dernier survivant !\n"}],
			"en": [{"text":"Push your opponents into the water\n"},{"text":"and be the last survivor!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"creeper_apocalypse", "name_fr":"Creeper Apocalypse",
		"estimated_time": "1m30s", "inspiration": "Expiration", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Survivez aux creepers qui se\n"},{"text":"multiplient et explosent.\n"}],
			"en": [{"text":"Survive the creepers that\n"},{"text":"duplicate and explode.\n"}]
		},
	},
	{
		"min_players":4, "max_players":-1, "id":"traitors_game", "name_fr":"Traitors Game",
		"estimated_time": "4-10 mins", "inspiration": "Taupe Gun UHC", "suggested_by": "Luxio", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Des traitres se cachent parmi les joueurs.\n"},{"text":"Innocents contre Traitres, quel camp va-t-il gagner ?\n"}],
			"en": [{"text":"Traitors are hinding among players.\n"},{"text":"Innocents versus Traitors, which side will win?\n"}]
		},
	},
	# {
	# 	"min_players":1, "max_players":-1, "id":"boat_race", "name_fr":"Boat Race",
	# 	"estimated_time": "3-8 mins", "inspiration": "Expiration", "suggested_by": "Stoupy", "developed_by": "LTHCTheMaster",
	# 	"description": {
	# 		"fr": [{"text":"Battez-vous pour atteindre la ligne d'arrivée\n"},{"text":"en premier pour remporter la partie !\n"}],
	# 		"en": [{"text":"Race for reaching the finish line\n"},{"text":"in first to claim the win!\n"}]
	# 	},
	# },
	{
		"min_players":2, "max_players":-1, "id":"spectres_game", "name_fr":"Spectres Game",
		"estimated_time": "4-10 mins", "inspiration": "Expiration", "suggested_by": "Luxio", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Deux camps : un avec que des joueurs visibles,\n"},{"text":"l'autre avec des spectres, quel camp va-t-il gagner ?\n"}],
			"en": [{"text":"Two sides: one with visible players,\n"},{"text":"the other with spectres, which side will win?\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"race", "name_fr":"Race",
		"estimated_time": "3-6 mins", "inspiration": "Racing games", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Battez-vous pour atteindre la ligne d'arrivée\n"},{"text":"en premier pour remporter la partie !\n"}],
			"en": [{"text":"Race for reaching the finish line\n"},{"text":"in first to claim the win!\n"}]
		},
	},
	{
		"min_players":8, "max_players":-1, "id":"rush_the_point", "name_fr":"Rush The Point",
		"estimated_time": "7-10 mins", "inspiration": "PluginLess", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Capturez les points centraux dans le vide\n"},{"text":"avec vos classes spéciales.\n"}],
			"en": [{"text":"Capture the central points in the void\n"},{"text":"with your special classes.\n"}]
		},
	},
	{
		"min_players":8, "max_players":-1, "id":"rush_the_flag", "name_fr":"Rush The Flag",
		"estimated_time": "5-10 mins", "inspiration": "PluginLess", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Volez le drapeau ennemi\n"},{"text":"avec vos classes spéciales.\n"}],
			"en": [{"text":"Steal the enemy flag\n"},{"text":"with your special classes.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"spleef", "name_fr":"Spleef",
		"estimated_time": "1-4 mins", "inspiration": "everywhere", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Creusez sous vos adversaires\n"},{"text":"pour les faire tomber !\n"}],
			"en": [{"text":"Dig below your opponents\n"},{"text":"to make them fall!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"de_a_coudre", "name_fr":"Dé à Coudre",
		"estimated_time": "3-6 mins", "inspiration": "OneCube point system", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Affrontez les autres joueurs dans un saut,\n"},{"text":"dans une piscine, iconique de Minecraft !\n"}],
			"en": [{"text":"Take on the other players in\n"},{"text":"Minecraft's iconic pool jump!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"feed_fast", "name_fr":"Feed Fast",
		"estimated_time": "60s", "inspiration": "Le diabète", "suggested_by": "Arobaze", "developed_by": "LTHCTheMaster",
		"description": {
			"fr": [{"text":"Mangez le plus de nourriture\n"},{"text":"possible pour gagner !\n"}],
			"en": [{"text":"Eat the most food\n"},{"text":"possible to win!\n"}]
		},
	},
	{
		"min_players":1, "max_players":8, "id":"mlg_a_coudre", "name_fr":"MLG à Coudre",
		"estimated_time": "1-6 mins", "inspiration": "Dé à Coudre", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Sautez et utilisez votre seau d'eau\n"},{"text":"pour survivre à la chute !\n"}],
			"en": [{"text":"Jump and use your water bucket\n"},{"text":"to survive the fall!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"protect_the_king", "name_fr":"Protect The King",
		"estimated_time": "1-4 mins", "inspiration": "Charlemagne", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Tuez le roi ennemi ou\n"},{"text":"protégez le vôtre !\n"}],
			"en": [{"text":"Kill the enemy king or\n"},{"text":"protect your own!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"castagne", "name_fr":"Castagne RP",
		"estimated_time": "1-5 mins", "inspiration": "Domestic Violence", "suggested_by": "JustNoob", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Battez-vous au corps à corps\n"},{"text":"et soyez le dernier survivant !\n"}],
			"en": [{"text":"Fight hand-to-hand combat\n"},{"text":"and be the last survivor!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"layers_2_teams", "name_fr":"Layers 2 Teams",
		"estimated_time": "4-10 mins", "inspiration": "PenguinGames", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Équipez-vous rapidement et détruisez\n"},{"text":"l'équipe adverse située de l'autre côté du mur !\n"}],
			"en": [{"text":"Gear up quickly and destroy the enemy team\n"},{"text":"on the other side of the wall!\n"}]
		},
	},
	{
		"min_players":4, "max_players":-1, "id":"layers_4_teams", "name_fr":"Layers 4 Teams",
		"estimated_time": "4-10 mins", "inspiration": "PenguinGames", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Course d'équipement entre\n"},{"text":"4 équipes, éliminez vos ennemis !\n"}],
			"en": [{"text":"Equipment race between\n"},{"text":"4 teams, eliminate your enemies!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"thunder_spear", "name_fr":"Thunder Spear",
		"estimated_time": "2m30s", "inspiration": "SNK/Attack On Titan", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Utilisez votre équipement tridimensionnel\n"},{"text":"et vos lances explosives !\n"}],
			"en": [{"text":"Use your three-dimensional maneuver gear\n"},{"text":"and explosive spears!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"tnt_run", "name_fr":"TNT Run",
		"estimated_time": "1-4 mins", "inspiration": "Grian (2013)", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Restez en mouvement, les blocs\n"},{"text":"disparaissent sous vos pieds !\n"}],
			"en": [{"text":"Keep moving, blocks disappear\n"},{"text":"under your feet!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"sheepwars", "name_fr":"SheepWars",
		"estimated_time": "2-6 mins", "inspiration": "Épicube", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Lancez des moutons explosifs\n"},{"text":"sur l'équipe ennemie !\n"}],
			"en": [{"text":"Launch explosive sheep\n"},{"text":"at the enemy team!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"block_party", "name_fr":"Block Party",
		"estimated_time": "1-5 mins", "inspiration": "HiveMC", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Quand la musique s'arrête,\n"},{"text":"trouvez la bonne couleur !\n"}],
			"en": [{"text":"When the music stops,\n"},{"text":"find the right color!\n"}]
		},
	},
	{
		"min_players":2, "max_players":16, "id":"moutron", "name_fr":"Moutron",
		"estimated_time": "1-3 mins", "inspiration": "Épicube", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Montez un mouton qui laisse\n"},{"text":"une traînée mortelle !\n"}],
			"en": [{"text":"Ride a sheep that leaves\n"},{"text":"a deadly trail!\n"}]
		},
	},
	{
		"min_players":2, "max_players":45, "id":"snowball_painter", "name_fr":"Snowball Painter",
		"estimated_time": "45s", "inspiration": "Party Games/Hypixel", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Peignez le plus de blocs possible\n"},{"text":"avec vos boules de neige !\n"}],
			"en": [{"text":"Paint the most blocks possible\n"},{"text":"with your snowballs!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"gay_shooter", "name_fr":"Guy Shooter",
		"estimated_time": "1-5 mins", "inspiration": "a Survisland Event", "suggested_by": "GoldVision & scartvol", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Archers contre grimpeurs :\n"},{"text":"empêchez-les d'atteindre le sommet !\n"}],
			"en": [{"text":"Archers versus climbers:\n"},{"text":"prevent them from reaching the top!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"build_battle", "name_fr":"Build Battle",
		"estimated_time": "5-7 mins", "inspiration": "Hypixel", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Construisez sur un thème\n"},{"text":"et votez pour le meilleur build !\n"}],
			"en": [{"text":"Build on a theme and\n"},{"text":"vote for the best build!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"beat_the_kings", "name_fr":"Beat The Kings",
		"estimated_time": "3-5 mins", "inspiration": "Henry IV/Louis XVI", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"fr": [{"text":"Révolutionnaires contre rois :\n"},{"text":"qui survivra à la bataille ?\n"}],
			"en": [{"text":"Revolutionaries versus kings:\n"},{"text":"who will survive the battle?\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"coin_chaser", "name_fr":"Coin Chaser",
		"estimated_time": "1m30s", "inspiration": "Expiration", "suggested_by": "Ikinox", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Collectez le plus d'or possible\n"},{"text":"avec vos élytras !\n"}],
			"en": [{"text":"Collect the most gold possible\n"},{"text":"with your elytra!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"murder_mystery", "name_fr":"Murder Mystery",
		"estimated_time": "1-4 mins", "inspiration": "Hypixel", "suggested_by": "GoldVision", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Un meurtrier, un détective,\n"},{"text":"et des innocents dans une map pleine d'or !\n"}],
			"en": [{"text":"A murderer, a detective,\n"},{"text":"and innocents in a map full of gold!\n"}]
		},
	},
	{
		"min_players":4, "max_players":-1, "id":"panic_chase", "name_fr":"Panic Chase",
		"estimated_time": "1-2 mins", "inspiration": "Le chat et la souris", "suggested_by": "Arti", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Survivez aux chasseurs dans\n"},{"text":"une petite arène fermée !\n"}],
			"en": [{"text":"Survive the hunters in\n"},{"text":"a small closed arena!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"simultaneous_jump", "name_fr":"Simultaneous Jump",
		"estimated_time": "60s", "inspiration": "Dé à Coudre/MLG à Coudre", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Dé à coudre ou MLG à coudre,\n"},{"text":"mais tout le monde saute en même temps !\n"}],
			"en": [{"text":"Pool jump or MLG water bucket,\n"},{"text":"but everyone jumps at the same time!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"bombardement", "name_fr":"Bombardment",
		"estimated_time": "1-2 mins", "inspiration": "Hypixel", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Esquivez les tirs de ce bâteau volant\n"},{"text":"afin d'être le dernier survivant !\n"}],
			"en": [{"text":"Dodge the shots from this flying boat\n"},{"text":"to be the last survivor!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"shoot_da_sheep", "name_fr":"Shoot Da'Sheep",
		"estimated_time": "60s", "inspiration": "BrawlMC", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Des moutons tombent du ciel, certains donnent plus de points\n"},{"text":"que d'autres, ayez le plus de points à la fin !\n"}],
			"en": [{"text":"Sheeps are falling from the sky, some give more points\n"},{"text":"than others, get the most points at the end!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"minigolf", "name_fr":"MiniGolf",
		"estimated_time": "1-4 mins", "inspiration": "The physical world", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Soyez celui qui réussi à faire tomber sa balle dans\n"},{"text":"le trou avec le moins de coup possible !\n"}],
			"en": [{"text":"Be the one to drop your golf ball in\n"},{"text":"the hole with the fewest strokes possible!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"cigogne", "name_fr":"Cigogne",
		"estimated_time": "1-4 mins", "inspiration": "ShoupZ/JustNoob", "suggested_by": "GoldVision", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Combat de spectres puissants\n"},{"text":"dans une salle fermée !\n"}],
			"en": [{"text":"Powerful spectres battle\n"},{"text":"in a closed room!\n"}]
		},
	},
	{
		"min_players":8, "max_players":-1, "id":"infected", "name_fr":"Infected",
		"estimated_time": "5-10 mins", "inspiration": "ImagineYourCraft (2013)", "suggested_by": "the whole Earth", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Un infecté est choisi en début de partie et doit infecter\n"},{"text":"tous les humains qui doivent attendre les renforts !\n"}],
			"en": [{"text":"An infected person is chosen at the beginning of the game and\n"},{"text":"must infect all humans who must wait for rescue!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"glassrunner", "name_fr":"GlassRunner",
		"estimated_time": "8-10 mins", "inspiration": "Épicube", "suggested_by": "AirDox", "developed_by": "AirDox",
		"description": {
			"fr": [{"text":"Affrontez l'équipe adverse dans le ciel dans un\n"},{"text":"CaptureThePoint assaisonné de multiples particularités\n"}],
			"en": [{"text":"Take on the opposing team in the sky in a\n"},{"text":"CaptureThePoint seasoned with multiple special features\n"}]
		},
	},
	{
		"min_players":10, "max_players":-1, "id":"capture_the_flag", "name_fr":"Capture The Flag",
		"estimated_time": "10-15 mins", "inspiration": "Aspiration", "suggested_by": "Oraclette", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Deux équipes doivent s'affronter pour capturer\n"},{"text":"le drapeau ennemi grâce à des\n"},{"text":"classes spécifiques différentes\n"}],
			"en": [{"text":"Two teams must compete to capture the enemy flag\n"},{"text":"with the help of different specific classes\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"memory_mine", "name_fr":"Memory Mine",
		"estimated_time": "1-2 mins", "inspiration": "Pico Party", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Mémorisez la position des mines\n"},{"text":"qui clignotent et disparaissent !\n"}],
			"en": [{"text":"Memorize the position of mines\n"},{"text":"that blink and disappear!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"fish_fight", "name_fr":"Fish Fight",
		"estimated_time": "2-4 mins", "inspiration": "Findus", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"fr": [{"text":"Éjectez vos adversaires\n"},{"text":"avec votre poisson !\n"}],
			"en": [{"text":"Eject your opponents\n"},{"text":"with your fish!\n"}]
		},
	},
	{
		"min_players":2, "max_players":10, "id":"one_shot", "name_fr":"One Shot",
		"estimated_time": "2-4 mins", "inspiration": "OneShot", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"fr": [{"text":"Éliminez vos adversaires grâce à votre arc\n"},{"text":"surpuissant et votre épée pour remporter la victoire !\n"}],
			"en": [{"text":"Eliminate your opponents with your\n"},{"text":"powerful bow and sword to claim victory!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"pillars_of_fortune", "name_fr":"Pillars of Fortune",
		"estimated_time": "1-6 mins", "inspiration": "Cubecraft", "suggested_by": "TreekoZ", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Recevez des objets aléatoires\n"},{"text":"sur de grands piliers !\n"}],
			"en": [{"text":"Receive random items\n"},{"text":"on large pillars!\n"}]
		},
	},
	{
		"min_players":2, "max_players":-1, "id":"fireblast", "name_fr":"Fireblast",
		"estimated_time": "1-2 mins", "inspiration": "LifeCraft", "suggested_by": "Stoupy", "developed_by": "Stoupy",
		"description": {
			"fr": [{"text":"Éjectez tous les joueurs de la plateforme\n"},{"text":"en utilisant des boules de feu explosives !\n"}],
			"en": [{"text":"Knock out every players from the platform\n"},{"text":"by using explosive fireballs!\n"}]
		},
	},
	# {
	# 	"min_players":1, "max_players":32, "id":"pvpswap", "name_fr":"PvPSwap",
	# 	"estimated_time": "1-2 mins", "inspiration": "Épicube", "suggested_by": "Arobaze", "developed_by": "Arobaze",
	# 	"description": {
	# 		"fr": [{"text":"Éliminez les autres joueurs au travers\n"},{"text":"des changements inopinés de positions !\n"}],
	# 		"en": [{"text":"Eliminate other players through\n"},{"text":"sudden changes in positions!\n"}]
	# 	},
	# }
]

# Language pretext constant
LANG_PRETEXT: dict[str, dict[str, str]] = {
	"fr": {"estimated_time": "Estimation :",	"inspiration": "Inspiration :",	"suggested": "Proposé par",		"developed": "Développé par"},
	"en": {"estimated_time": "Estimated:",		"inspiration": "Inspiration:",	"suggested": "Suggested by",	"developed": "Developed by"},
}

# Add the lores to the modes
def add_lore():
	for i, mode in enumerate(MODES):
		description: dict[str, list[dict]] = mode["description"]

		# Add the missing lore for each language
		for lang, lore in description.items():
			pretext: dict[str, str] = LANG_PRETEXT[lang]
			lore.insert(0, "")
			lore.insert(1, {"text":f"[{mode['name_fr']}]\n","color":"yellow"})
			lore.append({"text":f"\n[{pretext['estimated_time']} {mode['estimated_time']}]","color":"gold"})
			lore.append({"text":f"\n[{pretext['inspiration']} {mode['inspiration']}]","color":"green"})
			lore.append({"text":f"\n[{pretext['suggested']} {mode['suggested_by']}]","color":"aqua"})
			lore.append({"text":f"\n[{pretext['developed']} {mode['developed_by']}]","color":"aqua"})
			lore_key: str = f"lore_{lang}"
			mode[lore_key] = lore

		# Add keys for index and index*100 (utility for things such as /rating, /coupdetat, etc.)
		mode["index"] = i + 1
		mode["index_hundred"] = (i + 1) * 100

		del mode["description"]

@stp.measure_time(stp.progress, "Generated modes load file")
def main():
	add_lore()
	append_lines: list[str] = ["data modify storage switch:main minigames append value " + json.dumps(mode, ensure_ascii=False) for mode in MODES]
	write_function("switch:modes/load", "\n".join(append_lines))



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
		"min_players":1, "max_players":-1, "id":"pitch_creep", "Name":"Pitch Creep",
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
			"EN": [{"text":"Battle the enemy team with your laser rifles and get\n"},{"text":"as many takedowns as possible within the allotted time!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"warden_escape", "Name":"Warden Escape",
		"estimated_time": "1m30s", "inspiration": "Minecraft 1.19", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Survivez pendant le temps imparti dans une map fermée\n"},{"text":"avec des wardens cherchant à vous tuer.\n"}],
			"EN": [{"text":"Survive the allotted time in a closed map\n"},{"text":"with wardens seeking for you death.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"pitchout", "Name":"Pitchout",
		"estimated_time": "1-5 mins", "inspiration": "Épicube", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Vous avez trois vies, un équipement vous permettant\n"},{"text":"des attaques repoussantes, soyez le dernier survivant !\n"}],
			"EN": [{"text":"You have 3 lives, a set of equipment that allows you\n"},{"text":"to knockback players in the water, be the last remaining!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"creeper_apocalypse", "Name":"Creeper Apocalypse",
		"estimated_time": "1m30s", "inspiration": "Expiration", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Survivez pendant le temps imparti dans une map\n"},{"text":"fermée avec des creepers qui se multiplient et\n"},{"text":"explosent sans cesse automatiquement.\n"}],
			"EN": [{"text":"Survive the allotted time in a closed map\n"},{"text":"with creepers that automatically\n"},{"text":"duplicate and explode.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"traitors_game", "Name":"Traitors Game",
		"estimated_time": "4-10 mins", "inspiration": "Taupe Gun UHC", "suggested_by": "Luxio", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Des traitres se cachent parmi les joueurs.\n"},{"text":"Innocents contre Traitres, quel camp va-t-il gagner ?\n"}],
			"EN": [{"text":"Traitors are hinding among players.\n"},{"text":"Innocents versus Traitors, which side will win?\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"boat_race", "Name":"Boat Race",
		"estimated_time": "3-8 mins", "inspiration": "Expiration", "suggested_by": "Stoupy51", "developed_by": "LTHCTheMaster",
		"description": {
			"FR": [{"text":"Battez-vous pour atteindre la ligne d'arrivée\n"},{"text":"en premier pour remporter la partie !\n"}],
			"EN": [{"text":"Race for reaching the finish line\n"},{"text":"in first to claim the win!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"spectres_game", "Name":"Spectres Game",
		"estimated_time": "4-10 mins", "inspiration": "Expiration", "suggested_by": "Luxio", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Deux camps : un avec que des joueurs visibles,\n"},{"text":"l'autre avec des spectres, quel camp va-t-il gagner ?\n"}],
			"EN": [{"text":"Two sides: one with visible players,\n"},{"text":"the other with spectres, which side will win?\n"}]
		},
	},
	# {
	# 	"min_players":1, "max_players":-1, "id":"kart_racer", "Name":"Kart Racer",
	# 	"estimated_time": "3-6 mins", "inspiration": "Racing games", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
	# 	"description": {
	# 		"FR": [{"text":"Affrontez les autres joueurs sur des\n"},{"text":"circuits et soyez le premier arrivé !\n"}],
	# 		"EN": [{"text":"Compete against other players on circuits\n"},{"text":"and be the first to reach the finish line!\n"}]
	# 	},
	# },
	{
		"min_players":1, "max_players":-1, "id":"rush_the_point", "Name":"Rush The Point",
		"estimated_time": "7-10 mins", "inspiration": "PluginLess", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Deux équipes doivent s'affronter pour capturer\n"},{"text":"plusieurs points au centre du vide grâce à des\n"},{"text":"classes spécifiques différentes\n"}],
			"EN": [{"text":"Two teams must compete to capture\n"},{"text":"several points at the center of the void\n"},{"text":"by using specific classes.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"rush_the_flag", "Name":"Rush The Flag",
		"estimated_time": "5-10 mins", "inspiration": "PluginLess", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Deux équipes doivent s'affronter pour capturer\n"},{"text":"le drapeau ennemi grâce à des classes spécifiques\n"},{"text":"sur une map vide\n"}],
			"EN": [{"text":"Two teams must compete to capture\n"},{"text":"the enemy flag located at their base\n"},{"text":"by using specific classes.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"spleef", "Name":"Spleef",
		"estimated_time": "1-4 mins", "inspiration": "everywhere", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Soyez le dernier en vie en faisant tomber\n"},{"text":"tous vos adversaires grâce à votre pelle !\n"}],
			"EN": [{"text":"Aim to be the last one alive by digging\n"},{"text":"below other player using your shovel!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"de_a_coudre", "Name":"Dé à Coudre",
		"estimated_time": "3-6 mins", "inspiration": "OneCube point system", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Affrontez les autres joueurs dans un saut,\n"},{"text":"dans une piscine, iconique de Minecraft !\n"}],
			"EN": [{"text":"Take on the other players in\n"},{"text":"Minecraft's iconic pool jump!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"feed_fast", "Name":"Feed Fast",
		"estimated_time": "60s", "inspiration": "Le diabète", "suggested_by": "Arobaze", "developed_by": "LTHCTheMaster",
		"description": {
			"FR": [{"text":"Trouvez de la nourriture autour de vous\n"},{"text":"et mangez-en le plus possible pour gagner !\n"}],
			"EN": [{"text":"Find food around you and eat\n"},{"text":"the most amount to win!\n"}]
		},
	},
	{
		"min_players":1, "max_players":8, "id":"mlg_a_coudre", "Name":"MLG à Coudre",
		"estimated_time": "1-6 mins", "inspiration": "Dé à Coudre", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Affrontez les autres joueurs dans un saut\n"},{"text":"iconique de Minecraft, mais avec un seau d'eau !\n"}],
			"EN": [{"text":"Take on the other players in Minecraft's\n"},{"text":"iconic pool jump, but with a water bucket!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"protect_the_king", "Name":"Protect The King",
		"estimated_time": "1-4 mins", "inspiration": "Charlemagne", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Deux royaumes entrent en guerre pour tuer le roi\n"},{"text":"ennemi afin de gagner la partie !\n"}],
			"EN": [{"text":"Two kingdoms declare war to kill the enemy\n"},{"text":"king and win the decivise battle!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"castagne", "Name":"Castagne RP",
		"estimated_time": "1-5 mins", "inspiration": "Domestic Violence", "suggested_by": "JustNoob", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Vous êtes là pour castagner les gens et rester\n"},{"text":"le dernier en vie afin de gagner la partie\n"}],
			"EN": [{"text":"You're there to beat people up and\n"},{"text":"stay the last one alive to win the game.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"layers_2_teams", "Name":"Layers 2 Teams",
		"estimated_time": "4-10 mins", "inspiration": "PenguinGames", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Soyez le plus rapide à vous équiper afin de\n"},{"text":"transpercer le mur d'obsidienne pour exterminer l'ennemi !\n"}],
			"EN": [{"text":"Be the fastest to equip yourselves to pierce\n"},{"text":"the obsidian wall and exterminate the enemy!\n"}]
		},
	},
	{
		"min_players":8, "max_players":-1, "id":"layers_4_teams", "Name":"Layers 4 Teams",
		"estimated_time": "4-10 mins", "inspiration": "PenguinGames", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Affrontez 3 autres équipes à une course\n"},{"text":"d'équipements afin d'anéantir vos ennemis !\n"}],
			"EN": [{"text":"Compete against 3 other teams in an\n"},{"text":"equipment race to destroy your enemies!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"thunder_spear", "Name":"Thunder Spear",
		"estimated_time": "2m30s", "inspiration": "SNK/Attack On Titan", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Éliminez le maximum de joueurs à l'aide de votre équipement\n"},{"text":"tridimensionnel et vos lances foudroyantes !\n"}],
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
			"FR": [{"text":"Envoyez sur l'équipe ennemie vos moutons les plus puissants\n"},{"text":"afin de les exterminer jusqu'au dernier !\n"}],
			"EN": [{"text":"Send your most powerful sheeps to exterminate\n"},{"text":"every single one of your enemy's team!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"block_party", "Name":"Block Party",
		"estimated_time": "1-5 mins", "inspiration": "HiveMC", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Dès que la musique s'arrête, dirigez-vous\n"},{"text":"sur la couleur indiquée pour ne pas tomber !\n"}],
			"EN": [{"text":"When the music stop playing, move out to\n"},{"text":"the indicated color to avoid falling!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"moutron", "Name":"Moutron",
		"estimated_time": "1-3 mins", "inspiration": "Épicube", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Avancez sans cesse à dos d'un mouton spécial qui\n"},{"text":"créer une trainée mortelle derrière lui !\n"}],
			"EN": [{"text":"Keep moving forward by riding a special sheep\n"},{"text":"that creates a deadly trail behind it!\n"}]
		},
	},
	{
		"min_players":1, "max_players":45, "id":"snowball_painter", "Name":"Snowball Painter",
		"estimated_time": "45s", "inspiration": "Party Games/Hypixel", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Peignez le maximum de bloc sur ce tableau blanc\n"},{"text":"dans un temps imparti pour gagner !\n"}],
			"EN": [{"text":"Paint the most amount of blocks on a\n"},{"text":"whiteboard within the allotted time to claim victory!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"gay_shooter", "Name":"Guy Shooter",
		"estimated_time": "1-5 mins", "inspiration": "a Survisland Event", "suggested_by": "GoldVision & scartvol", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Un tier des joueurs possède un arc et doit empêcher\n"},{"text":"les autres joueurs de monter la tour arc-en-ciel !\n"}],
			"EN": [{"text":"One third of the players have a bow and must prevent\n"},{"text":"the other players from climbing the rainbow tower!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"build_battle", "Name":"Build Battle",
		"estimated_time": "5-7 mins", "inspiration": "Hypixel", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Concurrencez les autres joueurs avec votre\n"},{"text":"construction sur un thème choisi démocratiquement au début !\n"}],
			"EN": [{"text":"Compete against other players with your construction\n"},{"text":"on a theme chosen democratically at the start!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"beat_the_kings", "Name":"Beat The Kings",
		"estimated_time": "3-5 mins", "inspiration": "Henry IV/Louis XVI", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"FR": [{"text":"Un groupe de roi doit se battre contre l'ensemble\n"},{"text":"de ses concitoyens qui souhaitent la révolution !\n"}],
			"EN": [{"text":"A group of kings must fight and protect themselves against\n"},{"text":"all their fellow citizens who want revolution!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"coin_chaser", "Name":"Coin Chaser",
		"estimated_time": "1m30s", "inspiration": "Expiration", "suggested_by": "Ikinox", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Le combo Elytra / Équipement tridimensionnel vous permet\n"},{"text":"de récupérer un maximum de tune dans un temps imparti !\n"}],
			"EN": [{"text":"The combination of elytra and three-dimensional maneuver gear\n"},{"text":"allows you to collect a maximum amount of gold in the allotted time!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"murder_mystery", "Name":"Murder Mystery",
		"estimated_time": "1-4 mins", "inspiration": "Hypixel", "suggested_by": "GoldVision", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Un meurtrier, un détective, et une bande de floppeurs\n"},{"text":"se trouvent dans une map mystérieuse abondante d'or !\n"}],
			"EN": [{"text":"A murderer, a detective, and the plebs find\n"},{"text":"themselves in a mysterious map abundant with gold!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"panic_chase", "Name":"Panic Chase",
		"estimated_time": "1-2 mins", "inspiration": "Le chat et la souris", "suggested_by": "Arti", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"La majorité des joueurs doivent trouver un moyen de survivre\n"},{"text":"aux chasseurs pendant un temps imparti dans une petite zone fermée.\n"}],
			"EN": [{"text":"The majority of players must find a way to outlast the\n"},{"text":"hunters in a small, enclosed area within a time limit.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"simultaneous_jump", "Name":"Simultaneous Jump",
		"estimated_time": "60s", "inspiration": "Dé à Coudre/MLG à Coudre", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Un dé à coudre OU un MLG à coudre, mais tous les joueurs sautent\n"},{"text":"en même temps pendant un temps imparti !\n"}],
			"EN": [{"text":"A Dé à Coudre OR a MLG à Coudre, but all players jump at the same time within a time limit!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"bombardement", "Name":"Bombardment",
		"estimated_time": "1-2 mins", "inspiration": "Hypixel", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Esquivez les tirs de ce bâteau volant\n"},{"text":"afin d'être le dernier survivant !\n"}],
			"EN": [{"text":"Dodge the shots from this flying boat\n"},{"text":"to be the last survivor!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"shoot_da_sheep", "Name":"Shoot Da'Sheep",
		"estimated_time": "60s", "inspiration": "BrawlMC", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Des moutons tombent du ciel, certains donnent plus de points\n"},{"text":"que d'autres, ayez le plus de points à la fin !\n"}],
			"EN": [{"text":"Sheeps are falling from the sky, some give more points\n"},{"text":"than others, get the most points at the end!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"minigolf", "Name":"MiniGolf",
		"estimated_time": "1-4 mins", "inspiration": "The physical world", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Soyez celui qui réussi à faire tomber sa balle dans\n"},{"text":"le trou avec le moins de coup possible !\n"}],
			"EN": [{"text":"Be the one to drop your golf ball in\n"},{"text":"the hole with the fewest strokes possible!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"cigogne", "Name":"Cigogne",
		"estimated_time": "1-4 mins", "inspiration": "ShoupZ/JustNoob", "suggested_by": "GoldVision", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Dans une salle fermée, plusieurs spectres puissants doivent\n"},{"text":"s'affronter afin que le dernier survivant remporte la partie !\n"}],
			"EN": [{"text":"In a closed room, several powerful spectres must battle\n"},{"text":"it out for the last survivor to win the game!\n"}]
		},
	},
	{
		"min_players":8, "max_players":-1, "id":"infected", "Name":"Infected",
		"estimated_time": "5-10 mins", "inspiration": "ImagineYourCraft (2013)", "suggested_by": "the whole Earth", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Un infecté est choisi en début de partie et doit infecter\n"},{"text":"tous les humains qui doivent attendre les renforts !\n"}],
			"EN": [{"text":"An infected person is chosen at the beginning of the game and\n"},{"text":"must infect all humans who must wait for rescue!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"glassrunner", "Name":"GlassRunner",
		"estimated_time": "8-10 mins", "inspiration": "Épicube", "suggested_by": "AirDox", "developed_by": "AirDox",
		"description": {
			"FR": [{"text":"Affrontez l'équipe adverse dans le ciel dans un\n"},{"text":"CaptureThePoint assaisonné de multiples particularités\n"}],
			"EN": [{"text":"Take on the opposing team in the sky in a\n"},{"text":"CaptureThePoint seasoned with multiple special features\n"}]
		},
	},
	{
		"min_players":10, "max_players":-1, "id":"capture_the_flag", "Name":"Capture The Flag",
		"estimated_time": "10-15 mins", "inspiration": "Aspiration", "suggested_by": "Oraclette", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Deux équipes doivent s'affronter pour capturer\n"},{"text":"le drapeau ennemi grâce à des\n"},{"text":"classes spécifiques différentes\n"}],
			"EN": [{"text":"Two teams must compete to capture the enemy flag\n"},{"text":"with the help of different specific classes\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"memory_mine", "Name":"Memory Mine",
		"estimated_time": "1-2 mins", "inspiration": "Pico Party", "suggested_by": "Stoupy51", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Posez des mines qui disparaissent et clignotent aléatoirement pour indiquer leur position\n"},{"text":"Soyez le dernier survivant en mémorisant leur position\n"}],
			"EN": [{"text":"Lay mines that vanish and blink randomly to indicate their\n"},{"text":"position. So be the last survivor by memorizing their position.\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"fish_fight", "Name":"Fish Fight",
		"estimated_time": "2-4 mins", "inspiration": "Findus", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"FR": [{"text":"Éjectez vos adversaires grâce à votre poisson\n"},{"text":"et votre dexterité afin de remporter la victoire !\n"}],
			"EN": [{"text":"Eject your opponents with your fish\n"},{"text":"and your dexterity to claim victory!\n"}]
		},
	},
	{
		"min_players":1, "max_players":-1, "id":"one_shot", "Name":"One Shot",
		"estimated_time": "2-4 mins", "inspiration": "OneShot", "suggested_by": "Luxio", "developed_by": "Luxio",
		"description": {
			"FR": [{"text":"Éliminez vos adversaires grâce à votre arc\n"},{"text":"surpuissant et votre épée pour remporter la victoire !\n"}],
			"EN": [{"text":"Eliminate your opponents with your\n"},{"text":"powerful bow and sword to claim victory!\n"}]
		},
	},
	{
		"min_players":4, "max_players":-1, "id":"pillars_of_fortune", "Name":"Pillars of Fortune",
		"estimated_time": "1-6 mins", "inspiration": "Cubecraft", "suggested_by": "TreekoZ", "developed_by": "Stoupy51",
		"description": {
			"FR": [{"text":"Recevez un item toutes les 2 secondes au sommet de\n"},{"text":"grand pilliers et tâchez de rester le dernier joueur en vie !\n"}],
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


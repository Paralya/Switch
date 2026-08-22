""" Declarative catalogue of every minigame and vote group, and the storage entries built from it.

MODES drives the vote message, the lore, the starting pop-ups and the stats objectives. A mode
generates even when its entry is commented out here: only its presence in the vote depends on it.
"""
# Imports
import json

from stewbeet import Mem, TextComponent, write_function
from stouputils.typing import JsonDict

from .spec import UNLIMITED, GroupSpec, Localized, ModeSpec

# Constants
GROUP_NAME_COLOR: str = "#FFCC00"
""" Between yellow and gold, distinguishes multi-game groups in the vote message. """

LANG_PRETEXT: dict[str, dict[str, str]] = {
	"fr": {"estimated_time": "Estimation :",	"inspiration": "Inspiration :",	"suggested": "Proposé par",		"developed": "Développé par"},
	"en": {"estimated_time": "Estimated:",		"inspiration": "Inspiration:",	"suggested": "Suggested by",	"developed": "Developed by"},
}
""" Lore labels for a single mode, per language. """

LANG_GROUP_PRETEXT: dict[str, dict[str, str]] = {
	"fr": {"includes": "Contient :",	"second_vote": "Un second vote départagera la variante"},
	"en": {"includes": "Includes:",		"second_vote": "A second vote will decide the variant"},
}
""" Extra lore labels for a multi-mode group, per language. """


# Minigames
MODES: tuple[ModeSpec, ...] = (
	ModeSpec(
		id="pitch_creep", name_fr="Pitch Creep", group="creepers",
		min_players=1, max_players=UNLIMITED,
		estimated_time="1m30s", inspiration="Pitchout/Épicube", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Survivez en repoussant les creepers", "dans une arène fermée."),
			en=("Survive by pushing away creepers", "in a closed arena."),
		),
	),
	ModeSpec(
		id="laser_game", name_fr="Laser Game",
		min_players=2, max_players=UNLIMITED,
		estimated_time="2m30s", inspiration="The physical world", suggested_by="Vigo", developed_by="Stoupy",
		description=Localized(
			fr=(
				"Affrontez l'équipe adverse grâce à vos fusils-laser et faites",
				"le plus d'élimination possible pendant un temps imparti !",
			),
			en=(
				"Battle the enemy team with your laser rifles and get",
				"as many takedowns as possible within the allotted time!",
			),
		),
	),
	ModeSpec(
		id="warden_escape", name_fr="Warden Escape",
		min_players=1, max_players=UNLIMITED,
		estimated_time="1m30s", inspiration="Minecraft 1.19", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Survivez aux wardens dans", "une arène fermée."),
			en=("Survive the wardens in", "a closed arena."),
		),
	),
	ModeSpec(
		id="pitchout", name_fr="Pitchout",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-5 mins", inspiration="Épicube", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Poussez vos adversaires dans l'eau", "et soyez le dernier survivant !"),
			en=("Push your opponents into the water", "and be the last survivor!"),
		),
	),
	ModeSpec(
		id="creeper_apocalypse", name_fr="Creeper Apocalypse", group="creepers",
		min_players=1, max_players=UNLIMITED,
		estimated_time="1m30s", inspiration="Expiration", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Survivez aux creepers qui se", "multiplient et explosent."),
			en=("Survive the creepers that", "duplicate and explode."),
		),
	),
	ModeSpec(
		id="traitors_game", name_fr="Traitors Game",
		min_players=4, max_players=UNLIMITED,
		estimated_time="4-10 mins", inspiration="Taupe Gun UHC", suggested_by="Luxio", developed_by="Stoupy",
		description=Localized(
			fr=(
				"Des traitres se cachent parmi les joueurs.",
				"Innocents contre Traitres, quel camp va-t-il gagner ?",
			),
			en=("Traitors are hinding among players.", "Innocents versus Traitors, which side will win?"),
		),
	),
	# ModeSpec(
	# 	id="boat_race", name_fr="Boat Race",
	# 	min_players=1, max_players=UNLIMITED,
	# 	estimated_time="3-8 mins", inspiration="Expiration", suggested_by="Stoupy", developed_by="LTHCTheMaster",
	# 	description=Localized(
	# 		fr=("Battez-vous pour atteindre la ligne d'arrivée", "en premier pour remporter la partie !"),
	# 		en=("Race for reaching the finish line", "in first to claim the win!"),
	# 	),
	# ),
	ModeSpec(
		id="spectres_game", name_fr="Spectres Game",
		min_players=2, max_players=UNLIMITED,
		estimated_time="4-10 mins", inspiration="Expiration", suggested_by="Luxio", developed_by="Stoupy",
		description=Localized(
			fr=(
				"Deux camps : un avec que des joueurs visibles,",
				"l'autre avec des spectres, quel camp va-t-il gagner ?",
			),
			en=("Two sides: one with visible players,", "the other with spectres, which side will win?"),
		),
	),
	ModeSpec(
		id="race", name_fr="Race",
		min_players=1, max_players=UNLIMITED,
		estimated_time="3-6 mins", inspiration="Racing games", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Battez-vous pour atteindre la ligne d'arrivée", "en premier pour remporter la partie !"),
			en=("Race for reaching the finish line", "in first to claim the win!"),
		),
	),
	ModeSpec(
		id="rush_the_point", name_fr="Rush The Point", group="ctpf",
		min_players=8, max_players=UNLIMITED,
		estimated_time="7-10 mins", inspiration="PluginLess", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Capturez les points centraux dans le vide", "avec vos classes spéciales."),
			en=("Capture the central points in the void", "with your special classes."),
		),
	),
	ModeSpec(
		id="rush_the_flag", name_fr="Rush The Flag", group="ctpf",
		min_players=8, max_players=UNLIMITED,
		estimated_time="5-10 mins", inspiration="PluginLess", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Volez le drapeau ennemi", "avec vos classes spéciales."),
			en=("Steal the enemy flag", "with your special classes."),
		),
	),
	ModeSpec(
		id="spleef", name_fr="Spleef",
		min_players=1, max_players=UNLIMITED,
		estimated_time="1-4 mins", inspiration="everywhere", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Creusez sous vos adversaires", "pour les faire tomber !"),
			en=("Dig below your opponents", "to make them fall!"),
		),
	),
	ModeSpec(
		id="de_a_coudre", name_fr="Dé à Coudre", group="a_coudre",
		min_players=1, max_players=UNLIMITED,
		estimated_time="3-6 mins", inspiration="OneCube point system", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Affrontez les autres joueurs dans un saut,", "dans une piscine, iconique de Minecraft !"),
			en=("Take on the other players in", "Minecraft's iconic pool jump!"),
		),
	),
	ModeSpec(
		id="feed_fast", name_fr="Feed Fast",
		min_players=1, max_players=UNLIMITED,
		estimated_time="60s", inspiration="Le diabète", suggested_by="Arobaze", developed_by="LTHCTheMaster",
		description=Localized(
			fr=("Mangez le plus de nourriture", "possible pour gagner !"),
			en=("Eat the most food", "possible to win!"),
		),
	),
	ModeSpec(
		id="mlg_a_coudre", name_fr="MLG à Coudre", group="a_coudre",
		min_players=1, max_players=8,
		estimated_time="1-6 mins", inspiration="Dé à Coudre", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Sautez et utilisez votre seau d'eau", "pour survivre à la chute !"),
			en=("Jump and use your water bucket", "to survive the fall!"),
		),
	),
	ModeSpec(
		id="protect_the_king", name_fr="Protect The King",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-4 mins", inspiration="Charlemagne", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Tuez le roi ennemi ou", "protégez le vôtre !"),
			en=("Kill the enemy king or", "protect your own!"),
		),
	),
	ModeSpec(
		id="castagne", name_fr="Castagne RP",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-5 mins", inspiration="Domestic Violence", suggested_by="JustNoob", developed_by="Stoupy",
		description=Localized(
			fr=("Battez-vous au corps à corps", "et soyez le dernier survivant !"),
			en=("Fight hand-to-hand combat", "and be the last survivor!"),
		),
	),
	ModeSpec(
		id="layers_2_teams", name_fr="Layers 2 Teams", group="layers",
		min_players=2, max_players=UNLIMITED,
		estimated_time="4-10 mins", inspiration="PenguinGames", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Équipez-vous rapidement et détruisez", "l'équipe adverse située de l'autre côté du mur !"),
			en=("Gear up quickly and destroy the enemy team", "on the other side of the wall!"),
		),
	),
	ModeSpec(
		id="layers_4_teams", name_fr="Layers 4 Teams", group="layers",
		min_players=4, max_players=UNLIMITED,
		estimated_time="4-10 mins", inspiration="PenguinGames", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Course d'équipement entre", "4 équipes, éliminez vos ennemis !"),
			en=("Equipment race between", "4 teams, eliminate your enemies!"),
		),
	),
	ModeSpec(
		id="thunder_spear", name_fr="Thunder Spear",
		min_players=2, max_players=UNLIMITED,
		estimated_time="2m30s", inspiration="SNK/Attack On Titan", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Utilisez votre équipement tridimensionnel", "et vos lances explosives !"),
			en=("Use your three-dimensional maneuver gear", "and explosive spears!"),
		),
	),
	ModeSpec(
		id="tnt_run", name_fr="TNT Run",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-4 mins", inspiration="Grian (2013)", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Restez en mouvement, les blocs", "disparaissent sous vos pieds !"),
			en=("Keep moving, blocks disappear", "under your feet!"),
		),
	),
	ModeSpec(
		id="sheepwars", name_fr="SheepWars",
		min_players=2, max_players=UNLIMITED,
		estimated_time="2-6 mins", inspiration="Épicube", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Lancez des moutons explosifs", "sur l'équipe ennemie !"),
			en=("Launch explosive sheep", "at the enemy team!"),
		),
	),
	ModeSpec(
		id="block_party", name_fr="Block Party",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-5 mins", inspiration="HiveMC", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Quand la musique s'arrête,", "trouvez la bonne couleur !"),
			en=("When the music stops,", "find the right color!"),
		),
	),
	ModeSpec(
		id="moutron", name_fr="Moutron",
		min_players=2, max_players=16,
		estimated_time="1-3 mins", inspiration="Épicube", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Montez un mouton qui laisse", "une traînée mortelle !"),
			en=("Ride a sheep that leaves", "a deadly trail!"),
		),
	),
	ModeSpec(
		id="snowball_painter", name_fr="Snowball Painter",
		min_players=2, max_players=45,
		estimated_time="45s", inspiration="Party Games/Hypixel", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Peignez le plus de blocs possible", "avec vos boules de neige !"),
			en=("Paint the most blocks possible", "with your snowballs!"),
		),
	),
	ModeSpec(
		id="gay_shooter", name_fr="Guy Shooter",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-5 mins", inspiration="a Survisland Event", suggested_by="GoldVision & scartvol", developed_by="Stoupy",
		description=Localized(
			fr=("Archers contre grimpeurs :", "empêchez-les d'atteindre le sommet !"),
			en=("Archers versus climbers:", "prevent them from reaching the top!"),
		),
	),
	ModeSpec(
		id="build_battle", name_fr="Build Battle",
		min_players=2, max_players=UNLIMITED,
		estimated_time="5-7 mins", inspiration="Hypixel", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Construisez sur un thème", "et votez pour le meilleur build !"),
			en=("Build on a theme and", "vote for the best build!"),
		),
	),
	ModeSpec(
		id="beat_the_kings", name_fr="Beat The Kings",
		min_players=2, max_players=UNLIMITED,
		estimated_time="3-5 mins", inspiration="Henry IV/Louis XVI", suggested_by="Luxio", developed_by="Luxio",
		description=Localized(
			fr=("Révolutionnaires contre rois :", "qui survivra à la bataille ?"),
			en=("Revolutionaries versus kings:", "who will survive the battle?"),
		),
	),
	ModeSpec(
		id="coin_chaser", name_fr="Coin Chaser",
		min_players=1, max_players=UNLIMITED,
		estimated_time="1m30s", inspiration="Expiration", suggested_by="Ikinox", developed_by="Stoupy",
		description=Localized(
			fr=("Collectez le plus d'or possible", "avec vos élytras !"),
			en=("Collect the most gold possible", "with your elytra!"),
		),
	),
	ModeSpec(
		id="murder_mystery", name_fr="Murder Mystery",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-4 mins", inspiration="Hypixel", suggested_by="GoldVision", developed_by="Stoupy",
		description=Localized(
			fr=("Un meurtrier, un détective,", "et des innocents dans une map pleine d'or !"),
			en=("A murderer, a detective,", "and innocents in a map full of gold!"),
		),
	),
	ModeSpec(
		id="panic_chase", name_fr="Panic Chase",
		min_players=4, max_players=UNLIMITED,
		estimated_time="1-2 mins", inspiration="Le chat et la souris", suggested_by="Arti", developed_by="Stoupy",
		description=Localized(
			fr=("Survivez aux chasseurs dans", "une petite arène fermée !"),
			en=("Survive the hunters in", "a small closed arena!"),
		),
	),
	ModeSpec(
		id="simultaneous_jump", name_fr="Simultaneous Jump", group="a_coudre",
		min_players=1, max_players=UNLIMITED,
		estimated_time="60s", inspiration="Dé à Coudre/MLG à Coudre", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Dé à coudre ou MLG à coudre,", "mais tout le monde saute en même temps !"),
			en=("Pool jump or MLG water bucket,", "but everyone jumps at the same time!"),
		),
	),
	ModeSpec(
		id="bombardement", name_fr="Bombardment",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-2 mins", inspiration="Hypixel", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Esquivez les tirs de ce bâteau volant", "afin d'être le dernier survivant !"),
			en=("Dodge the shots from this flying boat", "to be the last survivor!"),
		),
	),
	ModeSpec(
		id="shoot_da_sheep", name_fr="Shoot Da'Sheep",
		min_players=1, max_players=UNLIMITED,
		estimated_time="60s", inspiration="BrawlMC", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=(
				"Des moutons tombent du ciel, certains donnent plus de points",
				"que d'autres, ayez le plus de points à la fin !",
			),
			en=(
				"Sheeps are falling from the sky, some give more points",
				"than others, get the most points at the end!",
			),
		),
	),
	ModeSpec(
		id="minigolf", name_fr="MiniGolf",
		min_players=1, max_players=UNLIMITED,
		estimated_time="1-4 mins", inspiration="The physical world", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Soyez celui qui réussi à faire tomber sa balle dans", "le trou avec le moins de coup possible !"),
			en=("Be the one to drop your golf ball in", "the hole with the fewest strokes possible!"),
		),
	),
	ModeSpec(
		id="cigogne", name_fr="Cigogne",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-4 mins", inspiration="ShoupZ/JustNoob", suggested_by="GoldVision", developed_by="Stoupy",
		description=Localized(
			fr=("Combat de spectres puissants", "dans une salle fermée !"),
			en=("Powerful spectres battle", "in a closed room!"),
		),
	),
	ModeSpec(
		id="infected", name_fr="Infected",
		min_players=8, max_players=UNLIMITED,
		estimated_time="5-10 mins", inspiration="ImagineYourCraft (2013)", suggested_by="the whole Earth", developed_by="Stoupy",
		description=Localized(
			fr=(
				"Un infecté est choisi en début de partie et doit infecter",
				"tous les humains qui doivent attendre les renforts !",
			),
			en=(
				"An infected person is chosen at the beginning of the game and",
				"must infect all humans who must wait for rescue!",
			),
		),
	),
	ModeSpec(
		id="glassrunner", name_fr="GlassRunner", group="ctpf",
		min_players=2, max_players=UNLIMITED,
		estimated_time="8-10 mins", inspiration="Épicube", suggested_by="AirDox", developed_by="AirDox",
		description=Localized(
			fr=(
				"Affrontez l'équipe adverse dans le ciel dans un",
				"CaptureThePoint assaisonné de multiples particularités",
			),
			en=(
				"Take on the opposing team in the sky in a",
				"CaptureThePoint seasoned with multiple special features",
			),
		),
	),
	ModeSpec(
		id="capture_the_flag", name_fr="Capture The Flag", group="ctpf",
		min_players=10, max_players=UNLIMITED,
		estimated_time="10-15 mins", inspiration="Aspiration", suggested_by="Oraclette", developed_by="Stoupy",
		description=Localized(
			fr=(
				"Deux équipes doivent s'affronter pour capturer",
				"le drapeau ennemi grâce à des",
				"classes spécifiques différentes",
			),
			en=("Two teams must compete to capture the enemy flag", "with the help of different specific classes"),
		),
	),
	ModeSpec(
		id="memory_mine", name_fr="Memory Mine",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-2 mins", inspiration="Pico Party", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Mémorisez la position des mines", "qui clignotent et disparaissent !"),
			en=("Memorize the position of mines", "that blink and disappear!"),
		),
	),
	ModeSpec(
		id="fish_fight", name_fr="Fish Fight",
		min_players=2, max_players=UNLIMITED,
		estimated_time="2-4 mins", inspiration="Findus", suggested_by="Luxio", developed_by="Luxio",
		description=Localized(
			fr=("Éjectez vos adversaires", "avec votre poisson !"),
			en=("Eject your opponents", "with your fish!"),
		),
	),
	ModeSpec(
		id="one_shot", name_fr="One Shot",
		min_players=2, max_players=10,
		estimated_time="2-4 mins", inspiration="OneShot", suggested_by="Luxio", developed_by="Luxio",
		description=Localized(
			fr=(
				"Éliminez vos adversaires grâce à votre arc",
				"surpuissant et votre épée pour remporter la victoire !",
			),
			en=("Eliminate your opponents with your", "powerful bow and sword to claim victory!"),
		),
	),
	ModeSpec(
		id="pillars_of_fortune", name_fr="Pillars of Fortune",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-6 mins", inspiration="Cubecraft", suggested_by="TreekoZ", developed_by="Stoupy",
		description=Localized(
			fr=("Recevez des objets aléatoires", "sur de grands piliers !"),
			en=("Receive random items", "on large pillars!"),
		),
	),
	ModeSpec(
		id="fireblast", name_fr="Fireblast",
		min_players=2, max_players=UNLIMITED,
		estimated_time="1-2 mins", inspiration="LifeCraft", suggested_by="Stoupy", developed_by="Stoupy",
		description=Localized(
			fr=("Éjectez tous les joueurs de la plateforme", "en utilisant des boules de feu explosives !"),
			en=("Knock out every players from the platform", "by using explosive fireballs!"),
		),
	),
	# ModeSpec(
	# 	id="pvpswap", name_fr="PvPSwap",
	# 	min_players=2, max_players=32,
	# 	estimated_time="1-2 mins", inspiration="Épicube", suggested_by="Arobaze", developed_by="Arobaze",
	# 	description=Localized(
	# 		fr=("Éliminez les autres joueurs au travers", "des changements inopinés de positions !"),
	# 		en=("Eliminate other players through", "sudden changes in positions!"),
	# 	),
	# ),
)

# Vote groups: modes sharing a "group" show up as a single entry, and a second vote picks one
GROUPS: tuple[GroupSpec, ...] = (
	GroupSpec(
		id="a_coudre", name_fr="Dé À Coudre & Co", estimated_time="1-6 mins",
		description=Localized(
			fr=("Sautez dans la piscine, avec ou sans seau d'eau,", "tous en même temps ou chacun son tour !"),
			en=("Jump into the pool, with or without a water bucket,", "all at once or one at a time!"),
		),
	),
	GroupSpec(
		id="creepers", name_fr="Creepers", estimated_time="1m30s",
		description=Localized(
			fr=("Survivez aux creepers, en les repoussant", "ou en fuyant leurs explosions !"),
			en=("Survive the creepers, by pushing them away", "or fleeing their explosions!"),
		),
	),
	GroupSpec(
		id="layers", name_fr="Layers", estimated_time="4-10 mins",
		description=Localized(
			fr=("Équipez-vous rapidement et détruisez", "les équipes adverses !"),
			en=("Gear up quickly and destroy", "the enemy teams!"),
		),
	),
	GroupSpec(
		id="ctpf", name_fr="Capture the Point/Flag", estimated_time="5-15 mins",
		description=Localized(
			fr=("Affrontez l'équipe adverse : capturez des points,", "volez des drapeaux ou courez sur le verre !"),
			en=("Face off against the enemy team: capture points,", "steal flags or run across the glass!"),
		),
	),
)

GROUPS_BY_ID: dict[str, GroupSpec] = {group.id: group for group in GROUPS}
""" Lookup used when building the storage entry of a multi-mode group. """


# Functions
def mode_lore(mode: ModeSpec, lang: str) -> list[TextComponent]:
	""" Build the vote lore of one mode: title, description lines, then the four credit lines.

	Args:
		mode (ModeSpec): The mode to describe
		lang (str):      Language key, ex: "fr" or "en"
	Returns:
		list[TextComponent]: The lore, ready to be stored
	"""
	pretext: dict[str, str] = LANG_PRETEXT[lang]
	description: tuple[str, ...] = mode.description.fr if lang == "fr" else mode.description.en
	return [
		"",
		{"text": f"[{mode.name_fr}]\n", "color": "yellow"},
		*({"text": f"{line}\n"} for line in description),
		{"text": f"\n[{pretext['estimated_time']} {mode.estimated_time}]", "color": "gold"},
		{"text": f"\n[{pretext['inspiration']} {mode.inspiration}]", "color": "green"},
		{"text": f"\n[{pretext['suggested']} {mode.suggested_by}]", "color": "aqua"},
		{"text": f"\n[{pretext['developed']} {mode.developed_by}]", "color": "aqua"},
	]


def group_lore(group: GroupSpec, modes: tuple[ModeSpec, ...], lang: str) -> list[TextComponent]:
	""" Build the vote lore of a multi-mode group: title, description, duration, members, hint.

	Args:
		group (GroupSpec):          The group to describe
		modes (tuple[ModeSpec...]): Its members, in vote order
		lang  (str):                Language key, ex: "fr" or "en"
	Returns:
		list[TextComponent]: The lore, ready to be stored
	"""
	pretext: dict[str, str] = LANG_PRETEXT[lang]
	group_pretext: dict[str, str] = LANG_GROUP_PRETEXT[lang]
	description: tuple[str, ...] = group.description.fr if lang == "fr" else group.description.en
	included: str = ", ".join(mode.name_fr for mode in modes)
	return [
		"",
		{"text": f"[{group.name_fr}]\n", "color": GROUP_NAME_COLOR},
		*({"text": f"{line}\n"} for line in description),
		{"text": f"\n[{pretext['estimated_time']} {group.estimated_time}]", "color": "gold"},
		{"text": f"\n[{group_pretext['includes']} {included}]", "color": "green"},
		{"text": f"\n[{group_pretext['second_vote']}]", "color": "aqua"},
	]


def storage_max_players(max_players: int | None) -> int:
	""" Storage form of a player cap, where unlimited is -1.

	Args:
		max_players (int | None): The cap, or UNLIMITED
	Returns:
		int: The stored value

	Examples:
		>>> storage_max_players(UNLIMITED)
		-1
		>>> storage_max_players(8)
		8
	"""
	return -1 if max_players is None else max_players


def mode_entry(mode: ModeSpec, index: int) -> JsonDict:
	""" Storage entry of one mode, appended to the "minigames" list.

	Key insertion order is part of the generated output: an explicit group sits right after the
	id, a defaulted one is added last. Reordering rewrites every function file for nothing.

	Args:
		mode  (ModeSpec): The mode to store
		index (int):      Its 1-based rank, used by /rating and /coupdetat
	Returns:
		JsonDict: The entry
	"""
	entry: JsonDict = {
		"min_players": mode.min_players,
		"max_players": storage_max_players(mode.max_players),
		"id": mode.id,
	}
	if mode.group is not None:
		entry["group"] = mode.group
	entry["name_fr"] = mode.name_fr
	entry["estimated_time"] = mode.estimated_time
	entry["inspiration"] = mode.inspiration
	entry["suggested_by"] = mode.suggested_by
	entry["developed_by"] = mode.developed_by
	entry["lore_fr"] = mode_lore(mode, "fr")
	entry["lore_en"] = mode_lore(mode, "en")
	entry["index"] = index
	entry["index_hundred"] = index * 100
	entry["display_name_fr"] = {"text": mode.display_name("fr"), "color": "yellow"}
	entry["display_name_en"] = {"text": mode.display_name("en"), "color": "yellow"}
	if mode.group is None:
		entry["group"] = mode.id
	return entry


def group_entry(group_id: str, modes: tuple[ModeSpec, ...], index: int) -> JsonDict:
	""" Storage entry of one vote group, appended to the "groups" list.

	A group holding a single mode is the mode itself, so the first vote shows it directly.

	Args:
		group_id (str):                The group id, ex: "layers"
		modes    (tuple[ModeSpec...]): Its members, in vote order
		index    (int):                Its 1-based rank
	Returns:
		JsonDict: The entry
	"""
	if len(modes) == 1:
		mode: ModeSpec = modes[0]
		return {
			"min_players": mode.min_players,
			"max_players": storage_max_players(mode.max_players),
			"id": group_id,
			"name_fr": mode.name_fr,
			"name_en": mode.display_name("en"),
			"display_name_fr": {"text": mode.display_name("fr"), "color": "yellow"},
			"display_name_en": {"text": mode.display_name("en"), "color": "yellow"},
			"lore_fr": mode_lore(mode, "fr"),
			"lore_en": mode_lore(mode, "en"),
			"index": index,
		}

	group: GroupSpec = GROUPS_BY_ID[group_id]
	bounded: list[int] = [mode.max_players for mode in modes if mode.max_players is not None]
	return {
		"min_players": min(mode.min_players for mode in modes),
		"max_players": max(bounded) if len(bounded) == len(modes) else -1,
		"id": group_id,
		"name_fr": group.name_fr,
		"name_en": group.display_name("en"),
		"display_name_fr": {"text": group.name_fr, "color": GROUP_NAME_COLOR},
		"display_name_en": {"text": group.display_name("en"), "color": GROUP_NAME_COLOR},
		"lore_fr": group_lore(group, modes, "fr"),
		"lore_en": group_lore(group, modes, "en"),
		"index": index,
	}


def grouped_modes() -> dict[str, tuple[ModeSpec, ...]]:
	""" Modes bucketed by vote group, keeping the declaration order of MODES.

	Returns:
		dict[str, tuple[ModeSpec, ...]]: Group id -> its members
	"""
	members: dict[str, list[ModeSpec]] = {}
	for mode in MODES:
		members.setdefault(mode.vote_group, []).append(mode)
	return {group_id: tuple(modes) for group_id, modes in members.items()}


def write_modes_load_file() -> None:
	""" Write switch:modes/load, which fills the minigames and groups storage lists. """
	ns: str = Mem.ctx.project_id
	lines: list[str] = [
		f"data modify storage {ns}:main minigames append value " + json.dumps(mode_entry(mode, index), ensure_ascii=False)
		for index, mode in enumerate(MODES, start=1)
	]
	lines.append("\n# Voting groups (the first vote shows groups, a second vote decides between the games of the winning group)")
	lines.append(f"data modify storage {ns}:main groups set value []")
	lines += [
		f"data modify storage {ns}:main groups append value " + json.dumps(group_entry(group_id, modes, index), ensure_ascii=False)
		for index, (group_id, modes) in enumerate(grouped_modes().items(), start=1)
	]
	write_function(f"{ns}:modes/load", "\n".join(lines))


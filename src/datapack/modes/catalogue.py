""" The minigames and vote groups of the server, as one declarative table.

A mode generates even when its entry sits in DISABLED_MODES: only its presence in MODES puts it in the vote.
Kept as a single table on purpose, so one Ctrl+F finds any game.
"""
# Imports
from .spec import UNLIMITED, GroupSpec, Localized, ModeSpec, RoleSpec

# Constants
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
		accent="#4fbf3a",
		rules=Localized(
			fr=("Repoussez les creepers qui approchent", "Survivez jusqu'à la fin du temps"),
			en=("Push back the creepers closing in", "Survive until the time runs out"),
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
		accent="#2ee6d6",
		rules=Localized(
			fr=("Tirez sur les ennemis et les bases bonus", "L'équipe avec le plus de points gagne"),
			en=("Shoot the enemies and the bonus bases", "The team with the most points wins"),
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
		accent="#1fa3a8",
		rules=Localized(
			fr=("Restez discrets : les wardens écoutent", "Soyez le dernier en vie"),
			en=("Stay quiet: the wardens are listening", "Be the last one alive"),
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
		accent="#3d8bff",
		rules=Localized(
			fr=("Poussez les autres joueurs dans l'eau", "Soyez le dernier en vie"),
			en=("Push the other players into the water", "Be the last one alive"),
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
		accent="#e2452f",
		rules=Localized(
			fr=("Les creepers se dupliquent sans cesse", "Survivez à leurs explosions"),
			en=("The creepers keep duplicating", "Survive their explosions"),
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
		accent="#b3262e",
		rules=Localized(
			fr=("Des traîtres se cachent parmi vous", "Votre rôle arrive dans quelques secondes", "Innocents contre traîtres"),
			en=("Traitors are hiding among you", "Your role comes in a few seconds", "Innocents versus traitors"),
		),
		roles=(
			RoleSpec(id="inspector", name=Localized(fr=("Inspecteur",), en=("Inspector",)), color="#55ff55",
				goal=Localized(fr=("Démasquez les traîtres",), en=("Unmask the traitors",))),
			RoleSpec(id="innocent", name=Localized(fr=("Innocent",), en=("Innocent",)), color="#55ff55",
				goal=Localized(fr=("Trouvez et tuez les traîtres",), en=("Find and kill the traitors",))),
			RoleSpec(id="ninja", name=Localized(fr=("Ninja",), en=("Ninja",)), color="#55ff55",
				goal=Localized(fr=("Plus rapide, avec une seconde vie",), en=("Faster, with a second life",))),
			RoleSpec(id="traitor", name=Localized(fr=("Traître",), en=("Traitor",)), color="#ff5555",
				goal=Localized(fr=("Éliminez tous les innocents",), en=("Kill every innocent",))),
			RoleSpec(id="big_traitor", name=Localized(fr=("Gros Traître",), en=("Big Traitor",)), color="#e03030",
				goal=Localized(fr=("Éliminez tout le monde, traîtres compris",), en=("Kill everyone, traitors included",))),
			RoleSpec(id="floupy", name=Localized(fr=("Floupy",), en=("Floupy",)), color="#ffff55",
				goal=Localized(fr=("Volez le rôle de votre première victime",), en=("Steal the role of your first kill",))),
		),
	),
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
		accent="#8f7bff",
		rules=Localized(
			fr=("Un tiers des joueurs : spectres invisibles", "Ils laissent des gouttes d'eau sans sneak", "Chaque camp doit éliminer l'autre"),
			en=("A third of the players: invisible spectres", "They drip water unless they sneak", "Each side must wipe out the other"),
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
		accent="#ffb020",
		rules=Localized(
			fr=("Finissez la course le plus vite possible", "Le premier arrivé gagne"),
			en=("Finish the race as fast as you can", "First to arrive wins"),
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
		accent="#ff7a1a",
		rules=Localized(
			fr=("Capturez tous les points de la map", "Choisissez un kit pour votre équipe", "Le meilleur score gagne"),
			en=("Capture every point of the map", "Pick a kit for your team", "The best score wins"),
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
		accent="#e84a5f",
		rules=Localized(
			fr=("Volez le drapeau ennemi", "Ramenez-le jusqu'à votre base", "Choisissez bien votre kit"),
			en=("Steal the enemy flag", "Bring it back to your base", "Pick your kit wisely"),
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
		accent="#7fd4ff",
		rules=Localized(
			fr=("Creusez sous les pieds des autres", "Soyez le dernier survivant"),
			en=("Dig under the other players' feet", "Be the last survivor"),
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
		accent="#27c4f5",
		rules=Localized(
			fr=("Sautez dans la piscine, chacun son tour", "Visez l'eau entourée de blocs", "Marquez le plus de points"),
			en=("Jump into the pool, one at a time", "Aim for water surrounded by blocks", "Score the most points"),
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
		accent="#f2913d",
		rules=Localized(
			fr=("Mangez les aliments les plus nourrissants", "Marquez le plus de points"),
			en=("Eat the most filling foods", "Score the most points"),
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
		accent="#35b6e6",
		rules=Localized(
			fr=("Sautez dans le vide", "Posez votre seau d'eau avant le sol"),
			en=("Jump into the void", "Place your water bucket before landing"),
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
		accent="#f5c542",
		rules=Localized(
			fr=("Deux équipes, un roi chacune", "Protégez le vôtre", "Tuez le roi ennemi pour gagner"),
			en=("Two teams, one king each", "Protect yours", "Kill the enemy king to win"),
		),
		roles=(
			RoleSpec(id="red_king", name=Localized(fr=("Roi rouge",), en=("Red King",)), color="#ff5555",
				goal=Localized(fr=("Restez en vie, votre équipe vous protège",), en=("Stay alive, your team protects you",))),
			RoleSpec(id="blue_king", name=Localized(fr=("Roi bleu",), en=("Blue King",)), color="#5f7fff",
				goal=Localized(fr=("Restez en vie, votre équipe vous protège",), en=("Stay alive, your team protects you",))),
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
		accent="#c0392b",
		rules=Localized(
			fr=("Chacun pour soi, au corps à corps", "Soyez le dernier en vie"),
			en=("Free for all, hand to hand", "Be the last one alive"),
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
		accent="#9b59b6",
		rules=Localized(
			fr=("Équipez-vous le plus vite possible", "Puis éliminez l'équipe derrière le mur"),
			en=("Gear up as fast as you can", "Then wipe out the team behind the wall"),
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
		accent="#d35fb7",
		rules=Localized(
			fr=("Quatre équipes s'équipent en même temps", "Éliminez toutes les autres"),
			en=("Four teams gear up at the same time", "Wipe out all the others"),
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
		accent="#ffe14d",
		rules=Localized(
			fr=("Tuez avec vos lances foudroyantes", "Esquivez grâce à l'équipement 3D", "Le plus de kills gagne"),
			en=("Kill with your thunder spears", "Dodge with your 3D gear", "Most kills wins"),
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
		accent="#e33b2e",
		rules=Localized(
			fr=("Ne vous arrêtez jamais de courir", "Les blocs disparaissent sous vos pieds", "100 blocs détruits = 1 dash"),
			en=("Never stop running", "Blocks vanish under your feet", "100 blocks destroyed = 1 dash"),
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
		accent="#f08ac0",
		rules=Localized(
			fr=("Lancez vos moutons spéciaux", "Exterminez l'équipe ennemie"),
			en=("Launch your special sheep", "Wipe out the enemy team"),
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
		accent="#c94cf0",
		rules=Localized(
			fr=("Rejoignez la couleur indiquée", "Avant la fin du temps imparti"),
			en=("Reach the announced colour", "Before the time runs out"),
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
		accent="#39d98a",
		rules=Localized(
			fr=("Votre mouton laisse une traînée mortelle", "Évitez tous les obstacles", "Survivez le plus longtemps"),
			en=("Your sheep leaves a deadly trail", "Avoid every obstacle", "Survive the longest"),
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
		accent="#6c8cff",
		rules=Localized(
			fr=("Peignez le tableau à la boule de neige", "Le plus de blocs peints gagne"),
			en=("Paint the board with your snowballs", "Most painted blocks wins"),
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
		accent="#8e6bd8",
		rules=Localized(
			fr=("Les coureurs grimpent la tour", "Les tireurs les en empêchent"),
			en=("Runners climb the tower", "Shooters stop them"),
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
		accent="#f0a04b",
		rules=Localized(
			fr=("Votez pour le thème dans votre inventaire", "Construisez, puis notez les autres"),
			en=("Vote for the theme in your inventory", "Build, then rate the others"),
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
		accent="#e0732b",
		rules=Localized(
			fr=("Des rois peu nombreux mais puissants", "Contre des civils en surnombre", "Exterminez l'équipe ennemie"),
			en=("A few powerful kings", "Against outnumbering civilians", "Wipe out the enemy team"),
		),
		roles=(
			RoleSpec(id="civil", name=Localized(fr=("Civil",), en=("Civilian",)), color="#55ff55",
				goal=Localized(fr=("Renversez les rois",), en=("Overthrow the kings",))),
			RoleSpec(id="king", name=Localized(fr=("Roi",), en=("King",)), color="#ffcc33",
				goal=Localized(fr=("Exterminez tous les civils",), en=("Wipe out every civilian",))),
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
		accent="#ffd447",
		rules=Localized(
			fr=("Volez avec vos ailes et votre équipement 3D", "Ramassez le plus d'or possible"),
			en=("Fly with your wings and your 3D gear", "Collect as much gold as you can"),
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
		accent="#9e1b32",
		rules=Localized(
			fr=("Un meurtrier, un détective, des innocents", "Votre rôle va vous être donné"),
			en=("A murderer, a detective, innocents", "Your role is about to be given"),
		),
		roles=(
			RoleSpec(id="innocent", name=Localized(fr=("Innocent",), en=("Innocent",)), color="#55ff55",
				goal=Localized(fr=("Survivez jusqu'à la fin",), en=("Survive until the end",))),
			RoleSpec(id="detective", name=Localized(fr=("Détective",), en=("Detective",)), color="#55ffff",
				goal=Localized(fr=("Abattez le meurtrier à l'arc",), en=("Shoot the murderer with your bow",))),
			RoleSpec(id="murderer", name=Localized(fr=("Meurtrier",), en=("Murderer",)), color="#ff5555",
				goal=Localized(fr=("Tuez tout le monde sans vous faire voir",), en=("Kill everyone without being seen",))),
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
		accent="#ff5d73",
		rules=Localized(
			fr=("Les souris fuient, les chasseurs chassent", "Les souris ne peuvent pas frapper", "Tenez jusqu'à la fin du temps"),
			en=("Mice run, hunters hunt", "Mice cannot hit back", "Hold on until the time runs out"),
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
		accent="#1fb6ff",
		rules=Localized(
			fr=("Tout le monde saute en même temps", "Visez l'eau entourée de blocs", "Le PvP est activé"),
			en=("Everyone jumps at the same time", "Aim for water surrounded by blocks", "PvP is on"),
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
		accent="#4f79d8",
		rules=Localized(
			fr=("Esquivez les boulets de canon", "Ne tombez pas dans l'eau", "Soyez le dernier survivant"),
			en=("Dodge the cannonballs", "Do not fall into the water", "Be the last survivor"),
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
		accent="#7bd651",
		rules=Localized(
			fr=("Tirez sur les moutons qui tombent du ciel", "Certains rapportent plus de points"),
			en=("Shoot the sheep falling from the sky", "Some are worth more points"),
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
		accent="#4cc26e",
		rules=Localized(
			fr=("Rentrez la balle dans le trou", "Avec le moins de coups possible"),
			en=("Get the ball into the hole", "In as few strokes as possible"),
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
		accent="#a8b4ff",
		rules=Localized(
			fr=("Tout le monde est invisible", "Marcher sans sneak laisse des gouttes", "5 secondes de sneak vous font briller"),
			en=("Everyone is invisible", "Walking without sneaking drips water", "5 seconds of sneaking makes you glow"),
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
		accent="#7a9a3a",
		rules=Localized(
			fr=("Un joueur au hasard devient infecté", "Humains : survivez jusqu'à la fin", "Zombies : infectez tout le monde"),
			en=("A random player becomes infected", "Humans: survive until the end", "Zombies: infect everyone"),
		),
		roles=(
			RoleSpec(id="human", name=Localized(fr=("Humain",), en=("Human",)), color="#ff55ff",
				goal=Localized(fr=("Survivez jusqu'à la fin",), en=("Survive until the end",))),
			RoleSpec(id="zombie", name=Localized(fr=("Zombie",), en=("Zombie",)), color="#4fcf4f",
				goal=Localized(fr=("Infectez tous les humains",), en=("Infect every human",))),
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
		accent="#54c8e8",
		rules=Localized(
			fr=("Capturez les points pour marquer", "Votre inventaire est une boutique", "Elle se paie en niveaux d'xp"),
			en=("Capture the points to score", "Your inventory is a shop", "It is paid in xp levels"),
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
		accent="#3f7fe0",
		rules=Localized(
			fr=("Capturez le drapeau ennemi", "Choisissez votre classe"),
			en=("Capture the enemy flag", "Pick your class"),
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
		accent="#ff9b3d",
		rules=Localized(
			fr=("Rejoignez le cercle à chaque apparition", "Évitez les mines posées par les joueurs"),
			en=("Reach the circle every time it appears", "Avoid the mines players lay"),
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
		accent="#ff8c5a",
		rules=Localized(
			fr=("Expulsez les autres avec votre poisson", "Soyez le dernier en vie"),
			en=("Knock the others out with your fish", "Be the last one alive"),
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
		accent="#e8c170",
		rules=Localized(
			fr=("Un arc surpuissant et une épée", "Atteignez l'objectif de kills en premier"),
			en=("An overpowered bow and a sword", "Be first to reach the kill goal"),
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
		accent="#b388ff",
		rules=Localized(
			fr=("Chacun sur son pilier", "Vous recevez des objets aléatoires", "Soyez le dernier en vie"),
			en=("Everyone on their own pillar", "You receive random items", "Be the last one alive"),
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
		accent="#ff6a2b",
		rules=Localized(
			fr=("Éjectez les autres de la plateforme", "Avec des boules de feu explosives", "Soyez le dernier en vie"),
			en=("Knock the others off the platform", "With explosive fireballs", "Be the last one alive"),
		),
	),
)

DISABLED_MODES: tuple[ModeSpec, ...] = (
	ModeSpec(
		id="boat_race", name_fr="Boat Race",
		min_players=1, max_players=UNLIMITED,
		estimated_time="3-8 mins", inspiration="Expiration", suggested_by="Stoupy", developed_by="LTHCTheMaster",
		description=Localized(
			fr=("Battez-vous pour atteindre la ligne d'arrivée", "en premier pour remporter la partie !"),
			en=("Race for reaching the finish line", "in first to claim the win!"),
		),
		accent="#3fa7d6",
		rules=Localized(
			fr=("Placez votre bateau et montez dedans", "Finissez la course en premier"),
			en=("Place your boat and get in", "Finish the race first"),
		),
	),
	ModeSpec(
		id="pvpswap", name_fr="PvPSwap",
		min_players=2, max_players=32,
		estimated_time="1-2 mins", inspiration="Épicube", suggested_by="Arobaze", developed_by="Arobaze",
		description=Localized(
			fr=("Éliminez les autres joueurs au travers", "des changements inopinés de positions !"),
			en=("Eliminate other players through", "sudden changes in positions!"),
		),
		accent="#d94f70",
		rules=Localized(
			fr=("Les positions s'échangent sans prévenir", "Éliminez les autres joueurs"),
			en=("Positions swap without warning", "Eliminate the other players"),
		),
	),
)
""" Minigames kept out of the vote: move an entry into MODES to enable it. """

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


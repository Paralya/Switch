""" The lobby boards: jump leaderboards and the global statistics displays.

One entry per physical display in the lobby map, so moving a board means editing a single row.
"""
# Imports
from stewbeet import McFunction, Mem, write_function


def write_displays() -> None:
	""" Write switch:lobby/second, which refreshes every board once per second. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:lobby"

	# /second
	# Jump best times leaderboards: (x, y, z, jump key, display uuid)
	jump_displays: list[tuple[int, float, int, str, str]] = [
		(-8, 81.5, -22, "green", "20180612-2024-2025-2026-201000000001"),
		(22, 88.5, 0, "white", "20180612-2024-2025-2026-201000000002"),
		(0, 81.5, -39, "blue", "20180612-2024-2025-2026-201000000003"),
		(33, 83.5, 47, "dripstone", "20180612-2024-2025-2026-201000000004"),
		(63, 88.5, 10, "yellow", "20180612-2024-2025-2026-201000000005"),
		(-26, 91.5, 15, "red", "20180612-2024-2025-2026-201000000006"),
		(44, 86.5, 82, "duality", "20180612-2024-2025-2026-201000000007"),
		(-44, 93.5, 27, "pink", "20180612-2024-2025-2026-201000000008"),
		(-20, 75.5, -78, "brown", "20180612-2024-2025-2026-201000000009"),
		(-42, 94.5, 32, "purple", "20180612-2024-2025-2026-201000000010"),
		(-123, 79.5, -11, "bricks", "20180612-2024-2025-2026-201000000011"),
		(-83, 100.5, 71, "graviglitch", "20180612-2024-2025-2026-201000000012"),
		(36, 83.5, -73, "obsidian", "20180612-2024-2025-2026-201000000013"),
	]
	def board(x: float, y: float, z: float, path: str, uuid: str, distance: str, summon: str) -> McFunction:
		""" Lines keeping one display alive while a player is within `distance`, without any macro call per second.

		Macro functions cache only 8 argument sets, so one shared macro ticking every board was re-parsed for each of them.
		The kill leaves the score at 1 for one second, until the uuid check sees the display gone.
		"""
		state: str = f"#display_{path} {ns}.data"
		return f"""
execute if score {state} matches 1 unless entity {uuid} run scoreboard players set {state} 0
execute if score {state} matches 1 positioned {x} {y} {z} unless entity @a[distance={distance}] run kill {uuid}
execute unless score {state} matches 1 positioned {x} {y} {z} if entity @a[distance={distance}] run {summon}
""".strip()

	def stat_board(x: float, y: float, z: float, path: str, label: str, mode: int, uuid: str) -> str:
		""" Board of a stats storage path.

		Args:
			mode:  1 for a top 15 array seen from 12 blocks, 2 for a total seen from 24, 3 for a top 15 array seen from 24.
		"""
		summon: str = f'function {ns}:stats/display/summon {{path:"{path}",label:"{label}",uuid:"{uuid}",mode:{1 if mode == 3 else mode}}}'
		return board(x, y, z, path, uuid, "0.1..12" if mode == 1 else "0.1..24", summon)

	jump_display_lines: str = "\n".join(
		board(x, y, z, f"jump_{key}", uuid, "..64", f'function {ns}:stats/display/jump_times_summon {{jump:"{key}",path:"jump_{key}",label:"Best Times",uuid:"{uuid}"}}')
		for x, y, z, key, uuid in jump_displays
	)
	write_function(f"{path}/second", f"""
# If players in the lobby, show title action bar with the current game and number of players
function {ns}:player/detached_action_bar

# Prevent end gateway's beam
data modify block 34 82 47 Age set value 143L

# Jumps best times leaderboards
{jump_display_lines}

# Black holes (lobby and tutorial area)
execute positioned 0 69 0 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000001 run summon item_display ~ ~ ~ {{UUID:uuid("20180612-2024-2025-2026-000000000001"),item:{{id:"stone",count:1,components:{{"item_model":"{ns}:bg_black_hole"}}}},Tags:["{ns}.black_hole_lobby"],transformation:{{scale:[-300f,-200f,-300f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}},view_range:4.0f}}
execute positioned -500 69 -500 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000002 run summon item_display ~ ~ ~ {{UUID:uuid("20180612-2024-2025-2026-000000000002"),item:{{id:"stone",count:1,components:{{"item_model":"{ns}:bg_black_hole"}}}},Tags:["{ns}.black_hole_tutorial"],transformation:{{scale:[-100f,-100f,-100f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}},view_range:4.0f}}


### Minigames stats
## None
{stat_board(47.5, 70.5, -2, "all.modes.TODO2.total_games", "???", 2, "20180612-2024-2025-2026-101000000001")}
{stat_board(36.5, 70.5, 2, "all.modes.TODOO.total_games", "???", 2, "20180612-2024-2025-2026-101000000002")}
{stat_board(-80.5, 70.5, -2, "all.modes.TODO.total_games", "???", 2, "20180612-2024-2025-2026-101000000003")}

## Global
{stat_board(-5, 71.5, -15, "all.player.total_deaths", "Deaths", 3, "20180612-2024-2025-2026-102000000001")}
{stat_board(-5, 71.5, -18, "all.player.total_kills", "Kills", 3, "20180612-2024-2025-2026-102000000002")}
{stat_board(-3, 71.5, -20, "all.player.total_wins", "Victories", 3, "20180612-2024-2025-2026-102000000003")}
{stat_board(0, 71.5, -21, "all.player.played_win_ratio", "Win rate", 3, "20180612-2024-2025-2026-102000000004")}
{stat_board(3, 71.5, -20, "all.player.total_played", "Games played", 3, "20180612-2024-2025-2026-102000000005")}
{stat_board(5, 71.5, -18, "all.player.advancement_count", "Advancements", 3, "20180612-2024-2025-2026-102000000006")}
{stat_board(5, 71.5, -15, "all.player.total_money", "Current money", 3, "20180612-2024-2025-2026-102000000007")}


## Solo multiple winners
# Murder mystery
{stat_board(14.5, 70.5, -2, "all.modes.murder_mystery.total_games", "Murder Mystery", 2, "20180612-2024-2025-2026-103000000001")}
{stat_board(13, 70.5, -6, "all.modes.murder_mystery.played", "Games played", 1, "20180612-2024-2025-2026-103000000002")}
{stat_board(16, 70.5, -6, "all.modes.murder_mystery.wins", "Victories", 1, "20180612-2024-2025-2026-103000000003")}

# Pitch creep
{stat_board(25.5, 70.5, -2, "all.modes.pitch_creep.total_games", "Pitch Creep", 2, "20180612-2024-2025-2026-104000000001")}
{stat_board(24, 70.5, -6, "all.modes.pitch_creep.played", "Games played", 1, "20180612-2024-2025-2026-104000000002")}
{stat_board(27, 70.5, -6, "all.modes.pitch_creep.wins", "Victories", 1, "20180612-2024-2025-2026-104000000003")}

# Warden escape
{stat_board(36.5, 70.5, -2, "all.modes.warden_escape.total_games", "Warden Escape", 2, "20180612-2024-2025-2026-105000000001")}
{stat_board(35, 70.5, -6, "all.modes.warden_escape.played", "Games played", 1, "20180612-2024-2025-2026-105000000002")}
{stat_board(38, 70.5, -6, "all.modes.warden_escape.wins", "Victories", 1, "20180612-2024-2025-2026-105000000003")}

# Panic chase
{stat_board(47.5, 70.5, 2, "all.modes.panic_chase.total_games", "Panic Chase", 2, "20180612-2024-2025-2026-106000000001")}
{stat_board(49, 70.5, 6, "all.modes.panic_chase.played", "Games played", 1, "20180612-2024-2025-2026-106000000002")}
{stat_board(46, 70.5, 6, "all.modes.panic_chase.wins", "Victories", 1, "20180612-2024-2025-2026-106000000003")}

# Creeper apocalypse
{stat_board(25.5, 70.5, 2, "all.modes.creeper_apocalypse.total_games", "Creeper Apocalypse", 2, "20180612-2024-2025-2026-107000000001")}
{stat_board(27, 70.5, 6, "all.modes.creeper_apocalypse.played", "Games played", 1, "20180612-2024-2025-2026-107000000002")}
{stat_board(24, 70.5, 6, "all.modes.creeper_apocalypse.wins", "Victories", 1, "20180612-2024-2025-2026-107000000003")}

# Infected
{stat_board(14.5, 70.5, 2, "all.modes.infected.total_games", "Infected", 2, "20180612-2024-2025-2026-108000000001")}
{stat_board(16, 70.5, 6, "all.modes.infected.played", "Games played", 1, "20180612-2024-2025-2026-108000000002")}
{stat_board(13, 70.5, 6, "all.modes.infected.wins", "Victories", 1, "20180612-2024-2025-2026-108000000003")}

## Solo one winner
# Spleef
{stat_board(2, 70.5, 14.5, "all.modes.spleef.total_games", "Spleef", 2, "20180612-2024-2025-2026-109000000001")}
{stat_board(6, 70.5, 13, "all.modes.spleef.played", "Games played", 1, "20180612-2024-2025-2026-109000000002")}
{stat_board(6, 70.5, 16, "all.modes.spleef.wins", "Victories", 1, "20180612-2024-2025-2026-109000000003")}

# Dé à coudre
{stat_board(6, 70.5, 24, "all.modes.de_a_coudre.played", "Games played", 1, "20180612-2024-2025-2026-110000000001")}
{stat_board(2, 70.5, 25.5, "all.modes.de_a_coudre.total_games", "Dé à Coudre", 2, "20180612-2024-2025-2026-110000000002")}
{stat_board(6, 70.5, 27, "all.modes.de_a_coudre.wins", "Victories", 1, "20180612-2024-2025-2026-110000000003")}

# TNT run
{stat_board(2, 70.5, 36.5, "all.modes.tnt_run.total_games", "TNT Run", 2, "20180612-2024-2025-2026-111000000001")}
{stat_board(6, 70.5, 35, "all.modes.tnt_run.played", "Games played", 1, "20180612-2024-2025-2026-111000000002")}
{stat_board(6, 70.5, 38, "all.modes.tnt_run.wins", "Victories", 1, "20180612-2024-2025-2026-111000000003")}

# Block party
{stat_board(2, 70.5, 47.5, "all.modes.block_party.total_games", "Block Party", 2, "20180612-2024-2025-2026-112000000001")}
{stat_board(6, 70.5, 46, "all.modes.block_party.played", "Games played", 1, "20180612-2024-2025-2026-112000000002")}
{stat_board(6, 70.5, 49, "all.modes.block_party.wins", "Victories", 1, "20180612-2024-2025-2026-112000000003")}

# Snowball painter
{stat_board(2, 70.5, 58.5, "all.modes.snowball_painter.total_games", "Snowball Painter", 2, "20180612-2024-2025-2026-113000000001")}
{stat_board(6, 70.5, 57, "all.modes.snowball_painter.played", "Games played", 1, "20180612-2024-2025-2026-113000000002")}
{stat_board(6, 70.5, 60, "all.modes.snowball_painter.wins", "Victories", 1, "20180612-2024-2025-2026-113000000003")}

# Coin chaser
{stat_board(2, 70.5, 69.5, "all.modes.coin_chaser.total_games", "Coin Chaser", 2, "20180612-2024-2025-2026-114000000001")}
{stat_board(6, 70.5, 68, "all.modes.coin_chaser.played", "Games played", 1, "20180612-2024-2025-2026-114000000002")}
{stat_board(6, 70.5, 71, "all.modes.coin_chaser.wins", "Victories", 1, "20180612-2024-2025-2026-114000000003")}

# Bombardement
{stat_board(2, 70.5, 80.5, "all.modes.bombardement.total_games", "Bombardement", 2, "20180612-2024-2025-2026-115000000001")}
{stat_board(6, 70.5, 79, "all.modes.bombardement.played", "Games played", 1, "20180612-2024-2025-2026-115000000002")}
{stat_board(6, 70.5, 82, "all.modes.bombardement.wins", "Victories", 1, "20180612-2024-2025-2026-115000000003")}

# Minigolf
{stat_board(2, 70.5, 91.5, "all.modes.minigolf.total_games", "MiniGolf", 2, "20180612-2024-2025-2026-116000000001")}
{stat_board(6, 70.5, 90, "all.modes.minigolf.played", "Games played", 1, "20180612-2024-2025-2026-116000000002")}
{stat_board(6, 70.5, 93, "all.modes.minigolf.wins", "Victories", 1, "20180612-2024-2025-2026-116000000003")}

# MLG à coudre
{stat_board(2, 70.5, 102.5, "all.modes.mlg_a_coudre.total_games", "MLG à Coudre", 2, "20180612-2024-2025-2026-117000000001")}
{stat_board(6, 70.5, 101, "all.modes.mlg_a_coudre.played", "Games played", 1, "20180612-2024-2025-2026-117000000002")}
{stat_board(6, 70.5, 104, "all.modes.mlg_a_coudre.wins", "Victories", 1, "20180612-2024-2025-2026-117000000003")}

# Fish fight
{stat_board(2, 70.5, 113.5, "all.modes.fish_fight.total_games", "Fish Fight", 2, "20180612-2024-2025-2026-118000000001")}
{stat_board(6, 70.5, 112, "all.modes.fish_fight.played", "Games played", 1, "20180612-2024-2025-2026-118000000002")}
{stat_board(6, 70.5, 115, "all.modes.fish_fight.wins", "Victories", 1, "20180612-2024-2025-2026-118000000003")}

# Fireblast
{stat_board(2, 70.5, 124.5, "all.modes.fireblast.total_games", "Fireblast", 2, "20180612-2024-2025-2026-119000000001")}
{stat_board(6, 70.5, 123, "all.modes.fireblast.played", "Games played", 1, "20180612-2024-2025-2026-119000000002")}
{stat_board(6, 70.5, 126, "all.modes.fireblast.wins", "Victories", 1, "20180612-2024-2025-2026-119000000003")}
execute unless entity 20180612-2024-2025-2026-119000000004 run summon small_fireball 6 70.42 124.5 {{UUID:uuid("20180612-2024-2025-2026-119000000004")}}

# Race
{stat_board(2, 70.5, 135.5, "all.modes.race.total_games", "Race", 2, "20180612-2024-2025-2026-120000000001")}
{stat_board(6, 70.5, 134, "all.modes.race.played", "Games played", 1, "20180612-2024-2025-2026-120000000002")}
{stat_board(6, 70.5, 137, "all.modes.race.wins", "Victories", 1, "20180612-2024-2025-2026-120000000003")}

# One shot
{stat_board(-2, 70.5, 135.5, "all.modes.one_shot.total_games", "One Shot", 2, "20180612-2024-2025-2026-121000000001")}
{stat_board(-6, 70.5, 137, "all.modes.one_shot.played", "Games played", 1, "20180612-2024-2025-2026-121000000002")}
{stat_board(-6, 70.5, 134, "all.modes.one_shot.wins", "Victories", 1, "20180612-2024-2025-2026-121000000003")}

# Pillars of fortune
{stat_board(-2, 70.5, 124.5, "all.modes.pillars_of_fortune.total_games", " Pillars of Fortune ", 2, "20180612-2024-2025-2026-122000000001")}
{stat_board(-6, 70.5, 126, "all.modes.pillars_of_fortune.played", "Games played", 1, "20180612-2024-2025-2026-122000000002")}
{stat_board(-6, 70.5, 123, "all.modes.pillars_of_fortune.wins", "Victories", 1, "20180612-2024-2025-2026-122000000003")}

# Memory mine
{stat_board(-2, 70.5, 113.5, "all.modes.memory_mine.total_games", "Memory Mine", 2, "20180612-2024-2025-2026-123000000001")}
{stat_board(-6, 70.5, 115, "all.modes.memory_mine.played", "Games played", 1, "20180612-2024-2025-2026-123000000002")}
{stat_board(-6, 70.5, 112, "all.modes.memory_mine.wins", "Victories", 1, "20180612-2024-2025-2026-123000000003")}
execute if predicate {ns}:chance/0.25 run particle dust{{color:[1.0,0.0,0.0],scale:1.0}} -5 69.55 114 0 0 0 0 1 normal

# Cigogne
{stat_board(-2, 70.5, 102.5, "all.modes.cigogne.total_games", "Cigogne", 2, "20180612-2024-2025-2026-124000000001")}
{stat_board(-6, 70.5, 104, "all.modes.cigogne.played", "Games played", 1, "20180612-2024-2025-2026-124000000002")}
{stat_board(-6, 70.5, 101, "all.modes.cigogne.wins", "Victories", 1, "20180612-2024-2025-2026-124000000003")}

# Shoot da'sheep
{stat_board(-2, 70.5, 91.5, "all.modes.shoot_da_sheep.total_games", "Shoot Da\\'Sheep", 2, "20180612-2024-2025-2026-125000000001")}
{stat_board(-6, 70.5, 93, "all.modes.shoot_da_sheep.played", "Games played", 1, "20180612-2024-2025-2026-125000000002")}
{stat_board(-6, 70.5, 90, "all.modes.shoot_da_sheep.wins", "Victories", 1, "20180612-2024-2025-2026-125000000003")}

# Simultaneous jump
{stat_board(-2, 70.5, 80.5, "all.modes.simultaneous_jump.total_games", "Simultaneous Jump", 2, "20180612-2024-2025-2026-126000000001")}
{stat_board(-6, 70.5, 82, "all.modes.simultaneous_jump.played", "Games played", 1, "20180612-2024-2025-2026-126000000002")}
{stat_board(-6, 70.5, 79, "all.modes.simultaneous_jump.wins", "Victories", 1, "20180612-2024-2025-2026-126000000003")}

# Build battle
{stat_board(-2, 70.5, 69.5, "all.modes.build_battle.total_games", "Build Battle", 2, "20180612-2024-2025-2026-127000000001")}
{stat_board(-6, 70.5, 71, "all.modes.build_battle.played", "Games played", 1, "20180612-2024-2025-2026-127000000002")}
{stat_board(-6, 70.5, 68, "all.modes.build_battle.wins", "Victories", 1, "20180612-2024-2025-2026-127000000003")}

# Moutron
{stat_board(-2, 70.5, 58.5, "all.modes.moutron.total_games", "Moutron", 2, "20180612-2024-2025-2026-128000000001")}
{stat_board(-6, 70.5, 60, "all.modes.moutron.played", "Games played", 1, "20180612-2024-2025-2026-128000000002")}
{stat_board(-6, 70.5, 57, "all.modes.moutron.wins", "Victories", 1, "20180612-2024-2025-2026-128000000003")}

# Thunder spear
{stat_board(-2, 70.5, 47.5, "all.modes.thunder_spear.total_games", "Thunder Spear", 2, "20180612-2024-2025-2026-129000000001")}
{stat_board(-6, 70.5, 49, "all.modes.thunder_spear.played", "Games played", 1, "20180612-2024-2025-2026-129000000002")}
{stat_board(-6, 70.5, 46, "all.modes.thunder_spear.wins", "Victories", 1, "20180612-2024-2025-2026-129000000003")}

# Castagne
{stat_board(-2, 70.5, 36.5, "all.modes.castagne.total_games", "Castagne", 2, "20180612-2024-2025-2026-130000000001")}
{stat_board(-6, 70.5, 38, "all.modes.castagne.played", "Games played", 1, "20180612-2024-2025-2026-130000000002")}
{stat_board(-6, 70.5, 35, "all.modes.castagne.wins", "Victories", 1, "20180612-2024-2025-2026-130000000003")}

# Feed fast
{stat_board(-2, 70.5, 25.5, "all.modes.feed_fast.total_games", "Feed Fast", 2, "20180612-2024-2025-2026-131000000001")}
{stat_board(-6, 70.5, 27, "all.modes.feed_fast.played", "Games played", 1, "20180612-2024-2025-2026-131000000002")}
{stat_board(-6, 70.5, 24, "all.modes.feed_fast.wins", "Victories", 1, "20180612-2024-2025-2026-131000000003")}

# Pitchout
{stat_board(-2, 70.5, 14.5, "all.modes.pitchout.total_games", "Pitchout", 2, "20180612-2024-2025-2026-132000000001")}
{stat_board(-6, 70.5, 16, "all.modes.pitchout.played", "Games played", 1, "20180612-2024-2025-2026-132000000002")}
{stat_board(-6, 70.5, 13, "all.modes.pitchout.wins", "Victories", 1, "20180612-2024-2025-2026-132000000003")}


## Team VS Team
# Spectres game
{stat_board(-14.5, 70.5, 2, "all.modes.spectres_game.total_games", "Spectres Game", 2, "20180612-2024-2025-2026-133000000001")}
{stat_board(-13, 70.5, 6, "all.modes.spectres_game.played", "Games played", 1, "20180612-2024-2025-2026-133000000002")}
{stat_board(-16, 70.5, 6, "all.modes.spectres_game.wins", "Victories", 1, "20180612-2024-2025-2026-133000000003")}
particle dolphin -15 69.55 4 0.2 0 0.2 0 2 normal

# SheepWars
{stat_board(-25.5, 70.5, 2, "all.modes.sheepwars.total_games", "SheepWars", 2, "20180612-2024-2025-2026-134000000001")}
{stat_board(-24, 70.5, 6, "all.modes.sheepwars.played", "Games played", 1, "20180612-2024-2025-2026-134000000002")}
{stat_board(-27, 70.5, 6, "all.modes.sheepwars.wins", "Victories", 1, "20180612-2024-2025-2026-134000000003")}

# Rush the flag
{stat_board(-36.5, 70.5, 2, "all.modes.rush_the_flag.total_games", "Rush The Flag", 2, "20180612-2024-2025-2026-135000000001")}
{stat_board(-35, 70.5, 6, "all.modes.rush_the_flag.played", "Games played", 1, "20180612-2024-2025-2026-135000000002")}
{stat_board(-38, 70.5, 6, "all.modes.rush_the_flag.wins", "Victories", 1, "20180612-2024-2025-2026-135000000003")}

# Guy shooter
{stat_board(-46, 70.5, 6, "all.modes.gay_shooter.played", "Games played", 1, "20180612-2024-2025-2026-136000000001")}
{stat_board(-47.5, 70.5, 2, "all.modes.gay_shooter.total_games", "Guy Shooter", 2, "20180612-2024-2025-2026-136000000002")}
{stat_board(-49, 70.5, 6, "all.modes.gay_shooter.wins", "Victories", 1, "20180612-2024-2025-2026-136000000003")}

# Layers 4 teams
{stat_board(-58.5, 70.5, 2, "all.modes.layers_4_teams.total_games", "Layers 4 Teams", 2, "20180612-2024-2025-2026-137000000001")}
{stat_board(-57, 70.5, 6, "all.modes.layers_4_teams.played", "Games played", 1, "20180612-2024-2025-2026-137000000002")}
{stat_board(-60, 70.5, 6, "all.modes.layers_4_teams.wins", "Victories", 1, "20180612-2024-2025-2026-137000000003")}

# Beat the kings
{stat_board(-69.5, 70.5, 2, "all.modes.beat_the_kings.total_games", "Beat The Kings", 2, "20180612-2024-2025-2026-138000000001")}
{stat_board(-68, 70.5, 6, "all.modes.beat_the_kings.played", "Games played", 1, "20180612-2024-2025-2026-138000000002")}
{stat_board(-71, 70.5, 6, "all.modes.beat_the_kings.wins", "Victories", 1, "20180612-2024-2025-2026-138000000003")}

# GlassRunner
{stat_board(-80.5, 70.5, 2, "all.modes.glassrunner.total_games", "GlassRunner", 2, "20180612-2024-2025-2026-139000000001")}
{stat_board(-79, 70.5, 7, "all.modes.glassrunner.played", "Games played", 1, "20180612-2024-2025-2026-139000000002")}
{stat_board(-82, 70.5, 7, "all.modes.glassrunner.wins", "Victories", 1, "20180612-2024-2025-2026-139000000003")}
execute unless entity 20180612-2024-2025-2026-139000000004 run summon snowball -80.42 72.20 6.05 {{NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000004")}}
execute unless entity 20180612-2024-2025-2026-139000000005 run summon snowball -80.48 73.40 7.30 {{NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000005")}}

# Laser game
{stat_board(-69.5, 70.5, -2, "all.modes.laser_game.total_games", "Laser Game", 2, "20180612-2024-2025-2026-140000000001")}
{stat_board(-71, 70.5, -6, "all.modes.laser_game.played", "Games played", 1, "20180612-2024-2025-2026-140000000002")}
{stat_board(-68, 70.5, -6, "all.modes.laser_game.wins", "Victories", 1, "20180612-2024-2025-2026-140000000003")}

# Layers 2 teams
{stat_board(-58.5, 70.5, -2, "all.modes.layers_2_teams.total_games", "Layers 2 Teams", 2, "20180612-2024-2025-2026-141000000001")}
{stat_board(-60, 70.5, -6, "all.modes.layers_2_teams.played", "Games played", 1, "20180612-2024-2025-2026-141000000002")}
{stat_board(-57, 70.5, -6, "all.modes.layers_2_teams.wins", "Victories", 1, "20180612-2024-2025-2026-141000000003")}

# Protect the king
{stat_board(-47.5, 70.5, -2, "all.modes.protect_the_king.total_games", "Protect The King", 2, "20180612-2024-2025-2026-142000000001")}
{stat_board(-49, 70.5, -6, "all.modes.protect_the_king.played", "Games played", 1, "20180612-2024-2025-2026-142000000002")}
{stat_board(-46, 70.5, -6, "all.modes.protect_the_king.wins", "Victories", 1, "20180612-2024-2025-2026-142000000003")}

# Rush the point
{stat_board(-36.5, 70.5, -2, "all.modes.rush_the_point.total_games", "Rush The Point", 2, "20180612-2024-2025-2026-143000000001")}
{stat_board(-38, 70.5, -6, "all.modes.rush_the_point.played", "Games played", 1, "20180612-2024-2025-2026-143000000002")}
{stat_board(-35, 70.5, -6, "all.modes.rush_the_point.wins", "Victories", 1, "20180612-2024-2025-2026-143000000003")}

# Capture the flag
{stat_board(-25.5, 70.5, -2, "all.modes.capture_the_flag.total_games", "Capture The Flag", 2, "20180612-2024-2025-2026-144000000001")}
{stat_board(-27, 70.5, -6, "all.modes.capture_the_flag.played", "Games played", 1, "20180612-2024-2025-2026-144000000002")}
{stat_board(-24, 70.5, -6, "all.modes.capture_the_flag.wins", "Victories", 1, "20180612-2024-2025-2026-144000000003")}

# Traitors game
{stat_board(-14.5, 70.5, -2, "all.modes.traitors_game.total_games", "Traitors Game", 2, "20180612-2024-2025-2026-145000000001")}
{stat_board(-16, 70.5, -6, "all.modes.traitors_game.played", "Games played", 1, "20180612-2024-2025-2026-145000000002")}
{stat_board(-13, 70.5, -6, "all.modes.traitors_game.wins", "Victories", 1, "20180612-2024-2025-2026-145000000003")}
""")


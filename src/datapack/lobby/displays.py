""" The lobby boards: jump leaderboards and the global statistics displays.

One entry per physical display in the lobby map, so moving a board means editing a single row.
"""
# Imports
import math
from dataclasses import dataclass

from stewbeet import McFunction, Mem, write_function

# Constants
ALLEY_SEGMENT: int = 32
""" Length in blocks of the alley slices whose stat boards share one player check (about three games). """


# Classes
@dataclass(frozen=True)
class StatBoard:
	""" Text display of a stats storage path, alive only while a player is near it. """
	x: float
	y: float
	z: float
	path: str
	label: str
	mode: int
	""" 1 for a top 15 array seen from 12 blocks, 2 for a total seen from 24, 3 for a top 15 array seen from 24. """
	uuid: str

	@property
	def reach(self) -> int:
		return 12 if self.mode == 1 else 24

	@property
	def alley(self) -> str:
		""" Slice of the lobby alley holding the board, e.g. "x-2" for the third slice west of spawn. """
		axis: str = "x" if abs(self.x) > abs(self.z) else "z"
		return f"{axis}{math.floor((self.x if axis == 'x' else self.z) / ALLEY_SEGMENT)}"


STAT_BOARDS: list[StatBoard] = [
	# None
	StatBoard(x=47.5, y=70.5, z=-2, path="all.modes.TODO2.total_games", label="???", mode=2, uuid="20180612-2024-2025-2026-101000000001"),
	StatBoard(x=36.5, y=70.5, z=2, path="all.modes.TODOO.total_games", label="???", mode=2, uuid="20180612-2024-2025-2026-101000000002"),
	StatBoard(x=-80.5, y=70.5, z=-2, path="all.modes.TODO.total_games", label="???", mode=2, uuid="20180612-2024-2025-2026-101000000003"),

	# Global
	StatBoard(x=-5, y=71.5, z=-15, path="all.player.total_deaths", label="Deaths", mode=3, uuid="20180612-2024-2025-2026-102000000001"),
	StatBoard(x=-5, y=71.5, z=-18, path="all.player.total_kills", label="Kills", mode=3, uuid="20180612-2024-2025-2026-102000000002"),
	StatBoard(x=-3, y=71.5, z=-20, path="all.player.total_wins", label="Victories", mode=3, uuid="20180612-2024-2025-2026-102000000003"),
	StatBoard(x=0, y=71.5, z=-21, path="all.player.played_win_ratio", label="Win rate", mode=3, uuid="20180612-2024-2025-2026-102000000004"),
	StatBoard(x=3, y=71.5, z=-20, path="all.player.total_played", label="Games played", mode=3, uuid="20180612-2024-2025-2026-102000000005"),
	StatBoard(x=5, y=71.5, z=-18, path="all.player.advancement_count", label="Advancements", mode=3, uuid="20180612-2024-2025-2026-102000000006"),
	StatBoard(x=5, y=71.5, z=-15, path="all.player.total_money", label="Current money", mode=3, uuid="20180612-2024-2025-2026-102000000007"),

	# Solo multiple winners
	# Murder mystery
	StatBoard(x=14.5, y=70.5, z=-2, path="all.modes.murder_mystery.total_games", label="Murder Mystery", mode=2, uuid="20180612-2024-2025-2026-103000000001"),
	StatBoard(x=13, y=70.5, z=-6, path="all.modes.murder_mystery.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-103000000002"),
	StatBoard(x=16, y=70.5, z=-6, path="all.modes.murder_mystery.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-103000000003"),

	# Pitch creep
	StatBoard(x=25.5, y=70.5, z=-2, path="all.modes.pitch_creep.total_games", label="Pitch Creep", mode=2, uuid="20180612-2024-2025-2026-104000000001"),
	StatBoard(x=24, y=70.5, z=-6, path="all.modes.pitch_creep.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-104000000002"),
	StatBoard(x=27, y=70.5, z=-6, path="all.modes.pitch_creep.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-104000000003"),

	# Warden escape
	StatBoard(x=36.5, y=70.5, z=-2, path="all.modes.warden_escape.total_games", label="Warden Escape", mode=2, uuid="20180612-2024-2025-2026-105000000001"),
	StatBoard(x=35, y=70.5, z=-6, path="all.modes.warden_escape.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-105000000002"),
	StatBoard(x=38, y=70.5, z=-6, path="all.modes.warden_escape.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-105000000003"),

	# Panic chase
	StatBoard(x=47.5, y=70.5, z=2, path="all.modes.panic_chase.total_games", label="Panic Chase", mode=2, uuid="20180612-2024-2025-2026-106000000001"),
	StatBoard(x=49, y=70.5, z=6, path="all.modes.panic_chase.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-106000000002"),
	StatBoard(x=46, y=70.5, z=6, path="all.modes.panic_chase.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-106000000003"),

	# Creeper apocalypse
	StatBoard(x=25.5, y=70.5, z=2, path="all.modes.creeper_apocalypse.total_games", label="Creeper Apocalypse", mode=2, uuid="20180612-2024-2025-2026-107000000001"),
	StatBoard(x=27, y=70.5, z=6, path="all.modes.creeper_apocalypse.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-107000000002"),
	StatBoard(x=24, y=70.5, z=6, path="all.modes.creeper_apocalypse.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-107000000003"),

	# Infected
	StatBoard(x=14.5, y=70.5, z=2, path="all.modes.infected.total_games", label="Infected", mode=2, uuid="20180612-2024-2025-2026-108000000001"),
	StatBoard(x=16, y=70.5, z=6, path="all.modes.infected.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-108000000002"),
	StatBoard(x=13, y=70.5, z=6, path="all.modes.infected.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-108000000003"),

	# Solo one winner
	# Spleef
	StatBoard(x=2, y=70.5, z=14.5, path="all.modes.spleef.total_games", label="Spleef", mode=2, uuid="20180612-2024-2025-2026-109000000001"),
	StatBoard(x=6, y=70.5, z=13, path="all.modes.spleef.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-109000000002"),
	StatBoard(x=6, y=70.5, z=16, path="all.modes.spleef.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-109000000003"),

	# Dé à coudre
	StatBoard(x=6, y=70.5, z=24, path="all.modes.de_a_coudre.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-110000000001"),
	StatBoard(x=2, y=70.5, z=25.5, path="all.modes.de_a_coudre.total_games", label="Dé à Coudre", mode=2, uuid="20180612-2024-2025-2026-110000000002"),
	StatBoard(x=6, y=70.5, z=27, path="all.modes.de_a_coudre.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-110000000003"),

	# TNT run
	StatBoard(x=2, y=70.5, z=36.5, path="all.modes.tnt_run.total_games", label="TNT Run", mode=2, uuid="20180612-2024-2025-2026-111000000001"),
	StatBoard(x=6, y=70.5, z=35, path="all.modes.tnt_run.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-111000000002"),
	StatBoard(x=6, y=70.5, z=38, path="all.modes.tnt_run.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-111000000003"),

	# Block party
	StatBoard(x=2, y=70.5, z=47.5, path="all.modes.block_party.total_games", label="Block Party", mode=2, uuid="20180612-2024-2025-2026-112000000001"),
	StatBoard(x=6, y=70.5, z=46, path="all.modes.block_party.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-112000000002"),
	StatBoard(x=6, y=70.5, z=49, path="all.modes.block_party.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-112000000003"),

	# Snowball painter
	StatBoard(x=2, y=70.5, z=58.5, path="all.modes.snowball_painter.total_games", label="Snowball Painter", mode=2, uuid="20180612-2024-2025-2026-113000000001"),
	StatBoard(x=6, y=70.5, z=57, path="all.modes.snowball_painter.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-113000000002"),
	StatBoard(x=6, y=70.5, z=60, path="all.modes.snowball_painter.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-113000000003"),

	# Coin chaser
	StatBoard(x=2, y=70.5, z=69.5, path="all.modes.coin_chaser.total_games", label="Coin Chaser", mode=2, uuid="20180612-2024-2025-2026-114000000001"),
	StatBoard(x=6, y=70.5, z=68, path="all.modes.coin_chaser.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-114000000002"),
	StatBoard(x=6, y=70.5, z=71, path="all.modes.coin_chaser.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-114000000003"),

	# Bombardement
	StatBoard(x=2, y=70.5, z=80.5, path="all.modes.bombardement.total_games", label="Bombardement", mode=2, uuid="20180612-2024-2025-2026-115000000001"),
	StatBoard(x=6, y=70.5, z=79, path="all.modes.bombardement.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-115000000002"),
	StatBoard(x=6, y=70.5, z=82, path="all.modes.bombardement.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-115000000003"),

	# Minigolf
	StatBoard(x=2, y=70.5, z=91.5, path="all.modes.minigolf.total_games", label="MiniGolf", mode=2, uuid="20180612-2024-2025-2026-116000000001"),
	StatBoard(x=6, y=70.5, z=90, path="all.modes.minigolf.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-116000000002"),
	StatBoard(x=6, y=70.5, z=93, path="all.modes.minigolf.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-116000000003"),

	# MLG à coudre
	StatBoard(x=2, y=70.5, z=102.5, path="all.modes.mlg_a_coudre.total_games", label="MLG à Coudre", mode=2, uuid="20180612-2024-2025-2026-117000000001"),
	StatBoard(x=6, y=70.5, z=101, path="all.modes.mlg_a_coudre.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-117000000002"),
	StatBoard(x=6, y=70.5, z=104, path="all.modes.mlg_a_coudre.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-117000000003"),

	# Fish fight
	StatBoard(x=2, y=70.5, z=113.5, path="all.modes.fish_fight.total_games", label="Fish Fight", mode=2, uuid="20180612-2024-2025-2026-118000000001"),
	StatBoard(x=6, y=70.5, z=112, path="all.modes.fish_fight.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-118000000002"),
	StatBoard(x=6, y=70.5, z=115, path="all.modes.fish_fight.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-118000000003"),

	# Fireblast
	StatBoard(x=2, y=70.5, z=124.5, path="all.modes.fireblast.total_games", label="Fireblast", mode=2, uuid="20180612-2024-2025-2026-119000000001"),
	StatBoard(x=6, y=70.5, z=123, path="all.modes.fireblast.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-119000000002"),
	StatBoard(x=6, y=70.5, z=126, path="all.modes.fireblast.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-119000000003"),

	# Race
	StatBoard(x=2, y=70.5, z=135.5, path="all.modes.race.total_games", label="Race", mode=2, uuid="20180612-2024-2025-2026-120000000001"),
	StatBoard(x=6, y=70.5, z=134, path="all.modes.race.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-120000000002"),
	StatBoard(x=6, y=70.5, z=137, path="all.modes.race.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-120000000003"),

	# One shot
	StatBoard(x=-2, y=70.5, z=135.5, path="all.modes.one_shot.total_games", label="One Shot", mode=2, uuid="20180612-2024-2025-2026-121000000001"),
	StatBoard(x=-6, y=70.5, z=137, path="all.modes.one_shot.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-121000000002"),
	StatBoard(x=-6, y=70.5, z=134, path="all.modes.one_shot.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-121000000003"),

	# Pillars of fortune
	StatBoard(x=-2, y=70.5, z=124.5, path="all.modes.pillars_of_fortune.total_games", label=" Pillars of Fortune ", mode=2, uuid="20180612-2024-2025-2026-122000000001"),
	StatBoard(x=-6, y=70.5, z=126, path="all.modes.pillars_of_fortune.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-122000000002"),
	StatBoard(x=-6, y=70.5, z=123, path="all.modes.pillars_of_fortune.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-122000000003"),

	# Memory mine
	StatBoard(x=-2, y=70.5, z=113.5, path="all.modes.memory_mine.total_games", label="Memory Mine", mode=2, uuid="20180612-2024-2025-2026-123000000001"),
	StatBoard(x=-6, y=70.5, z=115, path="all.modes.memory_mine.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-123000000002"),
	StatBoard(x=-6, y=70.5, z=112, path="all.modes.memory_mine.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-123000000003"),

	# Cigogne
	StatBoard(x=-2, y=70.5, z=102.5, path="all.modes.cigogne.total_games", label="Cigogne", mode=2, uuid="20180612-2024-2025-2026-124000000001"),
	StatBoard(x=-6, y=70.5, z=104, path="all.modes.cigogne.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-124000000002"),
	StatBoard(x=-6, y=70.5, z=101, path="all.modes.cigogne.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-124000000003"),

	# Shoot da'sheep
	StatBoard(x=-2, y=70.5, z=91.5, path="all.modes.shoot_da_sheep.total_games", label="Shoot Da\\'Sheep", mode=2, uuid="20180612-2024-2025-2026-125000000001"),
	StatBoard(x=-6, y=70.5, z=93, path="all.modes.shoot_da_sheep.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-125000000002"),
	StatBoard(x=-6, y=70.5, z=90, path="all.modes.shoot_da_sheep.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-125000000003"),

	# Simultaneous jump
	StatBoard(x=-2, y=70.5, z=80.5, path="all.modes.simultaneous_jump.total_games", label="Simultaneous Jump", mode=2, uuid="20180612-2024-2025-2026-126000000001"),
	StatBoard(x=-6, y=70.5, z=82, path="all.modes.simultaneous_jump.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-126000000002"),
	StatBoard(x=-6, y=70.5, z=79, path="all.modes.simultaneous_jump.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-126000000003"),

	# Build battle
	StatBoard(x=-2, y=70.5, z=69.5, path="all.modes.build_battle.total_games", label="Build Battle", mode=2, uuid="20180612-2024-2025-2026-127000000001"),
	StatBoard(x=-6, y=70.5, z=71, path="all.modes.build_battle.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-127000000002"),
	StatBoard(x=-6, y=70.5, z=68, path="all.modes.build_battle.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-127000000003"),

	# Moutron
	StatBoard(x=-2, y=70.5, z=58.5, path="all.modes.moutron.total_games", label="Moutron", mode=2, uuid="20180612-2024-2025-2026-128000000001"),
	StatBoard(x=-6, y=70.5, z=60, path="all.modes.moutron.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-128000000002"),
	StatBoard(x=-6, y=70.5, z=57, path="all.modes.moutron.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-128000000003"),

	# Thunder spear
	StatBoard(x=-2, y=70.5, z=47.5, path="all.modes.thunder_spear.total_games", label="Thunder Spear", mode=2, uuid="20180612-2024-2025-2026-129000000001"),
	StatBoard(x=-6, y=70.5, z=49, path="all.modes.thunder_spear.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-129000000002"),
	StatBoard(x=-6, y=70.5, z=46, path="all.modes.thunder_spear.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-129000000003"),

	# Castagne
	StatBoard(x=-2, y=70.5, z=36.5, path="all.modes.castagne.total_games", label="Castagne", mode=2, uuid="20180612-2024-2025-2026-130000000001"),
	StatBoard(x=-6, y=70.5, z=38, path="all.modes.castagne.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-130000000002"),
	StatBoard(x=-6, y=70.5, z=35, path="all.modes.castagne.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-130000000003"),

	# Feed fast
	StatBoard(x=-2, y=70.5, z=25.5, path="all.modes.feed_fast.total_games", label="Feed Fast", mode=2, uuid="20180612-2024-2025-2026-131000000001"),
	StatBoard(x=-6, y=70.5, z=27, path="all.modes.feed_fast.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-131000000002"),
	StatBoard(x=-6, y=70.5, z=24, path="all.modes.feed_fast.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-131000000003"),

	# Pitchout
	StatBoard(x=-2, y=70.5, z=14.5, path="all.modes.pitchout.total_games", label="Pitchout", mode=2, uuid="20180612-2024-2025-2026-132000000001"),
	StatBoard(x=-6, y=70.5, z=16, path="all.modes.pitchout.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-132000000002"),
	StatBoard(x=-6, y=70.5, z=13, path="all.modes.pitchout.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-132000000003"),

	# Team VS Team
	# Spectres game
	StatBoard(x=-14.5, y=70.5, z=2, path="all.modes.spectres_game.total_games", label="Spectres Game", mode=2, uuid="20180612-2024-2025-2026-133000000001"),
	StatBoard(x=-13, y=70.5, z=6, path="all.modes.spectres_game.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-133000000002"),
	StatBoard(x=-16, y=70.5, z=6, path="all.modes.spectres_game.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-133000000003"),

	# SheepWars
	StatBoard(x=-25.5, y=70.5, z=2, path="all.modes.sheepwars.total_games", label="SheepWars", mode=2, uuid="20180612-2024-2025-2026-134000000001"),
	StatBoard(x=-24, y=70.5, z=6, path="all.modes.sheepwars.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-134000000002"),
	StatBoard(x=-27, y=70.5, z=6, path="all.modes.sheepwars.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-134000000003"),

	# Rush the flag
	StatBoard(x=-36.5, y=70.5, z=2, path="all.modes.rush_the_flag.total_games", label="Rush The Flag", mode=2, uuid="20180612-2024-2025-2026-135000000001"),
	StatBoard(x=-35, y=70.5, z=6, path="all.modes.rush_the_flag.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-135000000002"),
	StatBoard(x=-38, y=70.5, z=6, path="all.modes.rush_the_flag.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-135000000003"),

	# Guy shooter
	StatBoard(x=-46, y=70.5, z=6, path="all.modes.gay_shooter.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-136000000001"),
	StatBoard(x=-47.5, y=70.5, z=2, path="all.modes.gay_shooter.total_games", label="Guy Shooter", mode=2, uuid="20180612-2024-2025-2026-136000000002"),
	StatBoard(x=-49, y=70.5, z=6, path="all.modes.gay_shooter.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-136000000003"),

	# Layers 4 teams
	StatBoard(x=-58.5, y=70.5, z=2, path="all.modes.layers_4_teams.total_games", label="Layers 4 Teams", mode=2, uuid="20180612-2024-2025-2026-137000000001"),
	StatBoard(x=-57, y=70.5, z=6, path="all.modes.layers_4_teams.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-137000000002"),
	StatBoard(x=-60, y=70.5, z=6, path="all.modes.layers_4_teams.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-137000000003"),

	# Beat the kings
	StatBoard(x=-69.5, y=70.5, z=2, path="all.modes.beat_the_kings.total_games", label="Beat The Kings", mode=2, uuid="20180612-2024-2025-2026-138000000001"),
	StatBoard(x=-68, y=70.5, z=6, path="all.modes.beat_the_kings.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-138000000002"),
	StatBoard(x=-71, y=70.5, z=6, path="all.modes.beat_the_kings.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-138000000003"),

	# GlassRunner
	StatBoard(x=-80.5, y=70.5, z=2, path="all.modes.glassrunner.total_games", label="GlassRunner", mode=2, uuid="20180612-2024-2025-2026-139000000001"),
	StatBoard(x=-79, y=70.5, z=7, path="all.modes.glassrunner.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-139000000002"),
	StatBoard(x=-82, y=70.5, z=7, path="all.modes.glassrunner.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-139000000003"),

	# Laser game
	StatBoard(x=-69.5, y=70.5, z=-2, path="all.modes.laser_game.total_games", label="Laser Game", mode=2, uuid="20180612-2024-2025-2026-140000000001"),
	StatBoard(x=-71, y=70.5, z=-6, path="all.modes.laser_game.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-140000000002"),
	StatBoard(x=-68, y=70.5, z=-6, path="all.modes.laser_game.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-140000000003"),

	# Layers 2 teams
	StatBoard(x=-58.5, y=70.5, z=-2, path="all.modes.layers_2_teams.total_games", label="Layers 2 Teams", mode=2, uuid="20180612-2024-2025-2026-141000000001"),
	StatBoard(x=-60, y=70.5, z=-6, path="all.modes.layers_2_teams.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-141000000002"),
	StatBoard(x=-57, y=70.5, z=-6, path="all.modes.layers_2_teams.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-141000000003"),

	# Protect the king
	StatBoard(x=-47.5, y=70.5, z=-2, path="all.modes.protect_the_king.total_games", label="Protect The King", mode=2, uuid="20180612-2024-2025-2026-142000000001"),
	StatBoard(x=-49, y=70.5, z=-6, path="all.modes.protect_the_king.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-142000000002"),
	StatBoard(x=-46, y=70.5, z=-6, path="all.modes.protect_the_king.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-142000000003"),

	# Rush the point
	StatBoard(x=-36.5, y=70.5, z=-2, path="all.modes.rush_the_point.total_games", label="Rush The Point", mode=2, uuid="20180612-2024-2025-2026-143000000001"),
	StatBoard(x=-38, y=70.5, z=-6, path="all.modes.rush_the_point.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-143000000002"),
	StatBoard(x=-35, y=70.5, z=-6, path="all.modes.rush_the_point.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-143000000003"),

	# Capture the flag
	StatBoard(x=-25.5, y=70.5, z=-2, path="all.modes.capture_the_flag.total_games", label="Capture The Flag", mode=2, uuid="20180612-2024-2025-2026-144000000001"),
	StatBoard(x=-27, y=70.5, z=-6, path="all.modes.capture_the_flag.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-144000000002"),
	StatBoard(x=-24, y=70.5, z=-6, path="all.modes.capture_the_flag.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-144000000003"),

	# Traitors game
	StatBoard(x=-14.5, y=70.5, z=-2, path="all.modes.traitors_game.total_games", label="Traitors Game", mode=2, uuid="20180612-2024-2025-2026-145000000001"),
	StatBoard(x=-16, y=70.5, z=-6, path="all.modes.traitors_game.played", label="Games played", mode=1, uuid="20180612-2024-2025-2026-145000000002"),
	StatBoard(x=-13, y=70.5, z=-6, path="all.modes.traitors_game.wins", label="Victories", mode=1, uuid="20180612-2024-2025-2026-145000000003"),
]


# Functions
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

	jump_display_lines: str = "\n".join(
		board(x, y, z, f"jump_{key}", uuid, "..64", f'function {ns}:stats/display/jump_times_summon {{jump:"{key}",path:"jump_{key}",label:"Best Times",uuid:"{uuid}"}}')
		for x, y, z, key, uuid in jump_displays
	)

	# /boards/<alley>
	alleys: dict[str, list[StatBoard]] = {}
	for stat in STAT_BOARDS:
		alleys.setdefault(stat.alley, []).append(stat)

	alley_checks: list[McFunction] = []
	for alley, stats in alleys.items():
		write_function(f"{path}/boards/{alley}", "\n".join(
			board(s.x, s.y, s.z, s.path, s.uuid, f"0.1..{s.reach}", f'function {ns}:stats/display/summon {{path:"{s.path}",label:"{s.label}",uuid:"{s.uuid}",mode:{1 if s.mode == 3 else s.mode}}}')
			for s in stats
		))

		center: list[float] = [(min(axis) + max(axis)) / 2 for axis in zip(*((s.x, s.y, s.z) for s in stats), strict=True)]
		reach: int = math.ceil(max(math.dist(center, (s.x, s.y, s.z)) + s.reach for s in stats))
		state: str = f"#boards_{alley} {ns}.data"
		alley_checks.append(f"""
execute store success score #alley_nearby {ns}.data positioned {center[0]} {center[1]} {center[2]} if entity @a[distance=..{reach}]
execute if score #alley_nearby {ns}.data matches 1 run function {ns}:lobby/boards/{alley}
execute if score #alley_nearby {ns}.data matches 0 if score {state} matches 1 run function {ns}:lobby/boards/{alley}
scoreboard players operation {state} = #alley_nearby {ns}.data""".strip())

	write_function(f"{path}/second", f"""
# If players in the lobby, show title action bar with the current game and number of players
function {ns}:player/detached_action_bar

# Jumps best times leaderboards
{jump_display_lines}

# Black holes (lobby and tutorial area)
execute positioned 0 69 0 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000001 run summon item_display ~ ~ ~ {{UUID:uuid("20180612-2024-2025-2026-000000000001"),item:{{id:"stone",count:1,components:{{"item_model":"{ns}:bg_black_hole"}}}},Tags:["{ns}.black_hole_lobby"],transformation:{{scale:[-300f,-200f,-300f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}},view_range:4.0f}}
execute positioned -500 69 -500 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000002 run summon item_display ~ ~ ~ {{UUID:uuid("20180612-2024-2025-2026-000000000002"),item:{{id:"stone",count:1,components:{{"item_model":"{ns}:bg_black_hole"}}}},Tags:["{ns}.black_hole_tutorial"],transformation:{{scale:[-100f,-100f,-100f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}},view_range:4.0f}}

# Minigames stats, one player check per alley slice: a slice nobody is near runs once more to kill its boards, then stays idle
{"\n\n".join(alley_checks)}

# Boards decorations: Fireblast fireball, Memory mine and Spectres game particles, GlassRunner snowballs
execute unless entity 20180612-2024-2025-2026-119000000004 run summon small_fireball 6 70.42 124.5 {{UUID:uuid("20180612-2024-2025-2026-119000000004")}}
execute if predicate {ns}:chance/0.25 run particle dust{{color:[1.0,0.0,0.0],scale:1.0}} -5 69.55 114 0 0 0 0 1 normal
particle dolphin -15 70.1 4 0.2 0 0.2 0 2 normal
execute unless entity 20180612-2024-2025-2026-139000000004 run summon snowball -80.42 72.20 6.05 {{NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000004")}}
execute unless entity 20180612-2024-2025-2026-139000000005 run summon snowball -80.48 73.40 7.30 {{NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000005")}}
""")


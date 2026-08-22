
# Imports
from stewbeet import JsonDict, Mem

from ..modes import MODE_SHOPS

# Constants
STAR: str = "✮"
def get_money() -> dict[str, JsonDict]:
	""" Money JSON text components (per language), reading the sapphire count from storage. """
	ns: str = Mem.ctx.project_id
	return {
		"fr": {"nbt":"SapphireFR","storage":f"{ns}:main","interpret":True},
		"en": {"nbt":"SapphireEN","storage":f"{ns}:main","interpret":True}
	}
REFUND_PERCENTAGE: float = 0.8	# Players get 80% of the upgrade cost back when selling
LANGUAGE_SCORES: dict[str, tuple[int, str, str, str, str]] = {
	"fr": (0, "French", "Boutique cosmétique X", "Acheter pour X", "Accéder à la boutique cosmétique X"),
	"en": (1, "English", "X Cosmetic Shop", "Buy for X", "Access the X cosmetic shop")
}
SHEEPWARS_CHOOSE_KIT: dict[str, str] = {
	"fr": "Sélectionnez un kit en cliquant sur le nom !",
	"en": "Select a kit by clicking on the name!"
}
SHEEPWARS_KIT_OFFSET: int = 50
SHOP_ORDER: tuple[str, ...] = ("pitchout", "infected", "spleef", "sheepwars", "spectres_game")
""" Frozen display order of the minigame shops.

A shop's rank drives its trigger score range (see get_shop_range), which is what a player's click
sends, so reordering this changes the generated commands. A shop missing here is appended last.
"""

def ordered_shops() -> dict[str, dict[str, JsonDict]]:
	""" Every mode shop, in display order.

	Returns:
		dict[str, dict[str, JsonDict]]: Mode id -> its upgrades
	"""
	listed: list[str] = [name for name in SHOP_ORDER if name in MODE_SHOPS]
	return {name: MODE_SHOPS[name] for name in listed + [name for name in MODE_SHOPS if name not in SHOP_ORDER]}

# Function paths, relative to the project namespace (e.g. f"{ns}:{LOAD_PATH}")
LOAD_PATH: str = "shop/_load"
TRIGGER_PATH: str = "shop/trigger"
USERNAME_CHANGE_PATH: str = "player/username_change/update_shops"
INITIALIZE_SHOP_SCORES_PATH: str = "shop/initialize_shop_scores"

SHOP_MAX_SIZE: int = 100
def get_shop_range(index: int) -> tuple[int, int]:
	index += 1 # Because the first shop is 1
	return (SHOP_MAX_SIZE*index, SHOP_MAX_SIZE*(index + 1) - 1)


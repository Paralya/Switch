
# Imports
from stewbeet import JsonDict, Mem

from ..modes.infected.shop import INFECTED
from ..modes.pitchout.shop import PITCHOUT
from ..modes.sheepwars.shop import SHEEPWARS
from ..modes.spectres_game.shop import SPECTRES_GAME
from ..modes.spleef.shop import SPLEEF

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
SHOPS: dict[str, dict[str, JsonDict]] = {
	"pitchout": PITCHOUT,
	"infected": INFECTED,
	"spleef": SPLEEF,
	"sheepwars": SHEEPWARS,
	"spectres_game": SPECTRES_GAME,
}
# Function paths, relative to the project namespace (e.g. f"{ns}:{LOAD_PATH}")
LOAD_PATH: str = "shop/_load"
TRIGGER_PATH: str = "shop/trigger"
USERNAME_CHANGE_PATH: str = "player/username_change/update_shops"
INITIALIZE_SHOP_SCORES_PATH: str = "shop/initialize_shop_scores"

SHOP_MAX_SIZE: int = 100
def get_shop_range(index: int) -> tuple[int, int]:
	index += 1 # Because the first shop is 1
	return (SHOP_MAX_SIZE*index, SHOP_MAX_SIZE*(index + 1) - 1)


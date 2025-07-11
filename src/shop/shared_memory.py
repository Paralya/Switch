
# Imports
from .dict.infected import INFECTED
from .dict.pitchout import PITCHOUT
from .dict.sheepwars import SHEEPWARS
from .dict.spectres_game import SPECTRES_GAME
from .dict.spleef import SPLEEF

# Constants
STAR: str = "✮"
MONEY: dict[str, dict[str, str]] = {
	"fr": {"nbt":"SapphireFR","storage":"switch:main","interpret":True},
	"en": {"nbt":"SapphireEN","storage":"switch:main","interpret":True}
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
SHOPS: dict[str, dict[str, dict]] = {
	"pitchout": PITCHOUT,
	"infected": INFECTED,
	"spleef": SPLEEF,
	"sheepwars": SHEEPWARS,
	"spectres_game": SPECTRES_GAME,
}
LOAD_PATH: str = "switch:shop/_load"
TRIGGER_PATH: str = "switch:shop/trigger"
USERNAME_CHANGE_PATH: str = "switch:player/username_change/update_shops"
INITIALIZE_SHOP_SCORES_PATH: str = "switch:shop/initialize_shop_scores"

SHOP_MAX_SIZE: int = 100
def get_shop_range(index: int) -> tuple[int, int]:
	index += 1 # Because the first shop is 1
	return (SHOP_MAX_SIZE*index, SHOP_MAX_SIZE*(index + 1) - 1)



# Imports
from user.shop.dict.pitchout import PITCHOUT
from user.shop.dict.infected import INFECTED
from user.shop.dict.spleef import SPLEEF
from user.shop.dict.sheepwars import SHEEPWARS
from user.shop.dict.spectres_game import SPECTRES_GAME

# Constants
LANGUAGE_SCORES: dict[str, int] = {"fr": 0, "en": 1}
SHOPS: dict[str, dict[str, dict]] = {
	"pitchout": PITCHOUT,
	"infected": INFECTED,
	"spleef": SPLEEF,
	"sheepwars": SHEEPWARS,
	"spectres_game": SPECTRES_GAME,
}


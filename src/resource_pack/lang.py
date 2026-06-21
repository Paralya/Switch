
# Imports
from beet import Language
from stewbeet.core import Mem, set_json_encoder

# Language key -> translation table (hand-authored UI strings)
LANGUAGES: dict[str, dict[str, str]] = {
	"en_us": {"gameMode.changed": ""},
	"fr_fr": {"gameMode.changed": ""},
}


def write_lang() -> None:
	""" Build the hand-authored language files explicitly under the minecraft namespace. """
	languages = Mem.ctx.assets["minecraft"].languages
	for key, table in LANGUAGES.items():
		languages[key] = set_json_encoder(Language(dict(table)))

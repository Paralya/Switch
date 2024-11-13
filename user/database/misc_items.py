
# Imports
from python_datapack.utils.database_helper import *
from python_datapack.constants import *

# Setup misc items
def setup_misc_items(database: dict[str, dict]) -> None:
	""" Setup misc items\n
	Args:
		database (dict[str, dict]): The database to update
	"""
	database["awakened_stardust"] = {"id": CUSTOM_ITEM_VANILLA}
	return


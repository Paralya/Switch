
# Imports
from beet import Context
from beet.contrib.worldgen import Dimension
from stewbeet.plugins.datapack.sorters.constants import SorterFile  # pyright: ignore[reportMissingTypeStubs]

from .definitions.advancements import write_advancements
from .definitions.dimensions import write_dimensions
from .definitions.integrations import write_integrations
from .definitions.item_modifiers import write_item_modifiers
from .definitions.loot_tables import write_loot_tables
from .definitions.predicates import write_predicates
from .definitions.sorters import write_sorters
from .definitions.tags import write_tags


def load_datapack_json(ctx: Context) -> None:
	""" Build the shared/generic datapack definitions explicitly in Python. Mode-specific resources
		(advancements, predicates, loot tables, tags, structures) live in each mode's resources.py. """
	# Non-standard file types must be known by the pack before assignment (here and in mode resources)
	for file_type in (Dimension, SorterFile):
		if file_type not in ctx.data.extend_namespace:
			ctx.data.extend_namespace.append(file_type)

	write_predicates()
	write_item_modifiers()
	write_dimensions()
	write_sorters()
	write_tags()
	write_loot_tables()
	write_advancements()
	write_integrations()


# Imports
import glob
import os

import stouputils as stp
from beet import Advancement, BlockTag, Context, ItemModifier, ItemTag, LootTable, Predicate
from beet.contrib.worldgen import Dimension
from stewbeet.plugins.datapack.sorters.constants import Sorter, SorterFile

# Category folder (under this package) -> beet/stewbeet file type
_CATEGORIES: dict[str, type] = {
	"advancement": Advancement,
	"predicate": Predicate,
	"item_modifier": ItemModifier,
	"loot_table": LootTable,
	"dimension": Dimension,
	"sorter": SorterFile,
}
# tags/<sub> -> tag file type
_TAGS: dict[str, type] = {
	"block": BlockTag,
	"item": ItemTag,
}

_HERE: str = os.path.dirname(__file__)


def _register(ctx: Context, file_type: type, root: str, path: str) -> None:
	""" Load one JSON resource with stp.json_load and register it under the switch namespace. """
	key: str = os.path.relpath(path, root).replace(os.sep, "/")[:-len(".json")]
	data = stp.json_load(path)
	# SorterFile is pydantic-backed: the downstream sorters plugin expects a Sorter model
	obj = file_type(Sorter.model_validate(data)) if file_type is SorterFile else file_type(data)
	obj.encoder = lambda x: stp.json_dump(x)
	ctx.data["switch"][file_type][key] = obj


def load_datapack_json(ctx: Context) -> None:
	""" Move-and-load the hand-authored datapack JSON (advancements, tags, predicates, loot tables,
		item modifiers, dimensions, sorters) from src/datapack/* into the build via Python. """
	# Non-standard file types must be known by the pack before assignment
	for file_type in (Dimension, SorterFile):
		if file_type not in ctx.data.extend_namespace:
			ctx.data.extend_namespace.append(file_type)

	for cat, file_type in _CATEGORIES.items():
		root: str = f"{_HERE}/{cat}"
		for path in glob.glob(f"{root}/**/*.json", recursive=True):
			_register(ctx, file_type, root, path)

	for sub, file_type in _TAGS.items():
		root: str = f"{_HERE}/tags/{sub}"
		for path in glob.glob(f"{root}/**/*.json", recursive=True):
			_register(ctx, file_type, root, path)

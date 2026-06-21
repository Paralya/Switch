
# Imports
from stewbeet.core import Mem, set_json_encoder
from stewbeet.plugins.datapack.sorters.constants import Sorter, SorterFile  # pyright: ignore[reportMissingTypeStubs]


def write_sorters() -> None:
	""" Build the selection-sort configs explicitly under the switch namespace. The sorters plugin
		consumes these (they produce no JSON in the build, only generated sort functions).
		(SorterFile is registered as a custom type in load_datapack_json beforehand.) """
	switch = Mem.ctx.data["switch"]

	for name, scale in (("asc", 1000), ("desc", -1000)):
		switch[SorterFile][name] = set_json_encoder(SorterFile(Sorter.model_validate({  # pyright: ignore[reportArgumentType]
			"algorithm": "selection_sort",
			"functions_location": f"switch:utils/list/{name}",
			"to_sort": {"storage": "switch:temp", "target": "list"},
			"key": "value",
			"scale": scale,
			"limit": 15,
		})))

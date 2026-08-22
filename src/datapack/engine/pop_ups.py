
# Imports
from beet import Advancement
from stewbeet import Mem, set_json_encoder, write_function
from stouputils.typing import JsonDict

from ..modes.catalogue import MODES
from ..modes.definitions import LANG_PRETEXT


# Main function
def write_pop_ups() -> None:
	ns: str = Mem.ctx.project_id

	# For each lang prefix (fr, en, ...),
	for lang in LANG_PRETEXT.keys():

		# For each minigame,
		for mode in MODES:
			# Prepare the title of the advancement
			title: list[JsonDict] = [{"text":"'","color":"aqua"},{"text":mode.display_name(lang),"color":"yellow"}]
			if lang == "fr":
				title.append({"text":"' sélectionné !"})
			elif lang == "en":
				title.append({"text":"' selected!"})

			# Write the advancement (called in data/switch/function/engine/signals/macro_start.mcfunction)
			Mem.ctx.data[ns].advancements[f"pop_ups/{mode.id}_{lang}"] = set_json_encoder(Advancement({
				"display": {
					"icon": {"id": "minecraft:stone","components": {"minecraft:item_model": f"{ns}:letter"}},
					"title": title,
					"description": "",
					"frame": "task",
					"show_toast": True,
					"announce_to_chat": False,
					"hidden": True
				},
				"criteria": {
					"requirement": {"trigger": "minecraft:impossible"}
				},
				"rewards": {
					"function": f"{ns}:engine/pop_ups/revoke"
				}
			}))

	# Write the function revoking every pop-up at once
	write_function(f"{ns}:engine/pop_ups/schedule", "\n".join(
		f"advancement revoke @a only {ns}:pop_ups/{mode.id}_{lang}"
		for lang in LANG_PRETEXT for mode in MODES
	))

	# Write the function that revokes the advancement
	write_function(f"{ns}:engine/pop_ups/revoke", f"schedule function {ns}:engine/pop_ups/schedule 1s")


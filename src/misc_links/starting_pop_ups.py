
# Imports
import stouputils as stp
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder, write_function

from .._important.modes import LANG_PRETEXT, MODES


# Main function
@stp.measure_time(message="Generated starting pop-ups for every game mode")
def main() -> None:
	ns: str = Mem.ctx.project_id

	# For each lang prefix (fr, en, ...),
	for lang in LANG_PRETEXT.keys():

		# For each minigame,
		for mode in MODES:
			mode_id: str = mode["id"]
			mode_name: str = mode["name_fr"] if lang == "fr" else mode.get(f"name_{lang}", mode["name_fr"])

			# Prepare the title of the advancement
			title: list[dict] = [{"text":"'","color":"aqua"},{"text":mode_name,"color":"yellow"}]
			if lang == "fr":
				title.append({"text":"' sélectionné !"})
			elif lang == "en":
				title.append({"text":"' selected!"})

			# Write the advancement (called in data/switch/function/engine/signals/macro_start.mcfunction)
			Mem.ctx.data[ns].advancements[f"pop_ups/{mode_id}_{lang}"] = set_json_encoder(Advancement({
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

			# Write the reward function that revoke the advancement
			write_function(f"{ns}:engine/pop_ups/schedule", f"advancement revoke @a only {ns}:pop_ups/{mode_id}_{lang}")

	# Write the function that revokes the advancement
	write_function(f"{ns}:engine/pop_ups/revoke", f"schedule function {ns}:engine/pop_ups/schedule 1s")


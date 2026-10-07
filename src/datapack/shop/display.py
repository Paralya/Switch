""" The shop menu: one tellraw line per upgrade level, with its stars and its buy and sell buttons. """
# Imports
import stouputils as stp
from stewbeet import JsonDict, Mem, write_function

from .shared_memory import (
	LANGUAGE_SCORES,
	REFUND_PERCENTAGE,
	SHEEPWARS_CHOOSE_KIT,
	SHEEPWARS_KIT_OFFSET,
	STAR,
	get_money,
	get_shop_range,
)

# Constants
SELL_TEXT: dict[str, str] = {"fr": "Vendre pour", "en": "Sell for"}
""" Label of the refund line in the sell button hover, per language. """


# Functions
def append_sell_button(tellraw_json: list[JsonDict], downgrade_hover_text: str, sell_label: str, sell_refund: int, sell_counter: int, lang_id: str) -> None:
	""" Append the shop's sell [-] button (red, with refund + optional downgrade hover) to a tellraw line. """
	ns: str = Mem.ctx.project_id
	hover_value: list[JsonDict] = []
	if downgrade_hover_text:
		hover_value.append({"text": f"{downgrade_hover_text}\n", "color": "red"})
	hover_value.append({"text": f"{sell_label} {sell_refund}", "color": "yellow"})
	hover_value.append(get_money()[lang_id])

	tellraw_json.append({
		"text": " [-]", "color": "red",
		"click_event": {"action": "run_command", "command": f"/trigger {ns}.trigger.shop set {sell_counter}"},
		"hover_event": {"action": "show_text", "value": hover_value}
	})


def write_translations(index: int, shop_name: str, shop_dict: JsonDict) -> None:
	""" Write the translations of the shop
	Args:
		index:     The index of the shop, e.g. 1 for pitchout
		shop_name: The name of the shop, e.g. "pitchout"
		shop_dict: The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:shop/translations/{shop_name}"
	titled: str = shop_name.replace("_", " ").title()
	mini: int = get_shop_range(index)[0]

	upgrades: list[tuple[str, JsonDict]] = [(upgrade_id, data) for upgrade_id, data in shop_dict.items() if data]
	for lang_id, (lang_score, lang_name, label, buy_text, _) in LANGUAGE_SCORES.items():
		selector: str = f"@s[scores={{{ns}.lang={lang_score}}}]"
		write_function(path, f"""# {lang_name}\ntellraw {selector} [{{"text":"[{label.replace('X', titled)}]","color":"yellow"}}]""")
		if shop_name == "sheepwars":
			write_function(path, f"""tellraw {selector} [{{"text":"{SHEEPWARS_CHOOSE_KIT[lang_id]}","color":"red"}}]""")

		write_upgrade_lines(path, shop_name, upgrades, mini, lang_id, buy_text, selector)


def write_upgrade_lines(path: str, shop_name: str, upgrades: list[tuple[str, JsonDict]], mini: int, lang_id: str, buy_text: str, selector: str) -> None:
	""" Write the trade messages and the shop line of every upgrade, in one language.

	Args:
		upgrades: The (upgrade id, upgrade) of the shop, in trigger order from mini + 1.
		buy_text: Hover text of the buy button, where X is replaced by the price.
		selector: Selector of the players reading this language.
	"""
	ns: str = Mem.ctx.project_id
	for counter, (upgrade_id, data) in enumerate(upgrades, start=mini + 1):
		upgrade_name: str = data["upgrade_name"].get(lang_id, data["upgrade_name"]["en"])
		ok_message: str = data["ok_messages"].get(lang_id, data["ok_messages"]["en"])
		error_message: str = data["error_messages"].get(lang_id, data["error_messages"]["en"])

		# Selling has no error message, since the [-] button only shows when there is a level to sell
		write_function(path, f"""execute if score @s {ns}.trigger.shop matches {counter} if score #success {ns}.data matches 1.. run tellraw {selector} [{{"text":"{ok_message}","color":"green"}}]""")
		write_function(path, f"""execute if score @s {ns}.trigger.shop matches {counter} if score #success {ns}.data matches 0 run tellraw {selector} [{{"text":"{error_message}","color":"red"}}]""")
		write_function(path, f"""execute if score @s {ns}.trigger.shop matches {counter + 10000} if score #success {ns}.data matches 1.. run tellraw {selector} [{{"text":"{sell_message(data, upgrade_name, lang_id)}","color":"green"}}]""")

		for level in range(len(data["upgrades"]) + 1):
			tellraw_json: list[JsonDict] = level_tellraw(data, level, upgrade_name, lang_id, buy_text, counter)
			is_max: str = ".." if level == len(data["upgrades"]) else ""
			if shop_name != "sheepwars":
				write_function(path, f"execute if score @s {ns}.{shop_name}.{upgrade_id} matches {level}{is_max} run tellraw {selector} {stp.json_dump(tellraw_json, max_level=0)[:-1]}")
				continue

			kit_matches: str = f"score @s {ns}.sheepwars.chosen_kit matches {counter - mini} if score @s {ns}.sheepwars.{upgrade_id} matches {level}{is_max}"
			write_kit_tellraws(path, selector, tellraw_json, kit_matches, counter + SHEEPWARS_KIT_OFFSET)


def write_kit_tellraws(path: str, selector: str, tellraw_json: list[JsonDict], kit_matches: str, choose_trigger: int) -> None:
	""" Write a sheepwars kit line twice: its name chooses the kit when clicked, and turns green once chosen.

	Args:
		kit_matches:    Execute condition, after if/unless, that holds once the player chose this kit at this level.
		choose_trigger: Trigger value that chooses the kit.
	"""
	ns: str = Mem.ctx.project_id
	clickable: JsonDict = {**tellraw_json[0], "click_event": {"action": "run_command", "command": f"/trigger {ns}.trigger.shop set {choose_trigger}"}}
	write_function(path, f"execute unless {kit_matches} run tellraw {selector} {stp.json_dump([clickable, *tellraw_json[1:]], max_level=0)[:-1]}")
	chosen: JsonDict = {**tellraw_json[0], "color": "green"}
	write_function(path, f"execute if {kit_matches} run tellraw {selector} {stp.json_dump([chosen, *tellraw_json[1:]], max_level=0)[:-1]}")


def sell_message(data: JsonDict, upgrade_name: str, lang_id: str) -> str:
	""" The message shown after selling a level: the upgrade's own downgrade_message, or a generic one. """
	custom: dict[str, str] = data.get("downgrade_message", {})
	if message := custom.get(lang_id, custom.get("en", "")):
		return message
	return {
		"fr": f"Vous avez vendu un niveau de {upgrade_name} et récupéré un remboursement !",
		"en": f"You sold one level of {upgrade_name} and received a refund!"
	}.get(lang_id, f"You sold one level of {upgrade_name} and received a refund!")


def level_tellraw(data: JsonDict, level: int, upgrade_name: str, lang_id: str, buy_text: str, counter: int) -> list[JsonDict]:
	""" The shop line of an upgrade for a player at `level`: name, stars, then the sell [-] and buy [+] buttons.

	Args:
		level:    Levels the player owns, from 0 to len(data["upgrades"]) for the maxed out line.
		buy_text: Hover text of the buy button, where X is replaced by the price.
		counter:  Trigger value that buys a level; counter + 10000 sells one back.
	"""
	ns: str = Mem.ctx.project_id
	upgrades: list[JsonDict] = data["upgrades"]
	price: int = upgrades[level]["price"] if level < len(upgrades) else -1
	tellraw_json: list[JsonDict] = [{"text": upgrade_name, "color": "aqua"}, {"text": " | ", "bold": True, "color": "dark_gray"}]
	if price > 0:
		tellraw_json += [{"text": STAR * level, "color": "yellow"}, {"text": STAR * (len(upgrades) - level), "color": "gray"}]
	else:
		tellraw_json.append({"text": STAR * len(upgrades), "color": "yellow"})

	if level > 0:
		previous: JsonDict = upgrades[level - 1]
		downgrade_hover_text: str = previous["hover_text"].get(lang_id, previous["hover_text"].get("en", "")).replace("->", "<-")
		append_sell_button(tellraw_json, downgrade_hover_text, SELL_TEXT[lang_id], int(previous["price"] * REFUND_PERCENTAGE), counter + 10000, lang_id)

	if price <= 0:
		tellraw_json.append({"text":" [+]","color":"gray"})
		return tellraw_json
	hover_text: str = upgrades[level]["hover_text"].get(lang_id, upgrades[level]["hover_text"]["en"])
	tellraw_json.append({
		"text": " [+]", "color": "green",
		"click_event": {"action": "run_command", "command": f"/trigger {ns}.trigger.shop set {counter}"},
		"hover_event": {"action": "show_text", "value": [
			{"text":f"{hover_text}\n","color":"green"},
			{"text":buy_text.replace("X", str(price)), "color":"yellow"},
			get_money()[lang_id]
		]}
	})
	return tellraw_json


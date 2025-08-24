
# ruff: noqa: E501
# Imports
import json

import stouputils as stp
from stewbeet.core import write_function

from .shared_memory import *


# Functions
def load_username_change(shop_name: str, shop_dict: dict) -> None:
	""" Add lines for the load function, the username change function

	Args:
		shop_name	(str):	The name of the shop, e.g. "pitchout"
		shop_dict	(dict):	The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	for upgrade_id in shop_dict.keys():
		write_function(LOAD_PATH, f"scoreboard objectives add switch.{shop_name}.{upgrade_id} dummy")
		write_function(USERNAME_CHANGE_PATH, f"$scoreboard players operation $(username) switch.{shop_name}.{upgrade_id} = $(old_username) switch.{shop_name}.{upgrade_id}")
		write_function(INITIALIZE_SHOP_SCORES_PATH, f"scoreboard players add @s switch.{shop_name}.{upgrade_id} 0")


def write_technicals(index: int, shop_name: str, shop_dict: dict) -> None:
	""" Write the technical part of the shop

	Args:
		index		(int):	The index of the shop, e.g. 1 for pitchout
		shop_name	(str):	The name of the shop, e.g. "pitchout"
		shop_dict	(dict):	The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	mini: int = get_shop_range(index)[0]
	path: str = f"switch:shop/{shop_name}"
	write_function(path, "## File attribut: Ignore translations")

	# Special case for sheepwars
	if shop_name == "sheepwars":
		write_function(path, """
# Kit Chosen
scoreboard players add @s switch.sheepwars.chosen_kit 0
""")
		counter: int = 0
		for upgrade in shop_dict.values():
			if not upgrade:
				continue
			counter += 1
			write_function(path, f"execute if score @s switch.trigger.shop matches {mini + counter + SHEEPWARS_KIT_OFFSET} run scoreboard players set @s switch.sheepwars.chosen_kit {counter}")

	# Write the upgrades
	counter: int = mini
	for upgrade_id, data in shop_dict.items():
		if not data:
			continue
		upgrade_name: str = data["upgrade_name"]["en"]
		write_function(path, f"\n# {upgrade_name}")
		counter += 1

		# Purchase logic - buying upgrades
		# Write the upgrades checks
		for i, upgrade in enumerate(data['upgrades']):
			price: int = upgrade['price']
			write_function(path, f"execute if score @s switch.trigger.shop matches {counter} if score @s switch.{shop_name}.{upgrade_id} matches {i} if score @s switch.money matches {price}.. store success score #success switch.data run scoreboard players remove @s switch.money {price}")

		# Special case: Current game is infected and player is human, refresh their equipments
		refresh_equipment: str = ""
		if shop_name == "infected" and upgrade_id in ("sword", "armor"):
			refresh_equipment = f"execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 1.. if entity @s[team=switch.temp.human] run function switch:modes/infected/death/human_give"

		# If success, add the upgrade
		write_function(path, f"""
execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 1.. run scoreboard players add @s switch.{shop_name}.{upgrade_id} 1
execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
{refresh_equipment}
""")

		# Selling logic - Add code for selling upgrades
		write_function(path, f"\n# Selling {upgrade_name}")
		sell_counter: int = counter + 10000		# Use counter+10000 as the trigger value for selling to avoid conflicts

		# For each level (except level 0), add a sell option
		for i in range(len(data['upgrades'])):
			if i == 0:  # Skip level 0 (can't sell what you don't have)
				continue

			price: int = data['upgrades'][i-1]['price']  # Get price of the previous upgrade
			refund: int = int(price * REFUND_PERCENTAGE)  # Calculate refund amount

			# Check if player has this level and wants to sell
			write_function(path, f"execute if score @s switch.trigger.shop matches {sell_counter} if score @s switch.{shop_name}.{upgrade_id} matches {i} store success score #success switch.data run scoreboard players add @s switch.money {refund}")

		# Add handling for max level (selling from max level to the previous level)
		max_level = len(data['upgrades'])
		if max_level > 0:  # Make sure there are upgrades to sell
			price: int = data['upgrades'][-1]['price']  # Get price of the last upgrade
			refund: int = int(price * REFUND_PERCENTAGE)  # Calculate refund amount
			write_function(path, f"execute if score @s switch.trigger.shop matches {sell_counter} if score @s switch.{shop_name}.{upgrade_id} matches {max_level}.. store success score #success switch.data run scoreboard players add @s switch.money {refund}")

		# Special case: Current game is infected and player is human, refresh their equipments
		refresh_equipment: str = ""
		if shop_name == "infected" and upgrade_id in ("sword", "armor"):
			refresh_equipment = f"execute if score @s switch.trigger.shop matches {sell_counter} if score #success switch.data matches 1.. if entity @s[team=switch.temp.human] run function switch:modes/infected/death/human_give"

		# If success, remove the upgrade
		write_function(path, f"""
execute if score @s switch.trigger.shop matches {sell_counter} if score #success switch.data matches 1.. run scoreboard players remove @s switch.{shop_name}.{upgrade_id} 1
execute if score @s switch.trigger.shop matches {sell_counter} if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
{refresh_equipment}
""")

	# Call messages
	write_function(path, f"""
# Messages
execute if score @s switch.trigger.shop matches {mini} run playsound block.note_block.bell ambient @s
function switch:translations/shop_{shop_name}
""")


def write_translations(index: int, shop_name: str, shop_dict: dict) -> None:
	""" Write the translations of the shop
	Args:
		index		(int):	The index of the shop, e.g. 1 for pitchout
		shop_name	(str):	The name of the shop, e.g. "pitchout"
		shop_dict	(dict):	The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	path: str = f"switch:translations/shop_{shop_name}"
	titled: str = shop_name.replace("_", " ").title()
	mini: int = get_shop_range(index)[0]

	# Add sell text translations
	sell_text: dict[str, str] = {
		"fr": "Vendre pour",
		"en": "Sell for"
	}

	# For each language,
	for lang_id, (lang_score, lang_name, label, buy_text, _) in LANGUAGE_SCORES.items():
		selector: str = f"@s[scores={{switch.lang={lang_score}}}]"

		# Write the first lines
		write_function(path, f"""# {lang_name}\ntellraw {selector} [{{"text":"[{label.replace('X', titled)}]","color":"yellow"}}]""")
		if shop_name == "sheepwars":
			write_function(path, f"""tellraw {selector} [{{"text":"{SHEEPWARS_CHOOSE_KIT[lang_id]}","color":"red"}}]""")

		# Write the upgrades
		counter: int = mini
		for upgrade_id, data in shop_dict.items():
			if not data:
				continue

			# Extract important data
			counter += 1
			sell_counter = counter + 10000
			upgrade_name: str = data["upgrade_name"].get(lang_id, data["upgrade_name"]["en"])
			ok_message: str = data["ok_messages"].get(lang_id, data["ok_messages"]["en"])
			error_message: str = data["error_messages"].get(lang_id, data["error_messages"]["en"])
			upgrades: list[dict] = data["upgrades"] + [{"price": -1}]	# Add a final fake upgrade

			# Get the custom downgrade message if available
			sell_ok_message: str = ""
			if "downgrade_message" in data:
				sell_ok_message = data["downgrade_message"].get(lang_id, data["downgrade_message"].get("en", ""))

			# Fallback to a generic message if no custom downgrade message is provided
			if not sell_ok_message:
				sell_ok_message = {
					"fr": f"Vous avez vendu un niveau de {upgrade_name} et récupéré un remboursement !",
					"en": f"You sold one level of {upgrade_name} and received a refund!"
				}.get(lang_id, f"You sold one level of {upgrade_name} and received a refund!")

			# Write the ok and error messages for buying
			write_function(path, f"""execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 1.. run tellraw {selector} [{{"text":"{ok_message}","color":"green"}}]""")
			write_function(path, f"""execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 0 run tellraw {selector} [{{"text":"{error_message}","color":"red"}}]""")

			# Write only the ok message for selling (no error message since button is disabled if can't sell)
			write_function(path, f"""execute if score @s switch.trigger.shop matches {sell_counter} if score #success switch.data matches 1.. run tellraw {selector} [{{"text":"{sell_ok_message}","color":"green"}}]""")

			# For each upgrade
			for j, upgrade in enumerate(upgrades):
				price: int = upgrade["price"]
				if price > 0:
					hover_text: str = upgrade["hover_text"].get(lang_id, upgrade["hover_text"]["en"])
					gray_stars: str = STAR * (len(upgrades) - j - 1)
					yellow_stars: str = STAR * j

					# Calculate refund for selling (if level > 0)
					sell_refund: int = int(data['upgrades'][j-1]['price'] * REFUND_PERCENTAGE) if j > 0 else 0

					# Get downgrade text directly from the upgrade dictionary
					downgrade_hover_text: str = ""
					if j > 0:
						hover_text_dict: dict[str, str] = data['upgrades'][j-1]["hover_text"]
						downgrade_hover_text = hover_text_dict.get(lang_id, hover_text_dict.get("en", "")).replace("->", "<-")

					# Tellraw text with buy [+] and sell [-] buttons
					tellraw_json: list[dict] = [
						{"text": upgrade_name, "color": "aqua"},
						{"text": " | ", "bold": True, "color": "dark_gray"},
						{"text": yellow_stars, "color": "yellow"},
						{"text": gray_stars, "color": "gray"},
					]

					# Add sell button [-] if player has at least one level (j > 0)
					if j > 0:
						hover_value = []
						if downgrade_hover_text:
							hover_value.append({"text": f"{downgrade_hover_text}\n", "color": "red"})
						hover_value.append({"text": f"{sell_text[lang_id]} {sell_refund}", "color": "yellow"})
						hover_value.append(MONEY[lang_id])

						tellraw_json.append({
							"text": " [-]", "color": "red",
							"click_event": {"action": "run_command", "command": f"/trigger switch.trigger.shop set {sell_counter}"},
							"hover_event": {"action": "show_text", "value": hover_value}
						})

					# Add buy button [+]
					tellraw_json.append({
						"text": " [+]", "color": "green",
						"click_event": {"action": "run_command", "command": f"/trigger switch.trigger.shop set {counter}"},
						"hover_event": {"action": "show_text", "value": [
							{"text":f"{hover_text}\n","color":"green"},
							{"text":buy_text.replace("X", str(price)), "color":"yellow"},
							MONEY[lang_id]
						]}
					})
				else:
					# Max level case
					yellow_stars: str = STAR * (len(upgrades) - 1)
					tellraw_json: list[dict] = [
						{"text": upgrade_name, "color": "aqua"},
						{"text": " | ", "bold": True, "color": "dark_gray"},
						{"text": yellow_stars, "color": "yellow"},
					]

					# Always show sell button for max level
					if j > 0:
						sell_refund: int = int(data['upgrades'][j-1]['price'] * REFUND_PERCENTAGE)

						# Get downgrade text directly from the upgrade dictionary
						downgrade_hover_text: str = ""
						hover_text_dict: dict[str, str] = data['upgrades'][j-1]["hover_text"]
						downgrade_hover_text = hover_text_dict.get(lang_id, hover_text_dict.get("en", "")).replace("->", "<-")

						hover_value = []
						if downgrade_hover_text:
							hover_value.append({"text": f"{downgrade_hover_text}\n", "color": "red"})
						hover_value.append({"text": f"{sell_text[lang_id]} {sell_refund}", "color": "yellow"})
						hover_value.append(MONEY[lang_id])

						tellraw_json.append({
							"text": " [-]", "color": "red",
							"click_event": {"action": "run_command", "command": f"/trigger switch.trigger.shop set {sell_counter}"},
							"hover_event": {"action": "show_text", "value": hover_value}
						})

					tellraw_json.append({"text":" [+]","color":"gray"})

				# Write the tellraw text
				is_max: str = '' if not (j == (len(upgrades) - 1)) else '..'
				if shop_name != "sheepwars":
					dump: str = stp.super_json_dump(tellraw_json, max_level=0)[:-1]  # Remove the last \n
					write_function(path, f"execute if score @s switch.{shop_name}.{upgrade_id} matches {j}{is_max} run tellraw {selector} {dump}")
				else:
					tellraw_json[0]["click_event"] = {"action": "run_command", "command": f"/trigger switch.trigger.shop set {counter + SHEEPWARS_KIT_OFFSET}"}
					dump: str = stp.super_json_dump(tellraw_json, max_level=0)[:-1]  # Remove the last \n
					write_function(path, f"execute unless score @s switch.sheepwars.chosen_kit matches {counter - mini} if score @s switch.sheepwars.{upgrade_id} matches {j}{is_max} run tellraw {selector} {dump}")
					tellraw_json[0]["color"] = "green"
					del tellraw_json[0]["click_event"]
					dump = stp.super_json_dump(tellraw_json, max_level=0)[:-1]  # Remove the last \n
					write_function(path, f"execute if score @s switch.sheepwars.chosen_kit matches {counter - mini} if score @s switch.sheepwars.{upgrade_id} matches {j}{is_max} run tellraw {selector} {dump}")



# All in one function
def generate_shop(index: int, shop_name: str, shop_dict: dict) -> None:
	""" Generate all the shop files for a specific shop

	Args:
		index		(int):	The index of the shop, e.g. 1 for pitchout
		shop_name	(str):	The name of the shop, e.g. "pitchout"
		shop_dict	(dict):	The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	load_username_change(shop_name, shop_dict)
	write_technicals(index, shop_name, shop_dict)
	write_translations(index, shop_name, shop_dict)


def generate_trigger() -> None:
	""" Generate the trigger function """
	write_function(TRIGGER_PATH, """
# Global shop trigger
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 1..99 run function switch:shop/global

# Minigames shops
""")
	for i, (shop_name, _) in enumerate(SHOPS.items()):
		mini, maxi = get_shop_range(i)
		write_function(TRIGGER_PATH, f"execute if score @s switch.trigger.shop matches {mini}..{maxi} run function switch:shop/{shop_name}")

		# Add trigger handling for sell commands (using counter+10000)
		write_function(TRIGGER_PATH, f"execute if score @s switch.trigger.shop matches {mini+10000}..{maxi+10000} run function switch:shop/{shop_name}")

	write_function(TRIGGER_PATH, """
# Tutorial thing
execute if score @s switch.tutorial matches 4 if score @s switch.money matches ..99 run scoreboard players set @s switch.tutorial 5

# If the player bought something, update the stats
execute if score #success switch.data matches 1.. run function switch:stats/util_update_player

# Reset the shop trigger score to 0
scoreboard players set @s switch.trigger.shop 0
""")


def general_translations() -> None:
	""" Write the general translations of the shop """
		# Write the general shop translations
	path: str = "switch:translations/shop_global"
	for lang_id, (lang_score, lang_name, label, _, access_text) in LANGUAGE_SCORES.items():
		selector: str = f"@s[scores={{switch.lang={lang_score}}}]"
		write_function(path, f"""
# {lang_name}
tellraw {selector} [{{"text":"[","color":"#1b1796"}},{{"text":"{label.replace('X', 'Switch')}","color":"blue"}},{{"text":"]","color":"#1b1796"}},{{"text":" - ","color":"blue"}},{{"score":{{"name":"@s","objective":"switch.money"}},"color":"blue","underlined":true}},{json.dumps(MONEY[lang_id])},{{"text":"\\n"}}]
""")
		# For each shop, write the access text
		for i, shop_name in enumerate(SHOPS.keys()):
			mini: int = get_shop_range(i)[0]
			titled: str = shop_name.replace("_", " ").title()
			write_function(path, f"""tellraw {selector} [{{"text":"➤ ","color":"#1b1796","click_event":{{"action":"run_command","command":"/trigger switch.trigger.shop set {mini}"}}, "hover_event":{{"action":"show_text","value":{{"text":"{access_text.replace('X', titled)}","color":"gray"}}}}}},{{"text":"[","color":"#1b1796"}},{{"text":"{titled}","color":"blue"}},{{"text":"]","color":"#1b1796"}}]""")

	# Write the empty line
	write_function(path, 'tellraw @s ""')


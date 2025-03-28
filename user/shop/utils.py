
# Imports
import stouputils as stp
from python_datapack.utils.database_helper import *
from user.shop.shared_memory import *

# Functions
def load_username_change(config: dict, shop_name: str, shop_dict: dict) -> None:
	""" Add lines for the load function, the username change function\n
	Args:
		config	(dict):	The config of the datapack
		shop_name	(str):	The name of the shop, e.g. "pitchout"
		shop_dict	(dict):	The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	for upgrade_id, data in shop_dict.items():
		if not data:
			continue
		write_function(config, LOAD_PATH, f"scoreboard objectives add switch.{shop_name}.{upgrade_id} dummy\n")
		write_function(config, USERNAME_CHANGE_PATH, f"$scoreboard players operation $(username) switch.{shop_name}.{upgrade_id} = $(old_username) switch.{shop_name}.{upgrade_id}\n")
		write_function(config, INITIALIZE_SHOP_SCORES_PATH, f"scoreboard players add @s switch.{shop_name}.{upgrade_id} 0\n")


def write_technicals(config: dict, index: int, shop_name: str, shop_dict: dict) -> None:
	""" Write the technical part of the shop\n
	Args:
		config	(dict):	The config of the datapack
		index		(int):	The index of the shop, e.g. 1 for pitchout
		shop_name	(str):	The name of the shop, e.g. "pitchout"
		shop_dict	(dict):	The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	mini: int = get_shop_range(index)[0]
	path: str = f"switch:shop/{shop_name}"
	write_function(config, path, "## File attribut: Ignore translations\n")

	# Special case for sheepwars
	if shop_name == "sheepwars":
		write_function(config, path, f"""
# Kit Choosen
scoreboard players add @s switch.sheepwars.choosen_kit 0
""")
		counter: int = 0
		for upgrade in shop_dict.values():
			if not upgrade:
				continue
			counter += 1
			write_function(config, path, f"execute if score @s switch.trigger.shop matches {mini + counter + SHEEPWARS_KIT_OFFSET} run scoreboard players set @s switch.sheepwars.choosen_kit {counter}\n")

	# Write the upgrades
	counter: int = mini
	for upgrade_id, data in shop_dict.items():
		if not data:
			continue
		upgrade_name: str = data["upgrade_name"]["en"]
		write_function(config, path, f"\n# {upgrade_name}")
		counter += 1

		# Write the upgrades checks
		for i, upgrade in enumerate(data['upgrades']):
			price: int = upgrade['price']
			write_function(config, path, f"\nexecute if score @s switch.trigger.shop matches {counter} if score @s switch.{shop_name}.{upgrade_id} matches {i} if score @s switch.money matches {price}.. store success score #success switch.data run scoreboard players remove @s switch.money {price}")

		# If success, add the upgrade
		write_function(config, path, f"""
execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 1.. run scoreboard players add @s switch.{shop_name}.{upgrade_id} 1
execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
""")
		
	# Call messages
	write_function(config, path, f"""
# Messages
execute if score @s switch.trigger.shop matches {mini} run playsound block.note_block.bell ambient @s
function switch:translations/shop_{shop_name}
""")


def write_translations(config: dict, index: int, shop_name: str, shop_dict: dict) -> None:
	""" Write the translations of the shop\n
	Args:
		config	(dict):	The config of the datapack
		index		(int):	The index of the shop, e.g. 1 for pitchout
		shop_name	(str):	The name of the shop, e.g. "pitchout"
		shop_dict	(dict):	The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	path: str = f"switch:translations/shop_{shop_name}"
	titled: str = shop_name.replace("_", " ").title()
	mini: int = get_shop_range(index)[0]

	# For each language,
	for lang_id, (lang_score, lang_name, label, buy_text, _) in LANGUAGE_SCORES.items():
		selector: str = f"@s[scores={{switch.lang={lang_score}}}]"

		# Write the first lines
		write_function(config, path, f"""# {lang_name}\ntellraw {selector} [{{"text":"[{label.replace('X', titled)}]","color":"yellow"}}]\n""")
		if shop_name == "sheepwars":
			write_function(config, path, f"""tellraw {selector} [{{"text":"{SHEEPWARS_CHOOSE_KIT[lang_id]}","color":"red"}}]\n""")

		# Write the upgrades
		counter: int = mini
		for upgrade_id, data in shop_dict.items():
			if not data:
				continue

			# Extract important data
			counter += 1
			upgrade_name: str = data["upgrade_name"].get(lang_id, data["upgrade_name"]["en"])
			ok_message: str = data["ok_messages"].get(lang_id, data["ok_messages"]["en"])
			error_message: str = data["error_messages"].get(lang_id, data["error_messages"]["en"])
			upgrades: list[dict] = data["upgrades"] + [{"price": -1}]	# Add a final fake upgrade

			# Write the ok and error messages
			write_function(config, path, f"""execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 1.. run tellraw {selector} [{{"text":"{ok_message}","color":"green"}}]\n""")
			write_function(config, path, f"""execute if score @s switch.trigger.shop matches {counter} if score #success switch.data matches 0 run tellraw {selector} [{{"text":"{error_message}","color":"red"}}]\n""")

			# For each upgrade
			for j, upgrade in enumerate(upgrades):
				price: int = upgrade["price"]
				if price > 0:
					hover_text: str = upgrade["hover_text"].get(lang_id, upgrade["hover_text"]["en"])
					gray_stars: str = STAR * (len(upgrades) - j - 1)
					yellow_stars: str = STAR * j

					# Tellraw text
					tellraw_json: list[dict] = [
						{"text": upgrade_name, "color": "aqua"},
						{"text": " | ", "bold": True, "color": "dark_gray"},
						{"text": yellow_stars, "color": "yellow"},
						{"text": gray_stars, "color": "gray"},
						{
							"text": " [+]", "color": "green",
							"click_event": {"action": "run_command", "command": f"/trigger switch.trigger.shop set {counter}"},
							"hover_event": {"action": "show_text", "value": [
								{"text":f"{hover_text}\n","color":"green"},
								{"text":buy_text.replace("X", str(price)) + MONEY[lang_id],"color":"yellow"}
							]}
						}
					]
				else:
					yellow_stars: str = STAR * (len(upgrades) - 1)
					tellraw_json: list[dict] = [
						{"text": upgrade_name, "color": "aqua"},
						{"text": " | ", "bold": True, "color": "dark_gray"},
						{"text": yellow_stars, "color": "yellow"},
						{"text":" [+]","color":"gray"}
					]

				# Write the tellraw text
				if shop_name != "sheepwars":
					write_function(config, path, f"execute if score @s switch.{shop_name}.{upgrade_id} matches {j} run tellraw {selector} {stp.super_json_dump(tellraw_json, max_level=0)}")
				else:
					tellraw_json[0]["click_event"] = {"action": "run_command", "command": f"/trigger switch.trigger.shop set {counter + SHEEPWARS_KIT_OFFSET}"}
					write_function(config, path, f"execute unless score @s switch.sheepwars.choosen_kit matches {counter - mini} if score @s switch.sheepwars.{upgrade_id} matches {j} run tellraw {selector} {stp.super_json_dump(tellraw_json, max_level=0)}")
					tellraw_json[0]["color"] = "green"
					del tellraw_json[0]["click_event"]
					write_function(config, path, f"execute if score @s switch.sheepwars.choosen_kit matches {counter - mini} if score @s switch.sheepwars.{upgrade_id} matches {j} run tellraw {selector} {stp.super_json_dump(tellraw_json, max_level=0)}")



# All in one function
def generate_shop(config: dict, index: int, shop_name: str, shop_dict: dict) -> None:
	""" Generate all the shop files for a specific shop\n
	Args:
		config		(dict):	The config of the datapack
		index		(int):	The index of the shop, e.g. 1 for pitchout
		shop_name	(str):	The name of the shop, e.g. "pitchout"
		shop_dict	(dict):	The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	load_username_change(config, shop_name, shop_dict)
	write_technicals(config, index, shop_name, shop_dict)
	write_translations(config, index, shop_name, shop_dict)


def generate_trigger(config: dict) -> None:
	""" Generate the trigger function
	Args:
		config	(dict):	The config of the datapack
	"""
	write_function(config, TRIGGER_PATH, """
# Global shop trigger
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 1..99 run function switch:shop/global

# Minigames shops
""")
	for i, (shop_name, _) in enumerate(SHOPS.items()):
		mini, maxi = get_shop_range(i)
		write_function(config, TRIGGER_PATH, f"execute if score @s switch.trigger.shop matches {mini}..{maxi} run function switch:shop/{shop_name}\n")
	write_function(config, TRIGGER_PATH, """
# Tutorial thing
execute if score @s switch.tutorial matches 4 if score @s switch.money matches ..99 run scoreboard players set @s switch.tutorial 5

# If the player bought something, update the stats
execute if score #success switch.data matches 1.. run function switch:stats/util_update_player

# Reset the shop trigger score to 0
scoreboard players set @s switch.trigger.shop 0
""")


def general_translations(config: dict) -> None:
	""" Write the general translations of the shop
	Args:
		config	(dict):	The config of the datapack
	"""
		# Write the general shop translations
	path: str = f"switch:translations/shop_global"
	for lang_id, (lang_score, lang_name, label, _, access_text) in LANGUAGE_SCORES.items():
		selector: str = f"@s[scores={{switch.lang={lang_score}}}]"
		write_function(config, path, f"""
# {lang_name}
tellraw {selector} [{{"text":"[{label.replace('X', 'Switch')}]","color":"yellow"}}]
tellraw {selector} [{{"text":"","color":"gold"}},{{"score":{{"name":"@s","objective":"switch.money"}}}},{{"text":"{MONEY[lang_id]}\\n"}}]
""")
		# For each shop, write the access text
		for i, shop_name in enumerate(SHOPS.keys()):
			mini: int = get_shop_range(i)[0]
			titled: str = shop_name.replace("_", " ").title()
			write_function(config, path, f"""tellraw {selector} [{{"text":"➤ ","color":"gold","click_event":{{"action":"run_command","command":"/trigger switch.trigger.shop set {mini}"}}, "hover_event":{{"action":"show_text","value":{{"text":"{access_text.replace('X', titled)}","color":"gray"}}}}}},{{"text":"[{titled}]","color":"yellow"}}]\n""")

	# Write the empty line
	write_function(config, path, 'tellraw @s ""\n')


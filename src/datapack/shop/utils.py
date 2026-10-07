
# Imports
import json

from stewbeet import JsonDict, Mem, write_function

from .display import write_translations
from .shared_memory import (
	INITIALIZE_SHOP_SCORES_PATH,
	LANGUAGE_SCORES,
	LOAD_PATH,
	REFUND_PERCENTAGE,
	SHEEPWARS_KIT_OFFSET,
	TRIGGER_PATH,
	USERNAME_CHANGE_PATH,
	get_money,
	get_shop_range,
	ordered_shops,
)


# Functions
def load_username_change(shop_name: str, shop_dict: JsonDict) -> None:
	""" Add lines for the load function, the username change function

	Args:
		shop_name: The name of the shop, e.g. "pitchout"
		shop_dict: The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	ns: str = Mem.ctx.project_id
	objectives: list[str] = [f"{ns}.{shop_name}.{upgrade_id}" for upgrade_id in shop_dict]
	write_function(f"{ns}:{LOAD_PATH}", "\n".join(f"scoreboard objectives add {objective} dummy" for objective in objectives))
	write_function(f"{ns}:{USERNAME_CHANGE_PATH}", "\n".join(
		f"$scoreboard players operation $(username) {objective} = $(old_username) {objective}" for objective in objectives))
	write_function(f"{ns}:{INITIALIZE_SHOP_SCORES_PATH}", "\n".join(
		f"scoreboard players add @s {objective} 0" for objective in objectives))


def write_technicals(index: int, shop_name: str, shop_dict: JsonDict) -> None:
	""" Write the technical part of the shop

	Args:
		index:     The index of the shop, e.g. 1 for pitchout
		shop_name: The name of the shop, e.g. "pitchout"
		shop_dict: The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	ns: str = Mem.ctx.project_id
	mini: int = get_shop_range(index)[0]
	path: str = f"{ns}:shop/{shop_name}"

	upgrades: list[tuple[str, JsonDict]] = [(upgrade_id, data) for upgrade_id, data in shop_dict.items() if data]

	# Sheepwars upgrades are kits, and clicking a kit's name chooses it
	if shop_name == "sheepwars":
		write_function(path, f"""
# Kit Chosen
scoreboard players add @s {ns}.sheepwars.chosen_kit 0
""")
		for kit in range(1, len(upgrades) + 1):
			write_function(path, f"execute if score @s {ns}.trigger.shop matches {mini + kit + SHEEPWARS_KIT_OFFSET} run scoreboard players set @s {ns}.sheepwars.chosen_kit {kit}")

	for counter, (upgrade_id, data) in enumerate(upgrades, start=mini + 1):
		write_upgrade_trade(path, shop_name, upgrade_id, data, counter)

	# Call messages
	write_function(path, f"""
# Messages
execute if score @s {ns}.trigger.shop matches {mini} run playsound block.note_block.bell ambient @s
function {ns}:shop/translations/{shop_name}
""")


def write_upgrade_trade(path: str, shop_name: str, upgrade_id: str, data: JsonDict, counter: int) -> None:
	""" Write the buying and selling of one upgrade.

	Args:
		data:    The upgrade, e.g. {"upgrade_name": {...}, "upgrades": [{"price": 10, ...}, ...]}
		counter: Trigger value that buys a level; counter + 10000 sells one back.
	"""
	ns: str = Mem.ctx.project_id
	upgrade_name: str = data["upgrade_name"]["en"]
	sell_counter: int = counter + 10000
	prices: list[int] = [upgrade["price"] for upgrade in data["upgrades"]]
	score: str = f"{ns}.{shop_name}.{upgrade_id}"

	# A human in a running infected game gets the new equipment right away
	human_give: str = f"if score #success {ns}.data matches 1.. if entity @s[team={ns}.temp.human] run function {ns}:modes/infected/death/human_give"
	refreshes: bool = shop_name == "infected" and upgrade_id in ("sword", "armor")

	# Buying a level costs its price
	write_function(path, f"\n# {upgrade_name}")
	for level, price in enumerate(prices):
		write_function(path, f"execute if score @s {ns}.trigger.shop matches {counter} if score @s {score} matches {level} if score @s {ns}.money matches {price}.. store success score #success {ns}.data run scoreboard players remove @s {ns}.money {price}")
	write_function(path, f"""
execute if score @s {ns}.trigger.shop matches {counter} if score #success {ns}.data matches 1.. run scoreboard players add @s {score} 1
execute if score @s {ns}.trigger.shop matches {counter} if score #success {ns}.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s {ns}.trigger.shop matches {counter} if score #success {ns}.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s
{f"execute if score @s {ns}.trigger.shop matches {counter} {human_give}" if refreshes else ""}
""")

	# Selling a level refunds part of the price paid for it, the last match staying open-ended
	write_function(path, f"\n# Selling {upgrade_name}")
	for level, price in enumerate(prices, start=1):
		matches: str = f"{level}.." if level == len(prices) else str(level)
		write_function(path, f"execute if score @s {ns}.trigger.shop matches {sell_counter} if score @s {score} matches {matches} store success score #success {ns}.data run scoreboard players add @s {ns}.money {int(price * REFUND_PERCENTAGE)}")
	write_function(path, f"""
execute if score @s {ns}.trigger.shop matches {sell_counter} if score #success {ns}.data matches 1.. run scoreboard players remove @s {score} 1
execute if score @s {ns}.trigger.shop matches {sell_counter} if score #success {ns}.data matches 1.. run playsound entity.player.levelup ambient @s
{f"execute if score @s {ns}.trigger.shop matches {sell_counter} {human_give}" if refreshes else ""}
""")


# All in one function
def generate_shop(index: int, shop_name: str, shop_dict: JsonDict) -> None:
	""" Generate all the shop files for a specific shop

	Args:
		index:     The index of the shop, e.g. 1 for pitchout
		shop_name: The name of the shop, e.g. "pitchout"
		shop_dict: The dictionary of the shop, e.g. {"boots": {...}, "ender_pearl": {...}}
	"""
	load_username_change(shop_name, shop_dict)
	write_technicals(index, shop_name, shop_dict)
	write_translations(index, shop_name, shop_dict)


def generate_trigger() -> None:
	""" Generate the trigger function """
	ns: str = Mem.ctx.project_id
	write_function(f"{ns}:{TRIGGER_PATH}", f"""
# Global shop trigger
scoreboard players set #success {ns}.data 0
execute if score @s {ns}.trigger.shop matches 1..99 run function {ns}:shop/global

# Minigames shops
""")
	for i, (shop_name, _) in enumerate(ordered_shops().items()):
		mini, maxi = get_shop_range(i)
		write_function(f"{ns}:{TRIGGER_PATH}", f"execute if score @s {ns}.trigger.shop matches {mini}..{maxi} run function {ns}:shop/{shop_name}")

		# Add trigger handling for sell commands (using counter+10000)
		write_function(f"{ns}:{TRIGGER_PATH}", f"execute if score @s {ns}.trigger.shop matches {mini+10000}..{maxi+10000} run function {ns}:shop/{shop_name}")

	write_function(f"{ns}:{TRIGGER_PATH}", f"""
# Tutorial thing
execute if score @s {ns}.tutorial matches 4 if score @s {ns}.money matches ..99 run scoreboard players set @s {ns}.tutorial 5

# If the player bought something, update the stats
execute if score #success {ns}.data matches 1.. run function {ns}:stats/util_update_player

# Reset the shop trigger score to 0
scoreboard players set @s {ns}.trigger.shop 0
""")


def general_translations() -> None:
	""" Write the general translations of the shop """
	ns: str = Mem.ctx.project_id
		# Write the general shop translations
	path: str = f"{ns}:shop/translations/global"
	for lang_id, (lang_score, lang_name, label, _, access_text) in LANGUAGE_SCORES.items():
		selector: str = f"@s[scores={{{ns}.lang={lang_score}}}]"
		write_function(path, f"""
# {lang_name}
tellraw {selector} [{{"text":"[","color":"#1b1796"}},{{"text":"{label.replace('X', 'Switch')}","color":"blue"}},{{"text":"]","color":"#1b1796"}},{{"text":" - ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}},"color":"blue","underlined":true}},{json.dumps(get_money()[lang_id])},{{"text":"\\n"}}]
""")
		# For each shop, write the access text
		for i, shop_name in enumerate(ordered_shops()):
			mini: int = get_shop_range(i)[0]
			titled: str = shop_name.replace("_", " ").title()
			write_function(path, f"""tellraw {selector} [{{"text":"➤ ","color":"#1b1796","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.shop set {mini}"}}, "hover_event":{{"action":"show_text","value":{{"text":"{access_text.replace('X', titled)}","color":"gray"}}}}}},{{"text":"[","color":"#1b1796"}},{{"text":"{titled}","color":"blue"}},{{"text":"]","color":"#1b1796"}}]""")

	# Write the empty line
	write_function(path, 'tellraw @s ""')



def write_raw_functions() -> None:
	""" Migrate the 3 hand-authored shop functions and the macro description translation. """
	ns: str = Mem.ctx.project_id
	write_function(f"{ns}:shop/global", f"""
playsound block.note_block.bell ambient @s
function {ns}:shop/translations/global
""")
	write_function(f"{ns}:shop/description", f"""
$function {ns}:shop/translations/description {{id:"$(id)"}}
playsound block.note_block.bell ambient @s
""")
	write_function(f"{ns}:shop/pitchout", f"""
# Tutorial stuff
execute if score @s {ns}.tutorial matches 3 run scoreboard players set @s {ns}.tutorial 4
""")
	write_function(f"{ns}:shop/translations/description", rf"""
# French
$tellraw @s[scores={{{ns}.lang=0}}] ["\n",{{"nbt":"minigames[{{id:\"$(id)\"}}].lore_fr","storage":"{ns}:main","interpret":true}},"\n"]

# English
$tellraw @s[scores={{{ns}.lang=1}}] ["\n",{{"nbt":"minigames[{{id:\"$(id)\"}}].lore_en","storage":"{ns}:main","interpret":true}},"\n"]
""")


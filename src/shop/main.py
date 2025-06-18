
# Imports
import stouputils as stp
from python_datapack.utils.database_helper import *
from user.shop.utils import *

# Main function
@stp.measure_time(stp.progress, "Generated the shops")
def main(config: dict) -> None:

	# Generate all the shops
	for i, (shop_name, shop_dict) in enumerate(SHOPS.items()):
		generate_shop(config, i, shop_name, shop_dict)

	# Write the trigger function
	generate_trigger(config)

	# Write the general translations
	general_translations(config)


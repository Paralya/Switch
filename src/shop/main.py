
# Imports
import stouputils as stp

from .utils import *


# Main function
@stp.measure_time(stp.progress, "Generated the shops")
def main() -> None:

	# Generate all the shops
	for i, (shop_name, shop_dict) in enumerate(SHOPS.items()):
		generate_shop(i, shop_name, shop_dict)

	# Write the trigger function
	generate_trigger()

	# Write the general translations
	general_translations()


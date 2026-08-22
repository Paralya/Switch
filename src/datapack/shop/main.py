
# Imports
from .shared_memory import ordered_shops
from .utils import (
	general_translations,
	generate_shop,
	generate_trigger,
	write_raw_functions,
)


# Main function
def main() -> None:

	# Write the hand-authored shop functions first (global / description / pitchout).
	# pitchout's tutorial body shares the switch:shop/pitchout path with the generated upgrade
	# logic below (write_function appends), so it must be written before generate_shop().
	write_raw_functions()

	# Generate all the shops
	for i, (shop_name, shop_dict) in enumerate(ordered_shops().items()):
		generate_shop(i, shop_name, shop_dict)

	# Write the trigger function
	generate_trigger()

	# Write the general translations
	general_translations()


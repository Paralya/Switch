
# Imports
from python_datapack.utils.database_helper import *
from user.shop.utils import *

# Main function
@measure_time(progress, "Generated the shops")
def main(config: dict) -> None:
	for shop_name, shop_dict in SHOPS.items():
		generate_shop(shop_name, shop_dict)


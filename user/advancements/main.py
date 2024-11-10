
# Imports
from python_datapack.utils.database_helper import *
from user.advancements.utils import *

# Main function
@measure_time(progress, "Generated the advancements")
def main(config: dict) -> None:
	generate_adv_dictionnary()
	make_load_file(config)
	make_update_percentages(config)
	hidden_advancements(config)
	visible_advancements(config)
	pass


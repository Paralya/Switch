
# Imports
from .by_mode import write_by_mode_index
from .shared_memory import generate_adv_dictionnary
from .utils import (
	category_advancements,
	hidden_advancements,
	make_advancement_macros,
	make_load_file,
	make_percentages_recalculations,
	make_reward_functions,
	make_update_percentages,
	visible_advancements,
)


# Main function
def main() -> None:
	generate_adv_dictionnary()
	make_load_file()
	make_update_percentages()
	make_reward_functions()
	make_percentages_recalculations()
	make_advancement_macros()
	hidden_advancements()
	visible_advancements()
	category_advancements()
	write_by_mode_index()


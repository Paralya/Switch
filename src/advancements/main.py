
# Imports
import stouputils as stp

from .utils import *


# Main function
@stp.measure_time(message="Generated the advancements")
def main() -> None:
	generate_adv_dictionnary()
	make_load_file()
	make_update_percentages()
	make_reward_functions()
	make_percentages_recalculations()
	make_advancement_macros()
	hidden_advancements()
	visible_advancements()
	pass


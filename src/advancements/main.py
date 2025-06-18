
# Imports
import stouputils as stp
from python_datapack.utils.database_helper import *

from .utils import *


# Main function
@stp.measure_time(stp.progress, "Generated the advancements")
def main() -> None:
	generate_adv_dictionnary()
	make_load_file()
	make_update_percentages()
	hidden_advancements()
	visible_advancements()
	pass


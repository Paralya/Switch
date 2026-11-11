

# Constants
from stewbeet import JsonDict


class SharedMemory:

	# Constants (paths relative to the project namespace, e.g. f"{ns}:{FONT_FILE_PATH}")
	FONT_FILE_PATH: str = "main"

	# Variables
	providers: list[JsonDict] = []  # Providers variables (used for the final font file)  # noqa: RUF012


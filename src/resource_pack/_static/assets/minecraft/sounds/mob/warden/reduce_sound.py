""" Python script that reduces the volume of all the .ogg files in the folder. """

# Imports
import os
import stouputils as stp
import subprocess

# Constants
ROOT: str = stp.get_root_path(__file__)
""" The path to this file's directory. """
DIVISOR: float = 10.0
""" The divisor to divide the volume by. """
DESTINATION: str = f"{ROOT}/reduced"
""" The destination path. """

# Functions
def handle_file(file_path: str) -> bool:
	""" Handle a file. """
	# Skip if not an ogg file
	if not file_path.endswith(".ogg"):
		return False
	
	# Get the output path
	output_path: str = f"{DESTINATION}/{os.path.basename(file_path)}"
	
	# Reduce the volume of the file
	try:
		# Use ffmpeg to reduce the volume
		command: str = f'ffmpeg -i "{file_path}" -filter:a "volume=1/{DIVISOR}" -y "{output_path}"'
		subprocess.run(command, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
		return True
	except Exception as e:
		stp.warning(f"Error reducing volume of {file_path}: {e}")
		return False

# Main
if __name__ == "__main__":
	os.makedirs(DESTINATION, exist_ok=True)
	file_paths: list[str] = [f"{ROOT}/{file}" for file in os.listdir(ROOT)]
	stp.multithreading(handle_file, file_paths, desc="Reducing volume of all .ogg files.", max_workers=len(file_paths), verbose=1)


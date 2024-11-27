
# Install required package
import sys
import os
try:
	from python_datapack import build_process
except ImportError:
	print("python_datapack package not found, installing it...")
	os.system(f"{sys.executable} -m pip install python_datapack")
	print("\npython_datapack package has been installed.\nPlease restart the build script!")
	sys.exit(-1)

# Setup config
from config import configuration

# Import my code
from user.setup_database import main as setup_database_main
from user.setup_external_database import main as setup_external_database_main
from user.link import main as link_main	# Called near the end of the build process

# Run build process
if __name__ == "__main__":
	dump_folder = configuration["build_copy_destinations"][0][0]
	if not os.path.exists(dump_folder):
		os.makedirs(dump_folder, exist_ok = True)
		with open(f"{dump_folder}/_switch_dump.txt", "w") as file:
			file.write("Folder created")

	build_process(configuration, setup_database_main, setup_external_database_main, link_main)


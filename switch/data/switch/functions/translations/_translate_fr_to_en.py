
## Python script that will try to translate all french message to english using a Translator API
# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()
	pass

# Constants and imports
import deepl
import time
source = ("French", "fr", "switch.lang=0")
target = ("English", "en-us", "switch.lang=1")
auth_key = ""
with open("_deepl_auth_key.txt", "r") as f:
	auth_key = f.read().strip()
	pass
translator = deepl.Translator(auth_key)

# For each file, translate the source messages to english
start_time = time.time()
for root, dirs, files in os.walk("./"):
	for file in files:
		if file.endswith(".mcfunction"):
			path = os.path.join(root, file).replace("\\", "/")
			with open(path, "r", encoding="utf-8") as f:
				content = f.read()
				if f"# {target[0]}" in content:
					continue

				# Get the french messages
				source_messages = ""
				langs = content.split("\n# ")
				for language in langs:
					if language.startswith(source[0]):
						source_messages = "\n".join(language.split("\n")[1:])
						break
				
				# Translate the french messages to english
				translated_messages = ""
				if source_messages:
					translation = translator.translate_text(source_messages, source_lang=source[1], target_lang=target[1])
					translated_messages = translation.text
					print(f"Translation done for {path}")
				pass

			# Write the english messages to the file
			with open(path, "w", encoding="utf-8") as f:
				f.write(content + f"# {target[0]}\n" + translated_messages.replace(source[2], target[2]))

			pass
		pass
	pass

# Print final time
print(f"Finished translating in {round(time.time() - start_time, 3)}s")



# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the bombardement translation functions at switch:modes/bombardement/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/bombardement/translations"

	# /death
	write_function(f"{path}/death", f"""
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" est mort, il a survécu "}},{{"score":{{"name":"#bombardement_seconds","objective":"{ns}.data"}}}},{{"text":" secondes !"}}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" died, survived "}},{{"score":{{"name":"#bombardement_seconds","objective":"{ns}.data"}}}},{{"text":" seconds!"}}]
""")

	# /record_tellraw (macro: the record standing, whose runners_up are listed when someone helped)
	paralya: str = f'{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}}'
	helpers: str = f'{{"nbt":"bombardement.runners_up","storage":"{ns}:records","interpret":true,"separator":{{"text":", "}},"color":"gray"}}'
	lines: list[str] = []
	for lang, new_record, current_record, thanks, end in (
		(0, "Nouveau record de $(seconds) secondes par $(player)", "Record actuel de $(seconds) secondes détenu par $(player)", ", grâce à ", " !"),
		(1, "New record of $(seconds) seconds by $(player)", "Current record of $(seconds) seconds held by $(player)", ", thanks to ", "!"),
	):
		for condition, record, ending in (("if", new_record, end), ("unless", current_record, "")):
			tellraw: str = f'tellraw @a[scores={{{ns}.lang={lang}}},tag=!detached]'
			head: str = f'["",{paralya},{{"text":" {record}","color":"yellow"}}'
			tail: str = f',{{"text":"{ending}","color":"yellow"}}]' if ending else "]"
			base: str = f'$execute {condition} score #bombardement_seconds {ns}.data > #record {ns}.data'
			lines.append(f'{base} unless data storage {ns}:records bombardement.runners_up[0] run {tellraw} {head}{tail}')
			lines.append(f'{base} if data storage {ns}:records bombardement.runners_up[0] run {tellraw} {head},{{"text":"{thanks}","color":"gray"}},{helpers}{tail}')
	write_function(f"{path}/record_tellraw", "\n" + "\n".join(lines) + "\n")

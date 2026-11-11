
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the pitch_creep translation functions at switch:modes/pitch_creep/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/pitch_creep/translations"

	# /death
	write_function(f"{path}/death", f"""
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" est mort, il a survécu "}},{{"score":{{"name":"#pitch_creep_seconds","objective":"{ns}.data"}}}},{{"text":" secondes !"}}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" died, survived "}},{{"score":{{"name":"#pitch_creep_seconds","objective":"{ns}.data"}}}},{{"text":" seconds!"}}]
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
# French
execute if score #process_end {ns}.data matches 1 if entity @a[scores={{{ns}.alive=1..}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "}},{{"selector":"@a[scores={{{ns}.alive=1..}}]"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[scores={{{ns}.alive=1..}}] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Il n'y a eu aucun gagnant ;("}}]

# English
execute if score #process_end {ns}.data matches 1 if entity @a[scores={{{ns}.alive=1..}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The following players have won the game: "}},{{"selector":"@a[scores={{{ns}.alive=1..}}]"}}]
execute if score #process_end {ns}.data matches 1 unless entity @a[scores={{{ns}.alive=1..}}] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! There were no winners ;("}}]
""")


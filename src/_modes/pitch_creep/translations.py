
# Imports
from stewbeet import Mem, write_function
from ..common import write_server_announce


def write_translations():
	""" Write the pitch_creep translation functions at switch:modes/pitch_creep/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/pitch_creep/translations"

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Pitch Creep dans 5 secondes, votre objectif est de repousser tous les creepers qui s'approchent de vous afin de survivre jusqu'à la fin du temps imparti !", "Starting the Pitch Creep game in 5 seconds, your goal is to knockback all creepers approaching you in order to survive until the time runs out!")

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#pitch_creep_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#pitch_creep_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if entity @a[scores={switch.alive=1..}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "},{"selector":"@a[scores={switch.alive=1..}]"}]
execute if score #process_end switch.data matches 1 unless entity @a[scores={switch.alive=1..}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if entity @a[scores={switch.alive=1..}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The following players have won the game: "},{"selector":"@a[scores={switch.alive=1..}]"}]
execute if score #process_end switch.data matches 1 unless entity @a[scores={switch.alive=1..}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! There were no winners ;("}]
""")


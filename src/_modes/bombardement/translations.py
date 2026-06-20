
# Imports
from stewbeet import Mem, write_function
from ..common import write_server_announce


def write_translations():
	""" Write the bombardement translation functions at switch:modes/bombardement/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/bombardement/translations"

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Bombardment dans 10 secondes, esquivez les boulets de canon et ne tombez pas dans l'eau !", "Bombing game starts in 10 seconds, dodge the cannonballs and don't fall in the water!")

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#bombardement_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#bombardement_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /record_tellraw
	write_function(f"{path}/record_tellraw", """
# French
$execute if score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(seconds) secondes par $(player) !","color":"yellow"}]
$execute unless score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(seconds) secondes détenu par $(player)","color":"yellow"}]

# English
$execute if score #bombardment_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New record of $(seconds) seconds by $(player)!","color":"yellow"}]
$execute unless score #bombardment_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(seconds) seconds held by $(player)","color":"yellow"}]
""")

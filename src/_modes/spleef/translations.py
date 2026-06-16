
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the spleef translation functions at switch:modes/spleef/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/spleef/translations"

	# /border_reduction_setup
	write_function(f"{path}/border_reduction_setup", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" 30 secondes sont passées, réduction de la bordure !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" 30 seconds are up, shrinking the border!"}]
""")

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,gamemode=survival]"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[tag=!detached,gamemode=survival]"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up! There were no winners ;("}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Spleef dans 5 secondes, creuser sous les pieds des joueurs et soyez le dernier survivant pour remporter la partie !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Spleef game starts in 5 seconds, dig under the players' feet and be the last survivor to win the game!"}]
""")


# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the pitchout translation functions at switch:modes/pitchout/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/pitchout/translations"

	# /death
	write_function(f"{path}/death", """
# French
execute if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"dark_red"},{"text":" est mort définitivement, il a survécu "},{"score":{"name":"#pitchout_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est tombé, il ne lui reste plus qu'une vie !"}]
execute if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est tombé, il lui reste seulement 2 vies !"}]

# English
execute if entity @s[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"dark_red"},{"text":" died permanently, survived "},{"score":{"name":"#pitchout_seconds","objective":"switch.data"}},{"text":" seconds!"}]
execute if entity @s[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" has fallen, only one life left!"}]
execute if entity @s[scores={switch.alive=3}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" has fallen, only 2 lives left!"}]
""")

	# /in_water_with_cooldown
	write_function(f"{path}/in_water_with_cooldown", """
# French
tellraw @s[scores={switch.lang=0}] [{"text":"Vous êtes tombé, mais vous aviez encore votre bouclier donc vous ne perdez pas de vie","color":"yellow"}]

# English
tellraw @s[scores={switch.lang=1}] [{"text":"You fell, but you still had your shield so you don't lose any life","color":"yellow"}]
""")

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[scores={switch.alive=1..}]"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[scores={switch.alive=1..}]"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up! There were no winners ;("}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitchout, votre objectif est d'expulser les autres joueurs grâce à vos équipements et d'être le dernier en vie à la fin !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Starting the Pitchout game, your goal is to knockback the other players with your equipment and be the last one alive at the end!"}]
""")

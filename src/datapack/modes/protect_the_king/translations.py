
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the protect_the_king translation functions at switch:modes/protect_the_king/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/protect_the_king/translations"

	# /detect_end
	write_function(f"{path}/detect_end", f"""
# French
execute if score #protect_the_king_seconds {ns}.data matches 900 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 15 minutes !"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"rouges","color":"red"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,team={ns}.temp.red_king]"}},{{"text":", "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.red]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"bleus","color":"blue"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,team={ns}.temp.blue_king]"}},{{"text":", "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}}]

# English
execute if score #protect_the_king_seconds {ns}.data matches 900 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, time up! Neither side is the winner after 15 minutes!"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, victory for "}},{{"text":"red","color":"red"}},{{"text":" team! GG to "}},{{"selector":"@a[tag=!detached,team={ns}.temp.red_king]"}},{{"text":", "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.red]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, victory for "}},{{"text":"blue","color":"blue"}},{{"text":" team! GG to "}},{{"selector":"@a[tag=!detached,team={ns}.temp.blue_king]"}},{{"text":", "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, neither side has won because there are no players left alive!"}}]
""")

	# /start
	write_function(f"{path}/start", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de Protect The King, deux équipes s'affrontent et la partie se termine lorsqu'un des deux rois est tué !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPNewFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Start the Protect The King game, two teams compete and the game ends when one of the two kings is killed!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPNewEN","storage":"{ns}:main","interpret":true}}]
""")

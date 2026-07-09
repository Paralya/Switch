
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the layers_2_teams translation functions at switch:modes/layers_2_teams/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/layers_2_teams/translations"

	# /detect_end
	write_function(f"{path}/detect_end", f"""
# French
execute if score #remaining_time {ns}.data matches 1 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 12 minutes !"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"rouges","color":"red"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.red]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"bleus","color":"blue"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}}]

# English
execute if score #remaining_time {ns}.data matches 1 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, time up! Neither side is the winner after 12 minutes!"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, winner team is "}},{{"text":"red","color":"red"}},{{"text":"! GG to "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.red]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, winner team is "}},{{"text":"blue","color":"blue"}},{{"text":"! GG to "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, neither side has won because there are no players left alive!"}}]
""")

	# /second
	write_function(f"{path}/second", f"""
# French
execute if score #layers_2_teams_seconds {ns}.data matches 30 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"Les murs d'obsidienne ne sont plus indestructibles !","color":"red"}}

# English
function {ns}:translations/common/basic_actionbar
execute if score #layers_2_teams_seconds {ns}.data matches 30 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"The obsidian walls are no longer indestructible!","color":"red"}}
""")

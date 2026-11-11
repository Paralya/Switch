
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the thunder_spear translation functions at switch:modes/thunder_spear/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/thunder_spear/translations"

	# /process_end
	write_function(f"{path}/process_end", f"""
# French
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "}},{{"selector":"@a[tag=!detached,tag={ns}.winner]","color":"yellow"}},{{"text":" avec un total de "}},{{"score":{{"name":"#max","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" kills !"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu avec une égalité entre "}},{{"selector":"@a[tag=!detached,tag={ns}.winner]","color":"yellow"}},{{"text":" avec un total de "}},{{"score":{{"name":"#max","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" kills !"}}]

# English
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! The winner of the game is "}},{{"selector":"@a[tag=!detached,tag={ns}.winner]","color":"yellow"}},{{"text":" with a total of "}},{{"score":{{"name":"#max","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" kills!"}}]
execute if score #process_end {ns}.data matches 1 unless score #remaining_players {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game with a tie between "}},{{"selector":"@a[tag=!detached,tag={ns}.winner]","color":"yellow"}},{{"text":" with a total of "}},{{"score":{{"name":"#max","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" kills!"}}]
""")

	# /second
	write_function(f"{path}/second", f"""
# French
execute if score #thunder_spear_seconds {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"ParalyaAstuceFR","storage":"{ns}:main","interpret":true}},{{"text":" Scrollez dans votre hotbar pour utiliser le grappin en seconde main !"}}]

# English
execute if score #thunder_spear_seconds {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"ParalyaAstuceEN","storage":"{ns}:main","interpret":true}},{{"text":" Scroll through your hotbar to use the grappling hook in your offhand!"}}]
""")



# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the thunder_spear translation functions at switch:modes/thunder_spear/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/thunder_spear/translations"

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,tag=switch.winner]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills !"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une égalité entre "},{"selector":"@a[tag=!detached,tag=switch.winner]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills !"}]

# English
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[tag=!detached,tag=switch.winner]","color":"yellow"},{"text":" with a total of "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills!"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game with a tie between "},{"selector":"@a[tag=!detached,tag=switch.winner]","color":"yellow"},{"text":" with a total of "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills!"}]
""")

	# /second
	write_function(f"{path}/second", """
# French
execute if score #thunder_spear_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaAstuceFR","storage":"switch:main","interpret":true},{"text":" Scrollez dans votre hotbar pour utiliser le grappin en seconde main !"}]

# English
execute if score #thunder_spear_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaAstuceEN","storage":"switch:main","interpret":true},{"text":" Scroll through your hotbar to use the grappling hook in your offhand!"}]
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Thunder Spear dans 10 secondes, vous devez tuer le plus de joueurs grâce à vos lances foudroyantes, vous pouvez esquiver les attaques des autres joueurs en utilisant votre équipement tridimensionnel dans votre deuxième main !", "Thunder Spear game starts in 10 seconds, you have to kill as many players as possible with your explosive armament, you can dodge other players' attacks using your three-dimensional maneuver gear in your second hand!")


# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_server_announce


def write_translations():
	""" Write the glassrunner translation functions at switch:modes/glassrunner/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/glassrunner/translations"

	# /apocalypse_start
	write_function(f"{path}/apocalypse_start", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" C'est l'APOCALYPSE !","color":"dark_red"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" This is APOCALYPSE!","color":"dark_red"}}]
""")

	# /end_blue
	write_function(f"{path}/end_blue", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Les bleus ont gagnés"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of the mini-game! The blues have won"}}]
""")

	# /end_null
	write_function(f"{path}/end_null", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Personne n'a gagné, le jeu c'est fini au temps"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of mini-game! Nobody won, the game's over on time"}}]
""")

	# /end_red
	write_function(f"{path}/end_red", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin du mini-jeu ! Les rouges ont gagnés"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" End of the mini-game! The reds have won"}}]
""")

	# /fireball_use
	write_function(f"{path}/fireball_use", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Vous avez dépensé 15 pièces pour invoquer une boule de feu !"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You spent 15 coins to summon a fireball!"}}]
""")

	# /shop_apocalypse
	write_function(f"{path}/shop_apocalypse", f"""
# French
execute unless score @s {ns}.glassrunner.money matches 25.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu n'as pas assez d'argent","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 25.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" L'équipe adverse pleure","color":"green"}}]

# English
execute unless score @s {ns}.glassrunner.money matches 25.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You don't have enough coins","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 25.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" The other team is crying fr","color":"green"}}]
""")

	# /shop_arrow
	write_function(f"{path}/shop_arrow", f"""
# French
execute unless score @s {ns}.glassrunner.money matches 5.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu n'as pas assez d'argent","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 5.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu viens d'acheter 5 flèches","color":"green"}}]

# English
execute unless score @s {ns}.glassrunner.money matches 5.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You don't have enough coins","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 5.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You've just bought 5 arrows","color":"green"}}]
""")

	# /shop_elytra
	write_function(f"{path}/shop_elytra", f"""
# French
execute unless score @s {ns}.glassrunner.money matches 20.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu n'as pas assez d'argent","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 20.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu viens d'acheter une utilisation d'elytra","color":"green"}}]

# English
execute unless score @s {ns}.glassrunner.money matches 20.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You don't have enough coins","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 20.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You've just bought a use of elytra","color":"green"}}]
""")

	# /shop_igloo
	write_function(f"{path}/shop_igloo", f"""
# French
execute unless score @s {ns}.glassrunner.money matches 20.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu n'as pas assez d'argent","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 20.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu viens de faire construire un igloo","color":"green"}}]

# English
execute unless score @s {ns}.glassrunner.money matches 20.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You don't have enough coins","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 20.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You've just built an igloo","color":"green"}}]
""")

	# /shop_snowball
	write_function(f"{path}/shop_snowball", f"""
# French
execute unless score @s {ns}.glassrunner.money matches 8.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu n'as pas assez d'argent","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 8.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu viens d'acheter 5 snowball renforcées","color":"green"}}]

# English
execute unless score @s {ns}.glassrunner.money matches 8.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You don't have enough coins","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 8.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You've just bought 5 reinforced snowballs","color":"green"}}]
""")

	# /shop_turtle
	write_function(f"{path}/shop_turtle", f"""
# French
execute unless score @s {ns}.glassrunner.money matches 12.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu n'as pas assez d'argent","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 12.. run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu viens d'acheter un casque de tortue","color":"green"}}]

# English
execute unless score @s {ns}.glassrunner.money matches 12.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You don't have enough coins","color":"red"}}]
execute if score @s {ns}.glassrunner.money matches 12.. run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You just bought a turtle helmet","color":"green"}}]
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Glass Runner dans 5 secondes, votre objectif est de capturer les différents points de la map pour marquer des points ! Votre inventaire sert de boutique utilisant vos niveaux d'xp !", "Glass Runner game starts in 5 seconds, your objective is to capture the various points on the map to score points! Your inventory serves as a shop using your xp levels!")

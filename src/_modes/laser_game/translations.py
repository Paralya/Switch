
# Imports
from stewbeet import Mem, write_function
from ..common import write_server_announce


def write_translations():
	""" Write the laser_game translation functions at switch:modes/laser_game/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/laser_game/translations"

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe rouge : "},{"selector":"@a[scores={switch.alive=11},sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Désolé mais il y a égalité !"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe bleue : "},{"selector":"@a[scores={switch.alive=10},sort=random]"}]

# English
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game with red team winning: "},{"selector":"@a[scores={switch.alive=11},sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! Sorry, but it's a tie!"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game with blue team winning: "},{"selector":"@a[scores={switch.alive=10},sort=random]"}]
""")

	# /right_click
	write_function(f"{path}/right_click", """
# French
title @s[scores={switch.lang=0},tag=global.ignore] actionbar [{"text":"[Laser Game] ","color":"red"},{"text":"Vous ne pouvez pas tirer pour le moment.","color":"white"}]

# English
title @s[scores={switch.lang=1},tag=global.ignore] actionbar [{"text":"[Laser Game] ","color":"red"},{"text":"You cannot shoot at this time.","color":"white"}]
""")

	# /second
	write_function(f"{path}/second", """
# French
execute if score #base_reload switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"La base de bonus vient de se recharger !","color":"yellow"}]

# English
execute if score #base_reload switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"The bonus base has just been reloaded!","color":"yellow"}]
""")

	# /shooted_base
	write_function(f"{path}/shooted_base", """
# French
execute if score #color switch.data matches 0 run tellraw @a[scores={switch.lang=0,switch.alive=11}] [{"selector":"@s"},{"text":" a tiré sur la base de bonus !","color":"green"}]
execute if score #color switch.data matches 1 run tellraw @a[scores={switch.lang=0,switch.alive=10}] [{"selector":"@s"},{"text":" a tiré sur la base de bonus !","color":"green"}]
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient un Bouclier résistant à 5 tirs [+20 points]","color":"green"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient une Mitraillette pendant 15 secondes [+20 points]","color":"green"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Darkness à la team ennemie [+20 points]","color":"green"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Glowing à la team ennemie [+20 points]","color":"green"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient un Changement de couleur visuellement pendant 30 secondes [+20 points]","color":"green"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Speed à votre équipe pendant 15 secondes [+20 points]","color":"green"}]

# English
execute if score #color switch.data matches 0 run tellraw @a[scores={switch.lang=1,switch.alive=11}] [{"selector":"@s"},{"text":" fired on the bonus base!","color":"green"}]
execute if score #color switch.data matches 1 run tellraw @a[scores={switch.lang=1,switch.alive=10}] [{"selector":"@s"},{"text":" fired on the bonus base!","color":"green"}]
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gets 5-shot resistant Shield [+20 points]","color":"green"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and got a Machine Gun for 15 seconds [+20 points]","color":"green"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gave a Darkness Effect to the enemy team [+20 points]","color":"green"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gave a Glowing Effect to the enemy team [+20 points]","color":"green"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gets a Visual Color Change for 30 seconds [+20 points]","color":"green"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gives Speed Effect to your team for 15 seconds [+20 points]","color":"green"}]
""")

	# /shooted_both
	write_function(f"{path}/shooted_both", """
# French
execute if score @s switch.temp.shield matches 1.. run tellraw @s[scores={switch.lang=0}] [{"selector":"@a[tag=!detached,tag=switch.temp]"},{"text":" vous a tiré dessus ! Plus que ","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.shield"},"color":"green"},{"text":" points de bouclier.","color":"gray"}]
execute if score @s switch.temp.shield matches 1.. run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.temp] [{"text":"Vous avez tiré sur ","color":"gray"},{"selector":"@s"},{"text":" ayant un bouclier, il lui reste "},{"score":{"name":"@s","objective":"switch.temp.shield"},"color":"green"},{"text":" points de bouclier restants."}]
execute unless score @s switch.temp.shield matches 1.. run tellraw @s[scores={switch.lang=0}] [{"selector":"@a[tag=!detached,tag=switch.temp]"},{"text":" vous a tiré dessus ! Vous êtes désactivé pendant 5 secondes.","color":"gray"}]
execute unless score @s switch.temp.shield matches 1.. run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.temp] [{"text":"Vous avez tué ","color":"gray"},{"selector":"@s"},{"text":" ! [+10 points]"}]

# English
execute if score @s switch.temp.shield matches 1.. run tellraw @s[scores={switch.lang=1}] [{"selector":"@a[tag=!detached,tag=switch.temp]"},{"text":" shot you! More than ","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.shield"},"color":"green"},{"text":" shield points.","color":"gray"}]
execute if score @s switch.temp.shield matches 1.. run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.temp] [{"text":"You have shot ","color":"gray"},{"selector":"@s"},{"text":" having a shield, they have "},{"score":{"name":"@s","objective":"switch.temp.shield"},"color":"green"},{"text":" shield points remaining."}]
execute unless score @s switch.temp.shield matches 1.. run tellraw @s[scores={switch.lang=1}] [{"selector":"@a[tag=!detached,tag=switch.temp]"},{"text":" shot you! You are disabled for 5 seconds.","color":"gray"}]
execute unless score @s switch.temp.shield matches 1.. run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.temp] [{"text":"You shot ","color":"gray"},{"selector":"@s"},{"text":"! [+10 points]"}]
""")

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Laser Game, faites le plus de points possibles en tirant sur les bases bonus et les ennemis !", "Launching the Laser Game, score as many points as possible by shooting the bonus bases and enemies!")

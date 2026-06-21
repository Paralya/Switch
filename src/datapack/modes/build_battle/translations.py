
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the build_battle translation functions at switch:modes/build_battle/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/build_battle/translations"

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Build Battle, votez pour le thème en ouvrant votre inventaire !"}]
title @a[scores={switch.lang=0},tag=!detached] times 20 60 20
title @a[scores={switch.lang=0},tag=!detached] title {"text":"Vote du Thème","color":"aqua"}
title @a[scores={switch.lang=0},tag=!detached] subtitle {"text":"(Ouvrez votre inventaire !)","color":"yellow"}

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Start the Build Battle game, vote for the theme by opening your inventory!"}]
title @a[scores={switch.lang=1},tag=!detached] times 20 60 20
title @a[scores={switch.lang=1},tag=!detached] title {"text":"Theme Vote","color":"aqua"}
title @a[scores={switch.lang=1},tag=!detached] subtitle {"text":"(Open your inventory!)","color":"yellow"}
""")

	# /teleport_back
	write_function(f"{path}/teleport_back", """
# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Veuillez restez dans votre cage !"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Please stay in your cage!"}]
""")

	# /building_time/check_increase_time
	write_function(f"{path}/building_time/check_increase_time", """
# French
execute if score #success switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" La population (plus de 75%) a voté pour augmenter le temps de construction de 5 minutes !","color":"green"}]
execute unless score #success switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Il n'y a pas eu assez de votes (moins de 75%) pour augmenter le temps de construction...","color":"red"}]

# English
execute if score #success switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The population (over 75%) voted to increase construction time by 5 minutes!","color":"green"}]
execute unless score #success switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" There weren't enough votes (less than 75%) to increase construction time...","color":"red"}]
""")

	# /building_time/second
	write_function(f"{path}/building_time/second", """
# French
execute if score #second switch.data matches ..9 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme.fr","storage":"switch:main","interpret":true,"color":"yellow"},{"text":", Temps restant : "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"text":"0","color":"yellow"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #second switch.data matches 10.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme.fr","storage":"switch:main","interpret":true,"color":"yellow"},{"text":", Temps restant : "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #remaining_time switch.data matches 90 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Voulez-vous augmenter le temps de construction de 2 minutes ?","color":"green"}]
execute if score #remaining_time switch.data matches 90 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Si oui, vous avez 30 secondes pour cliquer [ici]","color":"green","click_event":{"action":"run_command","command":"/trigger switch.temp.theme_vote set 1"}}]
execute if score #remaining_time switch.data matches 120 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"red"},{"text":"2","color":"yellow"},{"text":" minutes pour terminer votre construction !","color":"red"}]
execute if score #remaining_time switch.data matches 60 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"red"},{"text":"1","color":"yellow"},{"text":" minute pour terminer votre construction !","color":"red"}]
execute if score #remaining_time switch.data matches 10 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"10","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"5","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"4","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"3","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"2","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"1","color":"red"},{"text":" seconde pour terminer votre construction !","color":"dark_red"}]

# English
execute if score #second switch.data matches ..9 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Theme: ","color":"aqua"},{"nbt":"current_theme.en","storage":"switch:main","interpret":true,"color":"yellow"},{"text":", Time remaining: "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"text":"0","color":"yellow"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #second switch.data matches 10.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Theme: ","color":"aqua"},{"nbt":"current_theme.en","storage":"switch:main","interpret":true,"color":"yellow"},{"text":", Time remaining: "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #remaining_time switch.data matches 90 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Do you want to increase the building time by 2 minutes?","color":"green"}]
execute if score #remaining_time switch.data matches 90 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" If yes, you have 30 seconds to click [here]","color":"green","click_event":{"action":"run_command","command":"/trigger switch.temp.theme_vote set 1"}}]
execute if score #remaining_time switch.data matches 120 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You have ","color":"red"},{"text":"2","color":"yellow"},{"text":" minutes to complete your build!","color":"red"}]
execute if score #remaining_time switch.data matches 60 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You have ","color":"red"},{"text":"1","color":"yellow"},{"text":" minute to finish building!","color":"red"}]
execute if score #remaining_time switch.data matches 10 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"10","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"5","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"4","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"3","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"2","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"1","color":"red"},{"text":" second to finish building!","color":"dark_red"}]
""")

	# /building_time/start
	write_function(f"{path}/building_time/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le thème choisi est "},{"nbt":"current_theme.fr","storage":"switch:main","interpret":true,"color":"yellow"},{"text":" !"}]
title @a[scores={switch.lang=0},tag=!detached] times 20 60 20
title @a[scores={switch.lang=0},tag=!detached] title {"text":"Thème choisi","color":"aqua"}
title @a[scores={switch.lang=0},tag=!detached] subtitle {"nbt":"current_theme.fr","storage":"switch:main","interpret":true,"color":"yellow"}

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The chosen theme is "},{"nbt":"current_theme.en","storage":"switch:main","interpret":true,"color":"yellow"},{"text":"!"}]
title @a[scores={switch.lang=1},tag=!detached] times 20 60 20
title @a[scores={switch.lang=1},tag=!detached] title {"text":"Theme chosen","color":"aqua"}
title @a[scores={switch.lang=1},tag=!detached] subtitle {"nbt":"current_theme.en","storage":"switch:main","interpret":true,"color":"yellow"}
""")

	# /preparation/themes_list
	write_function(f"{path}/preparation/themes_list", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Le tirage parmi la liste des thèmes a été réinitialisé !","color":"green"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"The draw from the list of themes has been reset!","color":"green"}]
""")

	# /rating_time/choose_player
	write_function(f"{path}/rating_time/choose_player", """
# French
title @a[scores={switch.lang=0},tag=!detached] times 20 60 20
title @a[scores={switch.lang=0},tag=!detached] title {"text":"Builder","color":"yellow"}
title @a[scores={switch.lang=0},tag=!detached] subtitle {"selector":"@p[scores={switch.temp.to_rate=2}]","color":"aqua"}

# English
title @a[scores={switch.lang=1},tag=!detached] times 20 60 20
title @a[scores={switch.lang=1},tag=!detached] title {"text":"Builder","color":"yellow"}
title @a[scores={switch.lang=1},tag=!detached] subtitle {"selector":"@p[scores={switch.temp.to_rate=2}]","color":"aqua"}
""")

	# /rating_time/end_calculation
	write_function(f"{path}/rating_time/end_calculation", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Classement par points :"}]
execute as @a[scores={switch.temp.rank=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"\\n1er ","color":"#FFE700"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"\\n2ème","color":"#C0C0C0"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=3}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"\\n3ème","color":"#CD7F32"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=4..}] run tellraw @s[scores={switch.lang=0}] [{"text":"\\n","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.rank"}},{"text":"ème"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ""

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Ranking by points:"}]
execute as @a[scores={switch.temp.rank=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"\\n1st ","color":"#FFE700"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"\\n2nd","color":"#C0C0C0"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=3}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"\\n3rd","color":"#CD7F32"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=4..}] run tellraw @s[scores={switch.lang=1}] [{"text":"\\n","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.rank"}},{"text":"th"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ""
""")

	# /rating_time/right_click
	write_function(f"{path}/rating_time/right_click", """
# French
execute if score #slot switch.data matches 0 run tellraw @s[scores={switch.lang=0}] {"text":"Super Poop","color":"#8B4513"}
execute if score #slot switch.data matches 1 run tellraw @s[scores={switch.lang=0}] {"text":"Poop","color":"red"}
execute if score #slot switch.data matches 2 run tellraw @s[scores={switch.lang=0}] {"text":"OK","color":"dark_green"}
execute if score #slot switch.data matches 3 run tellraw @s[scores={switch.lang=0}] {"text":"Good","color":"green"}
execute if score #slot switch.data matches 4 run tellraw @s[scores={switch.lang=0}] {"text":"Epic","color":"light_purple"}
execute if score #slot switch.data matches 5 run tellraw @s[scores={switch.lang=0}] {"text":"Legendary","color":"gold"}

# English
execute if score #slot switch.data matches 0 run tellraw @s[scores={switch.lang=1}] {"text":"Super Poop","color":"#8B4513"}
execute if score #slot switch.data matches 1 run tellraw @s[scores={switch.lang=1}] {"text":"Poop","color":"red"}
execute if score #slot switch.data matches 2 run tellraw @s[scores={switch.lang=1}] {"text":"OK","color":"dark_green"}
execute if score #slot switch.data matches 3 run tellraw @s[scores={switch.lang=1}] {"text":"Good","color":"green"}
execute if score #slot switch.data matches 4 run tellraw @s[scores={switch.lang=1}] {"text":"Epic","color":"light_purple"}
execute if score #slot switch.data matches 5 run tellraw @s[scores={switch.lang=1}] {"text":"Legendary","color":"gold"}
""")

	# /rating_time/second
	write_function(f"{path}/rating_time/second", """
# French
title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme.fr","storage":"switch:main","interpret":true,"color":"yellow"}]

# English
title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Theme: ","color":"aqua"},{"nbt":"current_theme.en","storage":"switch:main","interpret":true,"color":"yellow"}]
""")

	# /rating_time/start
	write_function(f"{path}/rating_time/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du temps imparti, rappel du thème : "},{"nbt":"current_theme.fr","storage":"switch:main","interpret":true,"color":"yellow"},{"text":" !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up, theme reminder: "},{"nbt":"current_theme.en","storage":"switch:main","interpret":true,"color":"yellow"},{"text":"!"}]
""")

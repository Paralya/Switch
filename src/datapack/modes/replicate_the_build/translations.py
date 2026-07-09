
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the replicate_the_build translation functions at switch:modes/replicate_the_build/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/replicate_the_build/translations"

	# /round_0
	write_function(f"{path}/round_0", rf"""
# French
title @a[scores={{{ns}.lang=0}},tag=!detached] times 0t 20t 0
title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"3","color":"green"}}

# English
title @a[scores={{{ns}.lang=1}},tag=!detached] times 0t 20t 0
title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"3","color":"green"}}
""")

	# /round_1
	write_function(f"{path}/round_1", rf"""
# French
title @a[scores={{{ns}.lang=0}},tag=!detached] times 0t 20t 0
title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"2","color":"green"}}

# English
title @a[scores={{{ns}.lang=1}},tag=!detached] times 0t 20t 0
title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"2","color":"green"}}
""")

	# /round_2
	write_function(f"{path}/round_2", rf"""
# French
title @a[scores={{{ns}.lang=0}},tag=!detached] times 0t 20t 0
title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"1","color":"green"}}

# English
title @a[scores={{{ns}.lang=1}},tag=!detached] times 0t 20t 0
title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"1","color":"green"}}
""")

	# /round_3
	write_function(f"{path}/round_3", rf"""
# French
title @a[scores={{{ns}.lang=0}},tag=!detached] times 0t 20t 0
title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"Mémorisez !","color":"green"}}

# English
title @a[scores={{{ns}.lang=1}},tag=!detached] times 0t 20t 0
title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"Memorize!","color":"green"}}
""")

	# /round_7_end
	write_function(f"{path}/round_7_end", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Le joueur ","color":"red"}},{{"selector":"@a[tag=!detached,tag={ns}.looser]","color":"red"}},{{"text":" a été éliminé !","color":"red"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" The player ","color":"red"}},{{"selector":"@a[tag=!detached,tag={ns}.looser]","color":"red"}},{{"text":" has been eliminated!","color":"red"}}]
""")

	# /start
	write_function(f"{path}/start", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de Replicate The Build, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Starting the Replicate The Build game, get ready as you have a 5 second preparation time!"}}]
""")

	# /utils_display_score
	write_function(f"{path}/utils_display_score", rf"""
# French
title @s[scores={{{ns}.lang=0}}] title [{{"text":"Votre score est de :","color":"green"}}]
title @s[scores={{{ns}.lang=0}}] subtitle [{{"score":{{"name":"@p[tag={ns}.temp]","objective":"{ns}.rtb.points"}},"color":"green"}},{{"text":"/343","color":"green"}}]

# English
title @s[scores={{{ns}.lang=1}}] title [{{"text":"Your score is:","color":"green"}}]
title @s[scores={{{ns}.lang=1}}] subtitle [{{"score":{{"name":"@p[tag={ns}.temp]","objective":"{ns}.rtb.points"}},"color":"green"}},{{"text":"/343","color":"green"}}]
""")

	# /utils_finish_building_player
	write_function(f"{path}/utils_finish_building_player", rf"""
# French
tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Parfait ! En ","color":"green"}},{{"nbt":"temp","storage":"{ns}:rtb","plain":true,"color":"green"}},{{"text":" secondes","color":"green"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Perfect! In ","color":"green"}},{{"nbt":"temp","storage":"{ns}:rtb","plain":true,"color":"green"}},{{"text":" seconds","color":"green"}}]
""")

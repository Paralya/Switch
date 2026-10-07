# Imports
from stewbeet import Mem, write_function


def write_menu_translations() -> None:
	""" Write the messages of the rating, stats and succes menus. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/translations"

	# /trigger_rating_display
	write_function(f"{path}/trigger_rating_display", rf"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Liste des mini-jeux :"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Minigames list:"}}]
""")

	# /trigger_rating_display_loop
	write_function(f"{path}/trigger_rating_display_loop", f"""
# French
$execute if score #digits {ns}.data matches ..9 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤ ","color":"aqua","hover_event":{{"action":"show_text","value":{{"text":"Cliquez pour noter","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index_hundred)"}}}},{{"nbt":"name_fr","storage":"{ns}:temp","interpret":true,"color":"dark_aqua"}},{{"text":" avec un score de "}},{{"text":"$(int).0$(digits)","color":"yellow"}},{{"text":" (","color":"gray"}},{{"score":{{"name":"#nb_ratings","objective":"{ns}.data"}},"color":"gray"}},{{"text":" notes)","color":"gray"}}]
$execute if score #digits {ns}.data matches 10.. run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤ ","color":"aqua","hover_event":{{"action":"show_text","value":{{"text":"Cliquez pour noter","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index_hundred)"}}}},{{"nbt":"name_fr","storage":"{ns}:temp","interpret":true,"color":"dark_aqua"}},{{"text":" avec un score de "}},{{"text":"$(int).$(digits)","color":"yellow"}},{{"text":" (","color":"gray"}},{{"score":{{"name":"#nb_ratings","objective":"{ns}.data"}},"color":"gray"}},{{"text":" notes)","color":"gray"}}]

# English
$execute if score #digits {ns}.data matches ..9 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤ ","color":"aqua","hover_event":{{"action":"show_text","value":{{"text":"Click to rate","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index_hundred)"}}}},{{"nbt":"name_en","storage":"{ns}:temp","interpret":true,"color":"dark_aqua"}},{{"text":" with a score of "}},{{"text":"$(int).0$(digits)","color":"yellow"}},{{"text":" (","color":"gray"}},{{"score":{{"name":"#nb_ratings","objective":"{ns}.data"}},"color":"gray"}},{{"text":" ratings)","color":"gray"}}]
$execute if score #digits {ns}.data matches 10.. run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤ ","color":"aqua","hover_event":{{"action":"show_text","value":{{"text":"Click to rate","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index_hundred)"}}}},{{"nbt":"name_en","storage":"{ns}:temp","interpret":true,"color":"dark_aqua"}},{{"text":" with a score of "}},{{"text":"$(int).$(digits)","color":"yellow"}},{{"text":" (","color":"gray"}},{{"score":{{"name":"#nb_ratings","objective":"{ns}.data"}},"color":"gray"}},{{"text":" ratings)","color":"gray"}}]
""")

	# /trigger_rating_note
	write_function(f"{path}/trigger_rating_note", f"""
# French
$execute if score #temp {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vous avez voté pour $(digits) étoile !","color":"green"}}]
$execute if score #temp {ns}.data matches 2.. run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vous avez voté pour $(digits) étoiles !","color":"green"}}]

# English
$execute if score #temp {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"You voted for $(digits) star!","color":"green"}}]
$execute if score #temp {ns}.data matches 2.. run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"You voted for $(digits) stars!","color":"green"}}]
""")

	# /trigger_rating_print
	write_function(f"{path}/trigger_rating_print", f"""
# French
$tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"[","color":"aqua"}},{{"nbt":"minigames[{{index:$(index)}}].name_fr","storage":"{ns}:main","interpret":true,"color":"aqua"}},{{"text":"] ","color":"aqua"}},{{"text":"Notez ce mini-jeu : ","color":"white"}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Noter 1 étoile","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)01"}}}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Noter 2 étoiles","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)02"}}}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Noter 3 étoiles","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)03"}}}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Noter 4 étoiles","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)04"}}}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Noter 5 étoiles","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)05"}}}}]
execute if data storage {ns}:temp temp if data storage {ns}:temp {{temp:1}} run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Votre vote actuel est de ","color":"gold"}},{{"nbt":"temp","storage":"{ns}:temp","plain":true,"color":"yellow"}},{{"text":" étoile."}}]
execute if data storage {ns}:temp temp unless data storage {ns}:temp {{temp:1}} run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Votre vote actuel est de ","color":"gold"}},{{"nbt":"temp","storage":"{ns}:temp","plain":true,"color":"yellow"}},{{"text":" étoiles."}}]
execute unless data storage {ns}:temp temp run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Aucun vote actuel pour ce mini-jeu","color":"gold"}}]

# English
$tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"[","color":"aqua"}},{{"nbt":"minigames[{{index:$(index)}}].name_en","storage":"{ns}:main","interpret":true,"color":"aqua"}},{{"text":"] ","color":"aqua"}},{{"text":"Note this minigame: ","color":"white"}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Rate 1 star","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)01"}}}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Rate 2 stars","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)02"}}}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Rate 3 stars","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)03"}}}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Rate 4 stars","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)04"}}}},{{"text":"✮","color":"yellow","hover_event":{{"action":"show_text","value":{{"text":"Rate 5 stars","color":"gray"}}}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.rating set $(index)05"}}}}]
execute if data storage {ns}:temp temp if data storage {ns}:temp {{temp:1}} run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Your current vote is ","color":"gold"}},{{"nbt":"temp","storage":"{ns}:temp","plain":true,"color":"yellow"}},{{"text":" star."}}]
execute if data storage {ns}:temp temp unless data storage {ns}:temp {{temp:1}} run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Your current vote is ","color":"gold"}},{{"nbt":"temp","storage":"{ns}:temp","plain":true,"color":"yellow"}},{{"text":" stars."}}]
execute unless data storage {ns}:temp temp run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"No current votes for this mini-game","color":"gold"}}]
""")

	# /trigger_stats_display_loop
	write_function(f"{path}/trigger_stats_display_loop", rf"""
# French
$tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤ ","color":"gold","hover_event":{{"action":"show_text","value":[{{"text":"Total de parties jouées : ","color":"gray"}},{{"text":"$(count)\n","color":"white"}},{{"text":"Total de parties gagnées : "}},{{"text":"$(wins)\n","color":"white"}},{{"text":"Pourcentage de victoire : "}},{{"text":"$(winrate)%\n","color":"white"}}]}}}},{{"text":"$(count) ","color":"yellow"}},{{"text":"$(name_fr)","underlined":true}},{{"text":" dont "}},{{"text":"$(wins)","color":"yellow"}},{{"text":" victoires "}},{{"text":"($(winrate)%)","color":"green"}}]

# English
$tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤ ","color":"gold","hover_event":{{"action":"show_text","value":[{{"text":"Total games played: ","color":"gray"}},{{"text":"$(count)\n","color":"white"}},{{"text":"Total games won: "}},{{"text":"$(wins)\n","color":"white"}},{{"text":"Win percentage: "}},{{"text":"$(winrate)%\n","color":"white"}}]}}}},{{"text":"$(count) ","color":"yellow"}},{{"text":"$(name_en)","underlined":true}},{{"text":" including "}},{{"text":"$(wins)","color":"yellow"}},{{"text":" wins "}},{{"text":"($(winrate)%)","color":"green"}}]
""")

	# /trigger_stats_main
	write_function(f"{path}/trigger_stats_main", rf"""
# French
execute if data storage {ns}:main input{{player:"@s"}} run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"ParalyaStats","storage":"{ns}:main","interpret":true}},{{"text":" Voici vos statistiques :\n"}}]
$execute unless data storage {ns}:main input{{player:"@s"}} run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"ParalyaStats","storage":"{ns}:main","interpret":true}},{{"text":" Voici les statistiques de $(player) :\n"}}]
$tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤ ","color":"yellow"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.kills"}},"color":"gold"}},{{"text":" kills"}}]
$tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤ ","color":"yellow"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.deaths"}},"color":"gold"}},{{"text":" morts"}}]
$tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤ ","color":"yellow"}},{{"score":{{"name":"$(player)","objective":"{ns}.advancements"}},"color":"gold"}},{{"text":" succès débloqués"}}]
$tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤ ","color":"yellow","hover_event":{{"action":"show_text","value":[{{"text":"Total de parties jouées : ","color":"gray"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.played"}},"color":"white"}},{{"text":"\nTotal de parties gagnées : ","color":"gray"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.wins"}},"color":"white"}},{{"text":"\nPourcentage de victoire : ","color":"gray"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.winrate"}},"color":"white"}},{{"text":"%","color":"white"}}]}}}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.played"}},"color":"gold"}},{{"text":" parties jouées","underlined":true}},{{"text":" dont "}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.wins"}},"color":"gold"}},{{"text":" victoires "}},{{"text":"(","color":"green"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.winrate"}},"color":"green"}},{{"text":"%)","color":"green"}}]

# English
execute if data storage {ns}:main input{{player:"@s"}} run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"ParalyaStats","storage":"{ns}:main","interpret":true}},{{"text":" Here are your statistics:\n"}}]
$execute unless data storage {ns}:main input{{player:"@s"}} run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"ParalyaStats","storage":"{ns}:main","interpret":true}},{{"text":" Here are $(player)'s statistics:\n"}}]
$tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤ ","color":"yellow"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.kills"}},"color":"gold"}},{{"text":" kills"}}]
$tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤ ","color":"yellow"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.deaths"}},"color":"gold"}},{{"text":" deaths"}}]
$tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤ ","color":"yellow"}},{{"score":{{"name":"$(player)","objective":"{ns}.advancements"}},"color":"gold"}},{{"text":" advancements unlocked"}}]
$tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤ ","color":"yellow","hover_event":{{"action":"show_text","value":[{{"text":"Total games played: ","color":"gray"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.played"}},"color":"white"}},{{"text":"\nTotal games won: ","color":"gray"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.wins"}},"color":"white"}},{{"text":"\nWin percentage: ","color":"gray"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.winrate"}},"color":"white"}},{{"text":"%","color":"white"}}]}}}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.played"}},"color":"gold"}},{{"text":" games played","underlined":true}},{{"text":" including "}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.wins"}},"color":"gold"}},{{"text":" wins "}},{{"text":"(","color":"green"}},{{"score":{{"name":"$(player)","objective":"{ns}.stats.winrate"}},"color":"green"}},{{"text":"%)","color":"green"}}]
""")

	# /trigger_succes_display_loop
	write_function(f"{path}/trigger_succes_display_loop", rf"""
# French
$execute if data storage {ns}:advancements all[{{id:$(id)}}].players[{{name:"$(player)"}}] run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤","color":"aqua","hover_event":{{"action":"show_text","value":[{{"text":"[$(name)]\n","color":"$(color)"}},{{"text":"$(description)\n","color":"white"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":",","color":"dark_aqua"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":"% de réussite soit $(total) joueurs","color":"aqua"}},{{"text":"\n\n[Proposé par $(auteur)]","color":"gray"}}]}}}},{{"text":" [$(name)] ","color":"$(color)"}},{{"text":"avec ","color":"aqua"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":",","color":"dark_aqua"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":"% de réussite","color":"aqua"}}]

# English
$execute if data storage {ns}:advancements all[{{id:$(id)}}].players[{{name:"$(player)"}}] run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤","color":"aqua","hover_event":{{"action":"show_text","value":[{{"text":"[$(name)]\n","color":"$(color)"}},{{"text":"$(desc_en)\n","color":"white"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":",","color":"dark_aqua"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":"% success or $(total) players","color":"aqua"}},{{"text":"\n\n[Suggested by $(auteur)]","color":"gray"}}]}}}},{{"text":" [$(name)] ","color":"$(color)"}},{{"text":"with ","color":"aqua"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":",","color":"dark_aqua"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":"% success","color":"aqua"}}]
""")

	# /trigger_succes_display_loop_2
	write_function(f"{path}/trigger_succes_display_loop_2", rf"""
# French
$execute unless data storage {ns}:advancements all[{{id:$(id)}}].players[{{name:"$(player)"}}] run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤","color":"gray","hover_event":{{"action":"show_text","value":[{{"text":"[$(name)]\n","color":"$(color)"}},{{"text":"$(description)\n","color":"white"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":",","color":"dark_gray"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":"% de réussite soit $(total) joueurs","color":"gray"}},{{"text":"\n\n[Proposé par $(auteur)]","color":"gray"}}]}}}},{{"text":" [$(name)] ","color":"$(color)"}},{{"text":"avec ","color":"gray"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":",","color":"dark_gray"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":"% de réussite","color":"gray"}}]

# English
$execute unless data storage {ns}:advancements all[{{id:$(id)}}].players[{{name:"$(player)"}}] run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤","color":"gray","hover_event":{{"action":"show_text","value":[{{"text":"[$(name)]\n","color":"$(color)"}},{{"text":"$(desc_en)\n","color":"white"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":",","color":"dark_gray"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":"% success or $(total) players","color":"gray"}},{{"text":"\n\n[Suggested by $(auteur)]","color":"gray"}}]}}}},{{"text":" [$(name)] ","color":"$(color)"}},{{"text":"with ","color":"gray"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":",","color":"dark_gray"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":"% success","color":"gray"}}]
""")

	# /trigger_succes_main
	write_function(f"{path}/trigger_succes_main", rf"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Liste des succès :"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Advancements list:"}}]
""")

	# /trigger_succes_mode
	write_function(f"{path}/trigger_succes_mode", rf"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Succès obtenables en "}},{{"nbt":"current_game_name","storage":"{ns}:main","color":"aqua","interpret":true}},{{"text":" :"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Advancements available in "}},{{"nbt":"current_game_name","storage":"{ns}:main","color":"aqua","interpret":true}},{{"text":":"}}]
""")


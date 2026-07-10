
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations() -> None:
	""" Write the engine translation functions at switch:engine/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine/translations"

	# /add_money
	write_function(f"{path}/add_money", f"""
# French
execute if score #random {ns}.data matches 0 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaSapphiresFR","storage":"{ns}:main","interpret":true}},{{"text":" +"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":" vous apportant à un total de ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}}]
execute if score #random {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaSapphiresFR","storage":"{ns}:main","interpret":true}},{{"text":" +"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":", vous avez donc maintenant un total de ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}}]
execute if score #random {ns}.data matches 2 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaSapphiresFR","storage":"{ns}:main","interpret":true}},{{"text":" +"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":" car vous êtes le meilleur, votre moula actuelle est donc de ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}}]
execute if score #random {ns}.data matches 3 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaSapphiresFR","storage":"{ns}:main","interpret":true}},{{"text":" Vous êtes apporté à un total de ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":" (","color":"blue"}},{{"text":"+"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":")","color":"blue"}}]
execute if score #random {ns}.data matches 4 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaSapphiresFR","storage":"{ns}:main","interpret":true}},{{"text":" Vous avez maintenant un total de ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":" (","color":"blue"}},{{"text":"+"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":")","color":"blue"}}]
execute if score #random {ns}.data matches 5 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaSapphiresFR","storage":"{ns}:main","interpret":true}},{{"text":" Car vous êtes the goat, votre moula actuelle est de ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":" (","color":"blue"}},{{"text":"+"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":")","color":"blue"}}]

# English
execute if score #random {ns}.data matches 0 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaSapphiresEN","storage":"{ns}:main","interpret":true}},{{"text":" +"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":" bringing you to a total of ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}}]
execute if score #random {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaSapphiresEN","storage":"{ns}:main","interpret":true}},{{"text":" +"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":", you now have a total of ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}}]
execute if score #random {ns}.data matches 2 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaSapphiresEN","storage":"{ns}:main","interpret":true}},{{"text":" +"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":" because you are the best, your current bread is ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}}]
execute if score #random {ns}.data matches 3 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaSapphiresEN","storage":"{ns}:main","interpret":true}},{{"text":" You are brought to a total of ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":" (","color":"blue"}},{{"text":"+"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":")","color":"blue"}}]
execute if score #random {ns}.data matches 4 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaSapphiresEN","storage":"{ns}:main","interpret":true}},{{"text":" You now have a total of ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":" (","color":"blue"}},{{"text":"+"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":")","color":"blue"}}]
execute if score #random {ns}.data matches 5 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaSapphiresEN","storage":"{ns}:main","interpret":true}},{{"text":" Because you are the best, your current bread is ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":" (","color":"blue"}},{{"text":"+"}},{{"score":{{"name":"#add","objective":"{ns}.money"}}}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":")","color":"blue"}}]
""")

	# /add_time
	write_function(f"{path}/add_time", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s","color":"aqua"}},{{"text":" vient de rajouter 15 secondes au vote !\n"}}]
title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"selector":"@s","color":"aqua"}}
title @a[scores={{{ns}.lang=0}},tag=!detached] subtitle {{"text":"Rajoute 15 secondes au vote !","color":"red"}}

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s","color":"aqua"}},{{"text":" just added 15 seconds to the vote!\n"}}]
title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"selector":"@s","color":"aqua"}}
title @a[scores={{{ns}.lang=1}},tag=!detached] subtitle {{"text":"Added 15 seconds to the vote!","color":"red"}}
""")

	# /check_coupdetat
	write_function(f"{path}/check_coupdetat", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s","color":"aqua"}},{{"text":" n'a pas reçu assez de vote pour son coup d'état. ("}},{{"score":{{"name":"#percentage","objective":"{ns}.data"}}}},{{"text":"%)"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s","color":"aqua"}},{{"text":" has not received enough votes for their coup d'état. ("}},{{"score":{{"name":"#percentage","objective":"{ns}.data"}}}},{{"text":"%)"}}]
""")

	# /force_start_macro
	write_function(f"{path}/force_start_macro", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Sur le fondement de l'article 49, alinéa 3, de la constitution française, ","color":"yellow"}},{{"selector":"@s","color":"gray"}},{{"text":" engage la responsabilité de son gouvernement à lancer une partie de ","color":"yellow"}},{{"nbt":"current_game_name","storage":"{ns}:main","interpret":true,"color":"aqua"}},{{"text":" !","color":"yellow"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Based on article 49, paragraph 3, of the French constitution, ","color":"yellow"}},{{"selector":"@s","color":"gray"}},{{"text":" engages the responsibility of their government to launch a game of ","color":"yellow"}},{{"nbt":"current_game_name","storage":"{ns}:main","interpret":true,"color":"aqua"}},{{"text":"!","color":"yellow"}}]
""")

	# /launch_game_
	write_function(f"{path}/launch_game_", rf"""
# French
execute if score #modulo_rand {ns}.data matches 2.. run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Égalité entre plusieurs mode de jeux, choix aléatoire !\n"}}]

# English
execute if score #modulo_rand {ns}.data matches 2.. run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Tie between several game modes, random choice !\n"}}]
""")

	# /restart
	write_function(f"{path}/restart", rf"""
# French
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"\n\n\nPas assez de joueurs sont attachés pour lancer le moteur !","color":"red"}},{{"text":"\nConsidérez de vous détacher vers le lobby Switch avec '/detach' ou bien faire venir au minimum ","color":"gray"}},{{"score":{{"name":"#min_required","objective":"{ns}.data"}}}},{{"text":" joueurs !","color":"gray"}}]

# English
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"text":"\n\n\nNot enough players are attached to start the engine!","color":"red"}},{{"text":"\nConsider detaching to Switch lobby with '/detach' or bring in minimum ","color":"gray"}},{{"score":{{"name":"#min_required","objective":"{ns}.data"}}}},{{"text":" players!","color":"gray"}}]
""")

	# /voting_time_message
	def vote_option(i: int, lang: str, voted: bool) -> str:
		""" Build the clickable chat components of the vote option i (1-8) for the given language. """
		events: str = (
			f'"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.game_vote set {i}"}},'
			f'"hover_event":{{"action":"show_text","value":[{{"nbt":"selections[{i - 1}].lore_{lang}","storage":"{ns}:main","interpret":true}}]}}'
		)
		count_color: str = "dark_aqua" if voted else "aqua"
		return ",".join((
			f'{{"text":"[","color":"yellow",{events}}}',
			f'{{"nbt":"selections[{i - 1}].name_{lang}","storage":"{ns}:main","interpret":true,"color":"yellow",{events}}}',
			f'{{"text":"] ","color":"yellow",{events}}}',
			f'{{"score":{{"name":"#vote_game_{i}","objective":"{ns}.data"}},"color":"{count_color}",{events}}}',
			f'{{"nbt":"msg_votes[{i - 1}]","storage":"{ns}:main","plain":true,"color":"{count_color}",{events}}}',
		))

	def vote_line(i: int, lang: str, lang_id: int, voted: bool) -> str:
		""" Build the tellraw line of the vote option i (only shown if the selection exists, as round 2 has less than 8 options). """
		condition: str = "if" if voted else "unless"
		return (
			f"execute unless score #for_tutorial {ns}.data matches 1 if data storage {ns}:main selections[{i - 1}] "
			f"{condition} score @s {ns}.trigger.game_vote matches -{i} run tellraw @s[scores={{{ns}.lang={lang_id}}}] [{vote_option(i, lang, voted)}]"
		)

	def vote_lang_block(lang: str, lang_id: int, round_1_header: str, round_2_header: tuple[str, str]) -> str:
		""" Build every voting message line for a language (headers, options, tutorial message). """
		selector: str = f"@s[scores={{{ns}.lang={lang_id}}}]"
		headers: str = "\n".join((
			f'execute unless score #for_tutorial {ns}.data matches 1 if score #vote_round {ns}.data matches 1 run tellraw {selector} ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":"{round_1_header}"}}]',
			f'execute unless score #for_tutorial {ns}.data matches 1 if score #vote_round {ns}.data matches 2 run tellraw {selector} ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":"{round_2_header[0]}"}},{{"nbt":"current_group_name","storage":"{ns}:main","interpret":true,"color":"yellow"}},{{"text":"{round_2_header[1]}"}}]',
		))
		options: str = "\n".join(vote_line(i, lang, lang_id, voted) for i in range(1, 9) for voted in (False, True))
		empty_lines: str = "\\n" * 30
		tutorial_options: str = ',"\\n",'.join(vote_option(i, lang, voted=False) for i in range(1, 7))
		tutorial: str = f'execute if score #for_tutorial {ns}.data matches 1 run tellraw {selector} ["{empty_lines}",{tutorial_options}]'
		return "\n".join((headers, options, tutorial))

	write_function(f"{path}/voting_time_message", "\n".join((
		"",
		"# French",
		vote_lang_block("fr", 0, " Veuillez voter pour le prochain mini-jeu :", (" Veuillez voter pour la variante de ", " :")),
		"",
		"# English",
		vote_lang_block("en", 1, " Please vote for the next mini-game :", (" Please vote for the variant of ", " :")),
	)))

	# /voting_time_speed_up
	write_function(f"{path}/voting_time_speed_up", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tous les joueurs ont voté, accélération du timer !"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" All players have voted, speed up the timer!"}}]
""")

	# /voting_time_tick
	write_function(f"{path}/voting_time_tick", f"""
# French
execute unless entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}] run title @a[scores={{{ns}.lang=0}},tag=!detached] actionbar [{{"text":"Démarrage du compteur dès qu'un joueur vote.","color":"aqua"}}]
execute if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}] if score #remaining {ns}.data matches 2.. run title @a[scores={{{ns}.lang=0}},tag=!detached] actionbar [{{"text":"Fin de la période de vote dans ","color":"aqua"}},{{"score":{{"name":"#remaining","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" secondes."}}]
execute if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}] if score #remaining {ns}.data matches 1 run title @a[scores={{{ns}.lang=0}},tag=!detached] actionbar [{{"text":"Fin de la période de vote dans ","color":"aqua"}},{{"score":{{"name":"#remaining","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" seconde."}}]

# English
execute unless entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}] run title @a[scores={{{ns}.lang=1}},tag=!detached] actionbar [{{"text":"Counter starts when a player votes.","color":"aqua"}}]
execute if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}] if score #remaining {ns}.data matches 2.. run title @a[scores={{{ns}.lang=1}},tag=!detached] actionbar [{{"text":"End of voting period in ","color":"aqua"}},{{"score":{{"name":"#remaining","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" seconds."}}]
execute if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}] if score #remaining {ns}.data matches 1 run title @a[scores={{{ns}.lang=1}},tag=!detached] actionbar [{{"text":"End of voting period in ","color":"aqua"}},{{"score":{{"name":"#remaining","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" second."}}]
""")

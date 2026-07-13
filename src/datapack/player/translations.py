
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations() -> None:
	""" Write the player translation functions at switch:player/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/translations"

	# /detached_action_bar (players with an active jump timer keep their timer actionbar instead)
	write_function(f"{path}/detached_action_bar", f"""
# French
execute unless score #engine_state {ns}.data matches 3 run title @a[tag=detached,tag=!{ns}.jump_timing,scores={{{ns}.lang=0}}] actionbar [{{"text":"Vote du ","color":"aqua"}},{{"text":"mini-jeu","color":"yellow"}},{{"text":" en cours"}},{{"text":" | ","color":"gray"}},{{"score":{{"name":"#players_in_game","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" joueurs en jeu"}}]
execute if score #engine_state {ns}.data matches 3 run title @a[tag=detached,tag=!{ns}.jump_timing,scores={{{ns}.lang=0}}] actionbar [{{"nbt":"current_game_name","storage":"{ns}:main","interpret":true,"color":"yellow"}},{{"text":" en cours","color":"aqua"}},{{"text":" | ","color":"gray"}},{{"score":{{"name":"#players_in_game","objective":"{ns}.data"}}}},{{"text":" joueurs en jeu","color":"aqua"}}]

# English
execute unless score #engine_state {ns}.data matches 3 run title @a[tag=detached,tag=!{ns}.jump_timing,scores={{{ns}.lang=1}}] actionbar [{{"text":"Mini-game","color":"yellow"}},{{"text":" vote in progress","color":"aqua"}},{{"text":" | ","color":"gray"}},{{"score":{{"name":"#players_in_game","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" players in game","color":"aqua"}}]
execute if score #engine_state {ns}.data matches 3 run title @a[tag=detached,tag=!{ns}.jump_timing,scores={{{ns}.lang=1}}] actionbar [{{"nbt":"current_game_name","storage":"{ns}:main","interpret":true,"color":"yellow"}},{{"text":" in progress","color":"aqua"}},{{"text":" | ","color":"gray"}},{{"score":{{"name":"#players_in_game","objective":"{ns}.data"}}}},{{"text":" players in game","color":"aqua"}}]
""")

	# /joined
	write_function(f"{path}/joined", rf"""
# French
execute unless score @s {ns}.reconnect matches -600.. run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"\nVous avez été détaché car votre dernière connexion date de plus de 10 minutes, tapez '/changelog' si vous souhaitez voir les derniers changements ou '/attach' pour rejoindre le moteur Switch\n","color":"gold"}}]

# English
execute unless score @s {ns}.reconnect matches -600.. run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"\nYou have been detached because your last connection was more than 10 minutes ago, type '/changelog' if you wish to see the latest changes or '/attach' to join the Switch engine\n","color":"gold"}}]
""")

	# /kill_out_of_map
	write_function(f"{path}/kill_out_of_map", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Tu viens de tomber dans le vide de la map !","color":"yellow"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" You've just fallen into the map void!","color":"yellow"}}]
""")

	# /trigger_attach_
	write_function(f"{path}/trigger_attach_", f"""
# French
execute unless score #can_attach {ns}.data matches 1 unless entity @s[team={ns}.tutorial] run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Cette commande est désactivée pour le moment. Raison :","color":"red"}}]
execute unless score #can_attach {ns}.data matches 1 if score #test_mode {ns}.data matches 1 unless entity @s[team={ns}.tutorial] run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"- Un opérateur a activé le mode TEST.","color":"red"}}]
execute unless score #can_attach {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 unless entity @s[team={ns}.tutorial] run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"- Cette session est privatisée.","color":"red"}}]

# English
execute unless score #can_attach {ns}.data matches 1 unless entity @s[team={ns}.tutorial] run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"This command is currently disabled. Reason:","color":"red"}}]
execute unless score #can_attach {ns}.data matches 1 if score #test_mode {ns}.data matches 1 unless entity @s[team={ns}.tutorial] run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"- An operator has activated TEST mode.","color":"red"}}]
execute unless score #can_attach {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 unless entity @s[team={ns}.tutorial] run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"- This session is private.","color":"red"}}]
""")

	# /trigger_attach_real_attach
	write_function(f"{path}/trigger_attach_real_attach", rf"""
# French
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data run tellraw @s[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"\n\n\nPas assez de joueurs sont attachés pour lancer le moteur !","color":"red"}},{{"text":"\nConsidérez de vous détacher vers le lobby Switch avec '/detach' ou bien faire venir au minimum ","color":"gray"}},{{"score":{{"name":"#min_required","objective":"{ns}.data"}}}},{{"text":" joueurs.","color":"gray"}}]

# English
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data run tellraw @s[scores={{{ns}.lang=1}},tag=!detached] [{{"text":"\n\n\nNot enough players are attached to start the engine!","color":"red"}},{{"text":"\nConsider detaching to Switch lobby with '/detach' or bring at least ","color":"gray"}},{{"score":{{"name":"#min_required","objective":"{ns}.data"}}}},{{"text":" players.","color":"gray"}}]
""")

	# /trigger_coupdetat_display
	write_function(f"{path}/trigger_coupdetat_display", rf"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Coup d'état (Prix: 100","color":"white"}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":") :\n\n","color":"white"}},{{"text":"➤ Lance un vote pour changer le mini-jeu suivant\n","color":"gray"}},{{"text":"➤ Si accepté (≥50%), affronte un boss après la partie actuelle\n","color":"gray"}},{{"text":"  ➤ Victoire = mini-jeu lancé + 50","color":"green"}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":" récupérés\n","color":"green"}},{{"text":"  ➤ Défaite = perte des 100","color":"red"}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":"\n","color":"red"}},{{"text":"➤ Si non accepté, perte des 100","color":"red"}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":"\n\n","color":"red"}},{{"text":"Choisissez un mini-jeu pour lancer le coup d'état :","color":"yellow"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Coup d'état (Price: 100","color":"white"}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":") :\n\n","color":"white"}},{{"text":"➤ Starts a vote to change the next minigame\n","color":"gray"}},{{"text":"➤ If accepted (≥50%), fight a boss after the current game\n","color":"gray"}},{{"text":"  ➤ Victory = minigame launched + 50","color":"green"}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":" back\n","color":"green"}},{{"text":"  ➤ Defeat = lose 100","color":"red"}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":"\n","color":"red"}},{{"text":"➤ If not accepted, lose 100","color":"red"}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":"\n\n","color":"red"}},{{"text":"Choose a minigame to start the coup d'état:","color":"yellow"}}]
""")

	# /trigger_coupdetat_error
	write_function(f"{path}/trigger_coupdetat_error", f"""
# French
execute unless score #engine_state {ns}.data matches 3 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaError","storage":"{ns}:main","interpret":true}},{{"text":" Aucune partie n'est en cours, veuillez attendre qu'un mini-jeu se lance."}}]
execute if score #coupdetat {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaError","storage":"{ns}:main","interpret":true}},{{"text":" Un coup d'état est déjà en cours ! Attendez qu'il se termine."}}]

# English
execute unless score #engine_state {ns}.data matches 3 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaError","storage":"{ns}:main","interpret":true}},{{"text":" No game is currently running, please wait for a minigame to start."}}]
execute if score #coupdetat {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaError","storage":"{ns}:main","interpret":true}},{{"text":" A coup d'état is already in progress! Wait for it to finish."}}]
""")

	# /trigger_coupdetat_launch_vote
	write_function(f"{path}/trigger_coupdetat_launch_vote", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true,"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.coupdetat_vote set 1"}}}},{{"text":" "}},{{"selector":"@s","color":"aqua"}},{{"text":" souhaite faire un coup d'État pour lancer une partie de "}},{{"nbt":"coupdetat.name_fr","storage":"{ns}:main","interpret":true,"color":"yellow"}},{{"text":" ! Cliquez [ici] si vous le soutenez dans cet acte (requiert 50% des votes)\n"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true,"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.coupdetat_vote set 1"}}}},{{"text":" "}},{{"selector":"@s","color":"aqua"}},{{"text":" wants to stage a coup d'état to launch a game of "}},{{"nbt":"coupdetat.name_en","storage":"{ns}:main","interpret":true,"color":"yellow"}},{{"text":" ! Click [here] if you support them in this act (requires 50% of votes)\n"}}]
""")

	# /trigger_coupdetat_player_vote
	write_function(f"{path}/trigger_coupdetat_player_vote", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Vous avez décidé de soutenir ce coup d'état ! Attendez la fin du vote pour savoir si vous avez réussi à renverser le gouvernement."}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" You decided to support this coup d'état ! Wait for the end of the vote to know if you managed to overthrow the government."}}]
""")

	# /trigger_help_
	write_function(f"{path}/trigger_help_", rf"""
# French
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["\n",{{"nbt":"ParalyaHelp","storage":"{ns}:main","interpret":true}},{{"text":" Page d'aide n°1/1 :"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/money [<joueur>] : ","color":"yellow"}},{{"text":"Affiche votre argent actuel ou celui d'un joueur"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/shop : ","color":"yellow"}},{{"text":"Accède à la boutique cosmétique"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/detach ou /spawn : ","color":"yellow"}},{{"text":"Vous détache du moteur Switch"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/attach : ","color":"yellow"}},{{"text":"Vous re-attache au moteur Switch"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/stats [<joueur>] : ","color":"yellow"}},{{"text":"Affiche vos statistiques ou celles d'un joueur"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/succes [<joueur>] : ","color":"yellow"}},{{"text":"Affiche l'intégralité des succès d'un joueur"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/rating : ","color":"yellow"}},{{"text":"Affiche les notes des mini-jeux"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/night_vision : ","color":"yellow"}},{{"text":"Permet de toggle l'effet Night Vision"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/music : ","color":"yellow"}},{{"text":"Affiche l'interface du Music Player"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/coupdetat : ","color":"yellow"}},{{"text":"Permet de forcer le mini-jeu de votre choix"}}]
tellraw @s[scores={{{ns}.lang=0,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/layout : ","color":"yellow","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.layout"}}}},{{"text":"Personnalise l'emplacement des items de kit dans votre barre d'action"}}]
tellraw @s[scores={{{ns}.lang=0}}] ""

# English
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["\n",{{"nbt":"ParalyaHelp","storage":"{ns}:main","interpret":true}},{{"text":" Help page #1/1:"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/money [<player>]: ","color":"yellow"}},{{"text":"Display your current money or a player's money"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/shop: ","color":"yellow"}},{{"text":"Access the cosmetic shop"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/detach or /spawn: ","color":"yellow"}},{{"text":"Detaches from Switch Engine"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/attach: ","color":"yellow"}},{{"text":"Reattaches you to the Switch Engine"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/stats [<player>]: ","color":"yellow"}},{{"text":"Display your statistics or a player's statistics"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/succes [<player>]: ","color":"yellow"}},{{"text":"Display all advancements of a player"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/rating: ","color":"yellow"}},{{"text":"Display mini-game star ratings"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/night_vision: ","color":"yellow"}},{{"text":"Toggle Night Vision effect"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/music: ","color":"yellow"}},{{"text":"Displays the Music Player interface"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/coupdetat: ","color":"yellow"}},{{"text":"Force a mini-game of your choice"}}]
tellraw @s[scores={{{ns}.lang=1,{ns}.trigger.help=-11..}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"/layout: ","color":"yellow","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.layout"}}}},{{"text":"Customize where kit items land in your hotbar"}}]
tellraw @s[scores={{{ns}.lang=1}}] ""
""")

	# /trigger_money_
	write_function(f"{path}/trigger_money_", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"ParalyaSapphiresFR","storage":"{ns}:main","interpret":true}},{{"text":" Vous possédez un total de ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}},"underlined":true}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"ParalyaSapphiresEN","storage":"{ns}:main","interpret":true}},{{"text":" You have a total of ","color":"blue"}},{{"score":{{"name":"@s","objective":"{ns}.money"}},"underlined":true}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}}]
""")

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
$execute if data storage {ns}:advancements all[{{id:$(id)}}].players[{{name:"$(player)"}}] run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤","color":"aqua","hover_event":{{"action":"show_text","value":[{{"text":"[$(name)]\n","color":"$(color)"}},{{"text":"$(description_en)\n","color":"white"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":",","color":"dark_aqua"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":"% success or $(total) players","color":"aqua"}},{{"text":"\n\n[Suggested by $(auteur)]","color":"gray"}}]}}}},{{"text":" [$(name)] ","color":"$(color)"}},{{"text":"with ","color":"aqua"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":",","color":"dark_aqua"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_aqua"}},{{"text":"% success","color":"aqua"}}]
""")

	# /trigger_succes_display_loop_2
	write_function(f"{path}/trigger_succes_display_loop_2", rf"""
# French
$execute unless data storage {ns}:advancements all[{{id:$(id)}}].players[{{name:"$(player)"}}] run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"➤","color":"gray","hover_event":{{"action":"show_text","value":[{{"text":"[$(name)]\n","color":"$(color)"}},{{"text":"$(description)\n","color":"white"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":",","color":"dark_gray"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":"% de réussite soit $(total) joueurs","color":"gray"}},{{"text":"\n\n[Proposé par $(auteur)]","color":"gray"}}]}}}},{{"text":" [$(name)] ","color":"$(color)"}},{{"text":"avec ","color":"gray"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":",","color":"dark_gray"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":"% de réussite","color":"gray"}}]

# English
$execute unless data storage {ns}:advancements all[{{id:$(id)}}].players[{{name:"$(player)"}}] run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"➤","color":"gray","hover_event":{{"action":"show_text","value":[{{"text":"[$(name)]\n","color":"$(color)"}},{{"text":"$(description_en)\n","color":"white"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":",","color":"dark_gray"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":"% success or $(total) players","color":"gray"}},{{"text":"\n\n[Suggested by $(auteur)]","color":"gray"}}]}}}},{{"text":" [$(name)] ","color":"$(color)"}},{{"text":"with ","color":"gray"}},{{"nbt":"temp.percent.int","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":",","color":"dark_gray"}},{{"nbt":"temp.percent.digits","storage":"{ns}:temp","plain":true,"color":"dark_gray"}},{{"text":"% success","color":"gray"}}]
""")

	# /trigger_succes_main
	write_function(f"{path}/trigger_succes_main", rf"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Liste des succès :"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Advancements list:"}}]
""")

	# /tutorial_second
	write_function(f"{path}/tutorial_second", rf"""
# French
execute if score @s {ns}.tutorial matches 0..2 run title @s[scores={{{ns}.lang=0}}] times 0 30 20
execute if score @s {ns}.tutorial matches 0..2 run title @s[scores={{{ns}.lang=0}}] title {{"text":"[Tutoriel]","color":"gold"}}
execute if score @s {ns}.tutorial matches 0..2 run title @s[scores={{{ns}.lang=0}}] subtitle {{"text":"Regardez votre tchat","color":"yellow"}}
execute if score @s {ns}.tutorial matches 4.. run title @s[scores={{{ns}.lang=0}}] times 0 30 20
execute if score @s {ns}.tutorial matches 4.. run title @s[scores={{{ns}.lang=0}}] title {{"text":"[Tutoriel]","color":"gold"}}
execute if score @s {ns}.tutorial matches 4.. run title @s[scores={{{ns}.lang=0}}] subtitle {{"text":"Regardez votre tchat","color":"yellow"}}
execute if score @s {ns}.tutorial matches 0 run tellraw @s[scores={{{ns}.lang=0}}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 0 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Bienvenue à toi sur l'espace Switch "}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-chan !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Bienvenue à toi sur l'espace Switch "}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-kun !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 2 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Bienvenue à toi sur l'espace Switch "}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-sama !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 3 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Bienvenue à toi sur l'espace Switch "}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-sensei !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 4 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Bienvenue à toi sur l'espace Switch "}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-san !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 5 run tellraw @s[scores={{{ns}.lang=0}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Bienvenue à toi sur l'espace Switch "}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-senpai !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 0 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Ah pardon, je suis peut-être trop familier avec toi, désolé "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nBref, je suis le moteur de l'espace Switch, je suis là pour t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es séparé du reste du monde, mais ne t'inquiète pas, tu pourras bientôt rejoindre les autres joueurs !"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Ah excuse-moi, je suis peut-être trop familier avec toi, désolé "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nBon, je suis le moteur de l'espace Switch et je vais t'expliquer comment tout fonctionne ici !\nPour l'instant, tu ne peux pas lire les messages des autres joueurs, jusqu'à tu finisses ce tutoriel !"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 2 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Ah désolé, je suis peut-être un peu trop familier avec toi "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nEnfin, je suis le moteur de l'espace Switch, et je vais t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es isolé des autres joueurs, mais ne t'en fais pas, tu pourras bientôt les rejoindre !"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 3 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Oh pardon, je suis peut-être un peu trop familier avec toi, désolé "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nEh bien, je suis le moteur de l'espace Switch, et je vais te guider pour comprendre comment tout fonctionne ici !\nPour le moment, tu es séparé des autres joueurs, mais rassure-toi, tu pourras bientôt les rejoindre !"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 4 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Oh excuse-moi, je suis peut-être trop familier avec toi, désolé "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nAlors voilà, je suis le moteur de l'espace Switch, et je suis là pour t'aider à comprendre comment tout fonctionne ici !\nActuellement, tu es séparé des autres joueurs, mais ne t'inquiète pas, tu pourras bientôt les rejoindre !"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 5 run tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Oh, je m'excuse, peut-être que je suis un peu trop familier avec toi "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nEnfin, je suis le moteur de l'espace Switch, et je vais te guider pour que tu comprennes comment tout fonctionne ici !\nPour l'instant, tu es séparé des autres joueurs, mais ne t'en fais pas, tu pourras bientôt les rejoindre !"}}]
execute if score @s {ns}.tutorial matches 1 run tellraw @s[scores={{{ns}.lang=0}}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{{"text":"Premièrement, qu'est-ce que l'espace Switch ?\n","color":"gray"}},{{"text":"\nL'espace Switch est un serveur/map Minecraft mini-jeux démocratique, c'est-à-dire que les joueurs peuvent voter pour les mini-jeux qu'ils veulent jouer !"}},{{"text":"\nJe vais te montrer comment voter pour un mini-jeu, suis-moi !"}}]
execute if score @s {ns}.tutorial matches 2 run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"text":"Ce que tu peux voir au dessus, c'est au moment du vote pour les mini-jeux, tu peux voir la description de chaque mini-jeu en passant ta souris dessus, et tu pourras voter pour un mini-jeu en cliquant dessus !"}},{{"text":"\nDès que le temps sera écoulé, le mini-jeu qui aura le plus de votes sera choisi !","color":"gray"}},{{"text":"\nMaintenant, je vais te montrer comment acheter des objets dans le shop !"}}]
execute if score @s {ns}.tutorial matches 3 run tellraw @s[scores={{{ns}.lang=0}}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{{"text":"Est-ce que tu vois ces particules au sol ? Je les ai placés de tel sorte à ce qu'elles te guident vers le shop du Pitchout, essaie de les suivre !"}},{{"text":"\nEssaie de cliquer sur le panneau du shop !\n","color":"gray"}}]
execute if score @s {ns}.tutorial matches 4 run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"text":"Voici le shop du Pitchout ! Ici est listé toutes les améliorations que tu peux acheter pour ce mini-jeu !"}},{{"text":"\nComme je suis sympa, je viens de te donner 100","color":"gray"}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":". Essaie d'acheter une amélioration !\n","color":"gray"}}]
execute if score @s {ns}.tutorial matches 5 run tellraw @s[scores={{{ns}.lang=0}}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{{"text":"Bien joué ! Tu viens d'acheter ta première amélioration !"}},{{"text":"\nMaintenant, je vais te montrer comment obtenir de l'aide si tu es perdu ! Cela est très simple, essaie de taper la commande","color":"gray"}},{{"text":" '/help' ","color":"aqua"}},{{"text":"!\n","color":"gray"}}]
execute if score @s {ns}.tutorial matches 6 run tellraw @s[scores={{{ns}.lang=0}}] ["",{{"text":"Tu verras qu'il y a deux commandes '/attach' et '/detach'.","color":"gray"}},{{"text":"\nDans l'espace Switch, tu peux te détacher du moteur pour retourner dans ce lobby où tu es actuellement, ou te rattacher pour jouer !"}},{{"text":"\nBref, je pense que tu as compris le principe du Switch, je vais te laisser découvrir le reste par toi-même !\nJe te souhaite un bon jeu sur l'espace Switch !","color":"gray"}}]
execute if score @s {ns}.tutorial matches 6 run tellraw @s[scores={{{ns}.lang=0}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tapez '/detach' ou '/spawn' pour terminer le tutoriel !","color":"green"}}]
execute if score @s {ns}.tutorial matches 0..2 run tellraw @s[scores={{{ns}.lang=0}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Cliquez [ici] pour passer au dialogue suivant !","color":"green","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.tutorial set 2"}}}}]

# English
execute if score @s {ns}.tutorial matches 0..2 run title @s[scores={{{ns}.lang=1}}] times 0 30 20
execute if score @s {ns}.tutorial matches 0..2 run title @s[scores={{{ns}.lang=1}}] title {{"text":"[Tutorial]","color":"gold"}}
execute if score @s {ns}.tutorial matches 0..2 run title @s[scores={{{ns}.lang=1}}] subtitle {{"text":"Watch your chat","color":"yellow"}}
execute if score @s {ns}.tutorial matches 4.. run title @s[scores={{{ns}.lang=1}}] times 0 30 20
execute if score @s {ns}.tutorial matches 4.. run title @s[scores={{{ns}.lang=1}}] title {{"text":"[Tutorial]","color":"gold"}}
execute if score @s {ns}.tutorial matches 4.. run title @s[scores={{{ns}.lang=1}}] subtitle {{"text":"Watch your chat","color":"yellow"}}
execute if score @s {ns}.tutorial matches 0 run tellraw @s[scores={{{ns}.lang=1}}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 0 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Welcome to the Switch space"}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-chan!","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Welcome to the Switch space"}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-kun !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 2 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Welcome to the Switch space"}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-sama!","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 3 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Welcome to the Switch space"}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-sensei!","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 4 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Welcome to the Switch space"}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-san !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 5 run tellraw @s[scores={{{ns}.lang=1}}] [{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Welcome to the Switch space"}},{{"nbt":"cutted_username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"-senpai !","color":"gold"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 0 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Ah sorry, maybe I'm too familiar with you, sorry "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nHowever, I'm the Switch engine, I'm here to help you understand how everything works here!\nCurrently, you're separated from the rest of the world, but don't worry, you'll soon be able to join the other players!"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 1 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Ah excuse me, perhaps I'm too familiar with you, sorry "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nOkay, I'm the Switch engine and I'm going to explain how everything works here!\nFor the moment, you can't read other players' messages, until you finish this tutorial!"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 2 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Ah sorry, maybe I'm a bit too familiar with you "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nFinally, I'm the Switch engine, and I'm going to help you understand how everything works here!\nAt the moment, you're isolated from the other players, but don't worry, you'll soon be able to join them!"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 3 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Oh sorry, maybe I'm a bit too familiar with you, sorry "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nWell, I'm the Switch engine, and I'm going to guide you through how everything works here!\nFor the moment, you're separated from the other players, but don't worry, you'll soon be able to join them!"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 4 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Oh excuse me, maybe I'm too familiar with you, sorry "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nSo here I am, the Switch engine, and I'm here to help you understand how everything works here!\nCurrently, you're separated from the other players, but don't worry, you'll soon be able to join them!"}}]
execute if score @s {ns}.tutorial matches 0 if score #dialog_type {ns}.data matches 5 run tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Oh, I'm sorry, maybe I'm a little too familiar with you "}},{{"nbt":"username","storage":"{ns}:temp","interpret":true,"color":"gold"}},{{"text":"...\nFinally, I'm the engine of the Switch space, and I'm going to guide you so that you understand how everything works here!\nFor the moment, you're separated from the other players, but don't worry, you'll soon be able to join them!"}}]
execute if score @s {ns}.tutorial matches 1 run tellraw @s[scores={{{ns}.lang=1}}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{{"text":"First of all, what is the Switch space?\n","color":"gray"}},{{"text":"\nThe Switch space is a democratic Minecraft mini-games server/map, meaning that players can vote for the mini-games they want to play!"}},{{"text": "\nI'll show you how to vote for a mini-game, just follow me!"}}]
execute if score @s {ns}.tutorial matches 2 run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"text":"What you can see above is when you vote for the mini-games, you can see the description of each mini-game by hovering your mouse over it, and you can vote for a mini-game by clicking on it!"}},{{"text":"\nAs soon as the time runs out, the mini-game with the most votes will be chosen!","color":"gray"}},{{"text":"\nNow I'm going to show you how to buy items in the shop!"}}]
execute if score @s {ns}.tutorial matches 3 run tellraw @s[scores={{{ns}.lang=1}}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{{"text":"Can you see these particles on the floor? I've placed them so that they guide you to the Pitchout shop, so try to follow them!"}},{{"text":"\nTry to click on the shop sign!","color":"gray"}}]
execute if score @s {ns}.tutorial matches 4 run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"text":"Here's the Pitchout shop! Here's a list of all the upgrades you can buy for this mini-game!"}},{{"text":"\nJust because I'm nice, I just gave you 100","color":"gray"}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":". Try to buy an upgrade!\n","color":"gray"}}]
execute if score @s {ns}.tutorial matches 5 run tellraw @s[scores={{{ns}.lang=1}}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{{"text":"Well done! You've just bought your first upgrade!"}},{{"text":"\nNow I'll show you how to get help if you're lost! It's very simple, just try typing the command","color":"gray"}},{{"text":" '/help' ","color":"aqua"}},{{"text":"!\n","color":"gray"}}]
execute if score @s {ns}.tutorial matches 6 run tellraw @s[scores={{{ns}.lang=1}}] ["",{{"text":"You'll see that there are two commands '/attach' and '/detach'.","color":"gray"}},{{"text":"\nIn the Switch space, you can detach yourself from the engine to return to this lobby where you currently are, or reattach yourself to play!"}},{{"text":"\nI think you've understood the Switch principle, so I'll let you discover the rest for yourself!\nI hope you enjoy playing in the Switch space!","color":"gray"}}]
execute if score @s {ns}.tutorial matches 6 run tellraw @s[scores={{{ns}.lang=1}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Type '/detach' or '/spawn' to end the tutorial!","color":"green"}}]
execute if score @s {ns}.tutorial matches 0..2 run tellraw @s[scores={{{ns}.lang=1}}] ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Click [here] to go to the next dialog!","color":"green","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.tutorial set 2"}}}}]
""")

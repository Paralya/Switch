
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the infected translation functions at switch:modes/infected/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/infected/translations"

	# /death_cure
	write_function(f"{path}/death_cure", r"""
# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s"},{"text":" vient de soigner son infection avec un antidote !","color":"dark_purple"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s"},{"text":" just cured their infection with an antidote!","color":"dark_purple"}]
""")

	# /death_launch_infection
	write_function(f"{path}/death_launch_infection", r"""
# French
execute unless score @s switch.temp.infection matches 2.. if entity @p[tag=switch.temp] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"selector":"@s"},{"text":" vient de se faire infecter par ","color":"green"},{"selector":"@p[tag=switch.temp]"},{"text":" !","color":"green"}]

# English
execute unless score @s switch.temp.infection matches 2.. if entity @p[tag=switch.temp] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"selector":"@s"},{"text":" has just been infected by ","color":"green"},{"selector":"@p[tag=switch.temp]"},{"text":"!","color":"green"}]
""")

	# /process_end
	write_function(f"{path}/process_end", r"""
# French
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Les renforts sont arrivés, victoires des "},{"text":"humains","color":"light_purple"},{"text":" !"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tous les humains se sont fait infectés, victoire des "},{"text":"zombies","color":"dark_green"},{"text":" !"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# English
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Reinforcements have arrived, victories for "},{"text":"humans","color":"light_purple"},{"text":"!"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" All humans got infected, victory for "},{"text":"zombies","color":"dark_green"},{"text":"!"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side is the winner as there are no players left alive!"}]
""")

	# /second_selector
	write_function(f"{path}/second_selector", r"""
# French
execute if score #infected_seconds switch.data matches 10 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[scores={switch.temp.infection=1}]","color":"green"},{"text":" a été choisi comme premier infecté !","color":"dark_purple"},{"text":"\nHumains, les renforts arrivent dans moins de 10 minutes !","color":"light_purple"}]
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[tag=switch.to_infect]","color":"green"},{"text":" a été choisi comme nouvel infecté car il n'y a plus de zombies !"}]

# English
execute if score #infected_seconds switch.data matches 10 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@p[scores={switch.temp.infection=1}]","color":"green"},{"text":" has been chosen as the first infected!","color":"dark_purple"},{"text":"\nHumans, the military will be here in less than 10 minutes!","color":"light_purple"}]
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@p[tag=switch.to_infect]","color":"green"},{"text":" has been chosen as the new infected because there are no more zombies!"}]
""")

	# /second_start
	write_function(f"{path}/second_start", r"""
# French
execute if score #infected_seconds switch.data matches -10..-2 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"score":{"name":"#temp","objective":"switch.data"},"color":"light_purple"},{"text":" secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"text":"1","color":"light_purple"},{"text":" seconde","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"La partie commence ! Cliquez [ici] si vous ne souhaitez pas être le premier infecté !","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.temp.dont_want_to_be_infected set 1"},"hover_event":{"action":"show_text","value":{"text":"Vous ne serez pas pris au hasard de la première infection !","color":"gray"}}}]
execute if score #infected_seconds switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Humains : ","color":"light_purple"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"dark_purple"},{"text":", "},{"text":"Zombies : ","color":"dark_green"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"green"}]
execute if score #infected_seconds switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 3 secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 8 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 2 secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 1 seconde","color":"dark_purple"}]

# English
execute if score #infected_seconds switch.data matches -10..-2 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Start of game in ","color":"dark_purple"},{"score":{"name":"#temp","objective":"switch.data"},"color":"light_purple"},{"text":" seconds","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -1 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Start of game in ","color":"dark_purple"},{"text":"1","color":"light_purple"},{"text":" second","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"The game is starting! Click [here] if you don't want to be the first to be infected!","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.temp.dont_want_to_be_infected set 1"},"hover_event":{"action":"show_text","value":{"text":"You won't be caught in the randomness of the first infected!","color":"gray"}}}]
execute if score #infected_seconds switch.data matches 0.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Humans: ","color":"light_purple"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"dark_purple"},{"text":", "},{"text":"Zombies: ","color":"dark_green"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"green"}]
execute if score #infected_seconds switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 3 seconds","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 8 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 2 seconds","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 9 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 1 second","color":"dark_purple"}]
""")

	# /secrets_ancienne_egypte_button_black
	write_function(f"{path}/secrets_ancienne_egypte_button_black", r"""
# French
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ces mécanismes anciens sont fascinants... D'après les écritures, il faut activer les leviers simultanément des deux côtés pour ouvrir le passage !"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Je... je refuse de mourir ici ! Pardonnez-moi, mais votre sacrifice permettra ma survie..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Je... la peur me consume... Je ne peux pas... Je suis tellement désolé, mais je dois vivre, même si cela signifie vous trahir. Que les dieux me pardonnent..."}]

# English
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> These ancient mechanisms are fascinating... According to the writings, we need to activate the levers simultaneously on both sides to open the passage!"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> I... I refuse to die here! Forgive me, but your sacrifice will ensure my survival... It's the law of nature, the strong survive..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> I... fear consumes me... I can't... I'm so sorry, but I must live, even if it means betraying you. May the gods forgive me..."}]
""")

	# /secrets_ancienne_egypte_button_red
	write_function(f"{path}/secrets_ancienne_egypte_button_red", r"""
# French
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ces mécanismes anciens sont fascinants... D'après les écritures, il faut activer les leviers simultanément des deux côtés pour ouvrir le passage !"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Je... je sens mes forces m'abandonner. Pardonnez-moi, continuez sans moi et découvrez la vérité derrière tout ça..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Écoutez-moi bien... Dans cette tombe repose peut-être le secret de cette épidémie. Je vous fais confiance pour percer ce mystère..."}]

# English
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> These ancient mechanisms are fascinating... According to the writings, we need to activate the levers simultaneously on both sides to open the passage!"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> I... I can feel my strength fading. Please, continue without me and uncover the truth behind all of this..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Listen carefully... This tomb might hold the secret to this epidemic. I trust you to solve this mystery..."}]
""")

	# /secrets_ancienne_egypte_next_state
	write_function(f"{path}/secrets_ancienne_egypte_next_state", r"""
# French
execute if score #infected_secret switch.data matches 0 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Incroyable ! Les hiéroglyphes sur le mur viennent de s'illuminer et un passage secret s'est dévoilé ! Les anciens Égyptiens étaient vraiment des maîtres de l'architecture."}]
execute if score #infected_secret switch.data matches 1 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ces inscriptions... Ce n'est pas de l'égyptien ancien, mais de l'arabe ! Quelqu'un est venu ici bien après la construction de cette tombe. Si seulement j'étais pas une brêle dans ce langue..."}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Attendez... Ces nouvelles inscriptions sont plus récentes. Elles parlent d'un phénomène terrifiant : un volcan surgi de nulle part près d'un ancien cimetière, il y a dix ans. La zone entière a dû être évacuée d'urgence. Les villageois parlaient de 'malédiction' et de 'présages funestes'..."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Un volcan qui apparaît spontanément ? C'est géologiquement impossible ! Il doit y avoir un lien avec l'épidémie zombie. Cette anomalie pourrait être la clé de tout ce cauchemar."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Nous devons nous rendre sur ce site volcanique. Même si c'est dangereux, c'est notre meilleure chance de comprendre l'origine de cette catastrophe. En route !"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]

# English
execute if score #infected_secret switch.data matches 0 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Incredible! The hieroglyphs on the wall just lit up and revealed a secret passage! The ancient Egyptians were truly masters of architecture."}]
execute if score #infected_secret switch.data matches 1 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> These inscriptions... This isn't ancient Egyptian, it's Arabic! Someone came here long after this tomb was built. If only I was a better linguist..."}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Wait... These new inscriptions are more recent. They speak of a terrifying phenomenon: a volcano that emerged from nowhere near an ancient cemetery, ten years ago. The entire area had to be evacuated immediately. The villagers spoke of 'curses' and 'dark omens'..."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> A volcano appearing spontaneously? That's geologically impossible! There must be a connection to the zombie outbreak. This anomaly could be the key to this whole nightmare."}]
execute if score #infected_secret switch.data matches 3 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> We need to get to this volcanic site. Even if it's dangerous, it's our best chance at understanding the origin of this catastrophe. Let's move!"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]
""")

	# /secrets_area_51_next_state
	write_function(f"{path}/secrets_area_51_next_state", r"""
# French
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"*Le générateur de secours s'allume dans un vrombissement*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 0 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Enfin ! Le courant est revenu ! Vite, on doit mettre ces machines en marche avant qu'ils ne nous rattrapent !"}]
execute if score #infected_secret switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"*La machine vibre alors qu'elle extrait le sang des zombies*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 1 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Tenez vos positions ! Il faut absolument protéger cette extraction, c'est peut-être notre seule chance !"}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"*Extraction terminée - échantillon sanguin sécurisé*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 2 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Parfait ! Maintenant, croisons les doigts que la fusion avec l'élément 115 nous donne un antidote... C'est notre dernière chance."}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"[BioSynthLabs] Initialisation de l'analyse combinée : Élément 115 + Sang zombie... Temps estimé : 5 minutes. Maintenir la stabilité du système.","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"[BioSynthLabs] ALERTE CRITIQUE : Code 51-ZOM, La matrice de synthèse virale a atteint un niveau d'instabilité critique. La fusion moléculaire dépasse les paramètres de sécurité.","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"[BioSynthLabs] *Activation du mode sécurisé* Tentative de stabilisation...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"[BioSynthLabs] ERR£UR SYST#ME: ***** 0x1894915335 CONTAMINATION DÉTECTÉE 0x01519819 0x","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 6 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"[BioSynthLabs] MUTATION DÉTECTÉE****************\n***********************************\nCONTAMINATION TOTALE\n******FUSION*INSTABLE*115*","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"[BioSynthLabs] DÉFAILLANCE CATASTROPHIQUE IMMINENTE - ÉVACUATION IMMÉDIATE RECOMMANDÉE - DANGER BIOLOGIQUE NIVEAU MAXIMAL","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 8 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Bon sang ! Tout le système vient de griller ! La réaction était trop instable !"}]
execute if score #infected_secret switch.data matches 8 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Toutes nos recherches... Tout notre espoir... Partis en fumée ! Comment on va s'en sortir maintenant ?!"}]
execute if score #infected_secret switch.data matches 9 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> C'est fini... La science ne peut plus nous sauver. Nous sommes seuls face à cette apocalypse."}]
execute if score #infected_secret switch.data matches 9 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Il ne nous reste plus qu'une seule option... Exterminer. Chaque. Dernier. Zombie. Jusqu'au bout."}]
execute if score #infected_secret switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]

# English
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"*The backup generator roars to life*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 0 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Finally! Power's back! Quick, we need to get these machines running before they catch up to us!"}]
execute if score #infected_secret switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"*The machine hums as it extracts zombie blood*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 1 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Hold your positions! We must protect this extraction at all costs, it might be our only chance!"}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"*Extraction complete - blood sample secured*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 2 as @r[team=switch.temp.human,distance=..10] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Perfect! Now, let's pray the fusion with element 115 gives us an antidote... It's our last shot."}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"[BioSynthLabs] Initiating combined analysis: Element 115 + Zombie Blood... Estimated time: 5 minutes. Maintaining system stability.","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"[BioSynthLabs] CRITICAL ALERT: Code 51-ZOM, Viral synthesis matrix has reached dangerous instability levels. Molecular fusion exceeding safety parameters.","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"[BioSynthLabs] *Safe mode activated* Attempting stabilization...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"[BioSynthLabs] SYST#M ERR0R: ***** 0x1894915335 CONTAMINATION DETECTED 0x01519819 0x","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 6 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"[BioSynthLabs] MUTATION DETECTED****************\n***********************************\nTOTAL CONTAMINATION\n******FUSION*UNSTABLE*115*","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"[BioSynthLabs] CATASTROPHIC FAILURE IMMINENT - IMMEDIATE EVACUATION ADVISED - MAXIMUM BIOHAZARD LEVEL","color":"red","italic":true}]
execute if score #infected_secret switch.data matches 8 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Damn it! The whole system just fried! The reaction was too unstable!"}]
execute if score #infected_secret switch.data matches 8 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> All our research... All our hope... Gone up in smoke! How are we going to survive now?!"}]
execute if score #infected_secret switch.data matches 9 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> It's over... Science can't save us anymore. We're alone in this apocalypse."}]
execute if score #infected_secret switch.data matches 9 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> We only have one option left... Exterminate. Every. Last. Zombie. Until the end."}]
execute if score #infected_secret switch.data matches 9 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]
""")

	# /secrets_lost_graveyard_next_state
	write_function(f"{path}/secrets_lost_graveyard_next_state", r"""
# French
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Fascinant... Ce pot mystérieux semble absorber l'essence même des zombies que j'élimine. Je peux voir les âmes tourbillonner à l'intérieur !"}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Oof ! Le pot vient d'éclater ! La puissance était si colossale que la porte en acier renforcé s'est désintégrée !"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Eurêka ! J'ai réussi à synthétiser un explosif en combinant le sable et la poudre des creepers. Ce foutu minerai maudit ne résistera pas longtemps !"}]
execute if score #infected_secret switch.data matches 4 as @p[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Mission accomplie ! Le minerai n'est plus qu'un tas de débris fumants ! J'ai récupéré l'échantillon !"}]
execute if score #infected_secret switch.data matches 4 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Notre dernière épreuve nous attend : tenir bon jusqu'au retour des renforts. Ces échantillons de minerai doivent absolument être analysés au méga-laboratoire. L'avenir de l'humanité en dépend !"}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]

# English
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Fascinating... This mysterious jar appears to be absorbing the very essence of the zombies I eliminate. I can see their souls swirling inside!"}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Oof! The jar just exploded! The power was so immense that the reinforced steel door disintegrated!"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Eureka! I've managed to synthesize an explosive by combining sand with the powder from the creepers. This damn cursed ore won't stand a chance!"}]
execute if score #infected_secret switch.data matches 4 as @p[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Mission accomplished! The ore is nothing but smoldering debris now! I've retrieved the sample!"}]
execute if score #infected_secret switch.data matches 4 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Our final trial awaits: hold out until reinforcements arrive. These ore samples must be analyzed at the mega-lab. The future of humanity might depend on it!"}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]
""")

	# /secrets_old_japan_apocalypse_next_state
	write_function(f"{path}/secrets_old_japan_apocalypse_next_state", r"""
# French
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Une porte s'est ouverte...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 1 run tellraw @a[scores={switch.lang=0},team=switch.temp.human,tag=!detached] [{"text":"Un joueur vient d'activer la radio, cliquez [ici] pour l'écouter","color":"gray","italic":true,"click_event":{"action":"run_command","command":"/trigger switch.temp.radio_trigger set 1"}}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Sirènes d'urgence* - Flash spécial ! Je suis Sarah Connor en direct de Radio Info. Une pluie de météorites d'origine inconnue s'abat actuellement sur toute la planète ! La situation est critique !","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] Nos experts du CNRS rapportent que ces météorites émettent des radiations jamais observées auparavant. Le minerai qui les compose défie toutes nos connaissances scientifiques...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Voix tremblante* Je répète l'avis des autorités : Barricadez-vous chez vous, n'approchez surtout pas des zones d'impact. Les forces spéciales sont en route vers les zones touchées.","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 5 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Interférences* Pshhhhhhhhhh *Grésillements* ...situation critique... Pshhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 6 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] On me communique à l'instant... *Papiers froissés* Mon dieu... Ce sont les mêmes météorites qui ont frappé l'Ukraine il y a quelques décennies. L'incident avait été camouflé...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 7 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Interférences violentes* ...signal faible... tentative de maintenir... Pshhhhhhh...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 8 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Voix paniquée* L'équipe de scientifiques du... en Égypte... Ils avaient découvert quelque chose... Toute l'équipe... disparue en quelques heures...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 9 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] Le site est devenu... une sorte de volcan vivant... Les équipes de secours qui s'en approchent ne reviennent jamais... *Respiration difficile*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 10 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Interférences massives* PSHHHHHH... DANGER... PSHHHHHH... ÉVACUATION... PSHHHHHH","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 11 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Voix différente* Les services secrets ukrainiens ont classifié toute l'affaire... La zone est en quarantaine totale... Les témoins parlent de... mutations...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 12 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Bruits de chaos en arrière-plan* - Mme Connor ! Les portes cèdent ! Il y a des... des choses qui entrent ! Ce ne sont plus des humains !","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 13 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Cris en arrière-plan* Mme Connor ?! Oh mon dieu, ses yeux... SES YEUX ! COUPEZ LA TRANS--- *Hurlement strident* ---pshhhhhhhhhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 14 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Fin de la diffusion de la radio","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Putain, c'est quoi ce bordel ?! Le studio de radio est pourtant à des kilomètres d'ici !"}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> On ne peut pas rester ici à attendre la mort ! Il doit bien y avoir un moyen de s'en sortir vivants !"}]
execute if score #infected_secret switch.data matches 15 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Attendez ! J'ai une idée ! Ce village contient des pièces rares - on pourrait construire une balise de détresse ! Les militaires la repéreront forcément !"}]
execute if score #infected_secret switch.data matches 16 as @p[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ça y est ! La balise émet son signal ! Avec un peu de chance, quelqu'un l'interceptera !"}]
execute if score #infected_secret switch.data matches 16 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Maintenant, il faut tenir bon jusqu'à l'arrivée des secours. On ne peut pas abandonner, pas maintenant !"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Les hélicoptères ! Je les entends ! Les renforts sont enfin là !"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Cette menace est plus grande que nous tous... Les recherches des égyptiens sont notre seul espoir de comprendre ce qui se passe. Il faut les retrouver, coûte que coûte !"}]
execute if score #infected_secret switch.data matches 17 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]

# English
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"A door has opened...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 1 run tellraw @a[scores={switch.lang=1},team=switch.temp.human,tag=!detached] [{"text":"A player just turned on the radio, click [here] to listen to it","color":"gray","italic":true,"click_event":{"action":"run_command","command":"/trigger switch.temp.radio_trigger set 1"}}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Emergency sirens* - Breaking news! This is Sarah Connor live from Radio Info. A shower of meteorites of unknown origin is currently falling all over the planet! The situation is critical!","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] Our research experts report that these meteorites are emitting never-before-seen radiation. The mineral composing them defies all our scientific knowledge...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Trembling voice* I repeat the authorities' warning: Barricade yourselves at home, do not approach impact zones. Special forces are en route to affected areas.","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 5 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Interference* Pshhhhhhhhhh *Static* ...critical situation... Pshhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 6 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] I'm just being informed... *Papers rustling* Dear God... These are the same meteorites that hit Ukraine decades ago. The incident was covered up...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 7 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Heavy interference* ...weak signal... attempting to maintain... Pshhhhhhh...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 8 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Panicked voice* The science team from Cairo... They had discovered something... The entire team... vanished within hours...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 9 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] The site has become... some kind of living volcano... Rescue teams that approach never return... *Labored breathing*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 10 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Massive interference* PSHHHHHH... DANGER... PSHHHHHH... EVACUATION... PSHHHHHH","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 11 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Different voice* Ukrainian secret services have classified the whole affair... The area is under total quarantine... Witnesses speak of... mutations...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 12 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Chaos sounds in background* - Mrs. Connor! The doors are giving way! There are... things coming in! They're not human anymore!","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 13 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Screams in background* Mrs. Connor?! Oh God, her eyes... HER EYES! CUT THE TRANS--- *Piercing scream* ---pshhhhhhhhhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 14 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"End of radio broadcast","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> What the fuck?! The radio studio is miles away!"}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> We can't just sit here waiting for death! There must be a way to survive this nightmare!"}]
execute if score #infected_secret switch.data matches 15 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Wait! I have an idea! The village has rare components - we could build a distress beacon! The military will surely spot it!"}]
execute if score #infected_secret switch.data matches 16 as @p[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> There! The beacon is broadcasting! With any luck, someone will pick up our signal!"}]
execute if score #infected_secret switch.data matches 16 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Now we just need to hold out until help arrives. We can't give up, not when we've come this far!"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> The helicopters! I can hear them! The reinforcements are finally here!"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> This threat is bigger than all of us... The Egyptians' research is our only hope of understanding what's happening. We must find it, no matter the cost!"}]
execute if score #infected_secret switch.data matches 17 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]
""")

	# /start
	write_function(f"{path}/start", r"""
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie d'Infecté dans 12 secondes, un joueur aléatoire va être choisi pour être le premier infecté de la partie ! Survivez jusqu'à la fin du temps imparti en tant qu'humain ou infectez tous les humains en tant que zombie !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaPvPOldFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Infected game starts in 12 seconds, a random player will be chosen to be the first infected of the game! Survive to the end of the time limit as a human or infect all humans as a zombie!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaPvPOldEN","storage":"switch:main","interpret":true}]
""")

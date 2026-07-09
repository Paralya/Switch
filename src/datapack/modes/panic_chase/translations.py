
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the panic_chase translation functions at switch:modes/panic_chase/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/panic_chase/translations"

	# /detect_end
	write_function(f"{path}/detect_end", f"""
# French
execute if score #remaining_time {ns}.data matches 0 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, temps écoulé ! Victoire des "}},{{"text":"souris","color":"blue"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse]"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"chasseurs","color":"red"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.hunter]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, plus aucun chasseur en vie donc victoire des "}},{{"text":"souris","color":"blue"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}}]

# English
execute if score #remaining_time {ns}.data matches 0 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, time up! Victory for "}},{{"text":"mouse","color":"blue"}},{{"text":"! GG to "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse]"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, victory for "}},{{"text":"hunters","color":"red"}},{{"text":"! GG to "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.hunter]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, no hunter left alive so victory for the "}},{{"text":"mouse","color":"blue"}},{{"text":" team! GG to "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, neither side has won because there are no players left alive!"}}]
""")

	# /second
	write_function(f"{path}/second", f"""
# French
execute if score #remaining_time {ns}.data matches 0.. run title @a[scores={{{ns}.lang=0}},tag=!detached] actionbar [{{"text":"Temps restant : ","color":"aqua"}},{{"score":{{"name":"#minute","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"m"}},{{"score":{{"name":"#second","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"s"}}]

# English
execute if score #remaining_time {ns}.data matches 0.. run title @a[scores={{{ns}.lang=1}},tag=!detached] actionbar [{{"text":"Time remaining: ","color":"aqua"}},{{"score":{{"name":"#minute","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"m"}},{{"score":{{"name":"#second","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"s"}}]
""")

	# /start
	write_function(f"{path}/start", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de Panic Chase, libération des chasseurs dans 30 secondes ! Les souris doivent échapper aux chasseurs jusqu'à la fin du temps imparti alors que les chasseurs doivent les chasser !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"Attention, les souris ne peuvent pas taper les chasseurs !","color":"yellow"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPNewFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Panic Chase game launched, hunters will be free in 30 seconds! The mouse must escape from the hunters until the time runs out, while the hunters must chase them away!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"text":"Careful, the mouses can't hit the hunters!","color":"yellow"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPNewEN","storage":"{ns}:main","interpret":true}}]
""")

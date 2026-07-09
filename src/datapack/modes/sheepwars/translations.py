
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the sheepwars translation functions at switch:modes/sheepwars/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/sheepwars/translations"

	# /detect_end
	write_function(f"{path}/detect_end", f"""
# French
execute if score #remaining_time {ns}.data matches 1 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 12 minutes !"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"rouges","color":"red"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.red]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, victoire des "}},{{"text":"bleus","color":"blue"}},{{"text":" ! GG à "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}}]

# English
execute if score #remaining_time {ns}.data matches 1 if score #game_state {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, time up! Neither side is the winner after 12 minutes!"}}]
execute if score #game_state {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, victory of "}},{{"text":"red","color":"red"}},{{"text":" team! GG to "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.red]"}}]
execute if score #game_state {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, victory of "}},{{"text":"blue","color":"blue"}},{{"text":" team! GG to "}},{{"selector":"@a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue]"}}]
execute if score #game_state {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Game over, neither side has won because there are no players left alive!"}}]
""")

	# /magic_wool_place
	write_function(f"{path}/magic_wool_place", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["",{{"text":"[SheepWars] ","color":"yellow"}},{{"text":"Une laine magique est apparue !"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["",{{"text":"[SheepWars] ","color":"yellow"}},{{"text":"A magical wool has appeared!"}}]
""")

	# /magic_wool_slot
	write_function(f"{path}/magic_wool_slot", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" a activé la laine magique !"}}]
execute if score #random {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[20s de résistance pour son équipe]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[20s de régénération pour son équipe]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[5s de poison pour l'équipe adverse]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[10s de nausée pour l'équipe adverse]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 4 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[Un drop de mouton pour son équipe]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 5 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[10s de flèches enflammées pour son équipe]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 6 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[10s de flèches explosives pour son équipe]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 7 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[20s de slow falling pour son équipe]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 8 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] {{"text":"[10s de glowing pour l'équipe adverse]\\n","color":"aqua"}}

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" "}},{{"selector":"@s"}},{{"text":" activated the magic wool!"}}]
execute if score #random {ns}.data matches 0 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[20s of resistance for their team]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[20s regeneration for their team]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 2 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[5s of poison for the opposing team]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 3 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[10s of nausea for the opposing team]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 4 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[One drop of sheep for their team]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 5 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[10s of flaming arrows for their team]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 6 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[10s of explosive arrows for their team]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 7 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[20s of slow falling for their team]\\n","color":"aqua"}}
execute if score #random {ns}.data matches 8 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] {{"text":"[10s of glowing for the other team]\\n","color":"aqua"}}
""")

	# /start
	write_function(f"{path}/start", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Lancement de la partie de SheepWars dans 5 secondes, exterminez l'équipe ennemi grâce à vos moutons spéciaux et votre équipement !"}}]
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPOldFR","storage":"{ns}:main","interpret":true}}]
execute if score #APOCALYPSE_GAME {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" PARTIE APOCALYPTIQUE (1 chance sur 20) !\\n"}}]
execute if score #APOCALYPSE_GAME {ns}.data matches 1 run title @a[scores={{{ns}.lang=0}},tag=!detached] title {{"text":"PARTIE APOCALYPTIQUE (1/20 chance)"}}

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" SheepWars game starts in 5 seconds, exterminate the enemy team with your special sheeps and equipment!"}}]
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPOldEN","storage":"{ns}:main","interpret":true}}]
execute if score #APOCALYPSE_GAME {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" APOCALYPTIC GAME (1 in 20 chance)!\\n"}}]
execute if score #APOCALYPSE_GAME {ns}.data matches 1 run title @a[scores={{{ns}.lang=1}},tag=!detached] title {{"text":"APOCALYPTIC GAME (1/20 chance)"}}
""")

	# /tick
	write_function(f"{path}/tick", f"""
# French
execute if score #sheepwars_night {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"text":"[SheepWars] ","color":"yellow"}},{{"text":"Une nuit intergalactique commence !","color":"blue"}}]

# English
execute if score #sheepwars_night {ns}.data matches 1 run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"text":"[SheepWars] ","color":"yellow"}},{{"text":"An intergalactic night begins!","color":"blue"}}]
""")

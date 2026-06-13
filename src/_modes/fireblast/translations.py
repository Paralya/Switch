
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the fireblast translation functions at switch:modes/fireblast/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/fireblast/translations"

	# /death
	write_function(f"{path}/death", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#fireblast_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#fireblast_seconds","objective":"switch.data"}},{"text":" seconds!"}]
""")

	# /fireball_no_cooldown
	write_function(f"{path}/fireball_no_cooldown", """
# French
title @s[scores={switch.lang=0}] actionbar [{"text":"Cooldown en recharge : ","color":"red"},{"score":{"name":"#seconds","objective":"switch.temp.cooldown"},"color":"dark_red"},{"text":"."},{"score":{"name":"#digits","objective":"switch.temp.cooldown"},"color":"dark_red"},{"text":"s"}]

# English
title @s[scores={switch.lang=1}] actionbar [{"text":"Cooldown reloading: ","color":"red"},{"score":{"name":"#seconds","objective":"switch.temp.cooldown"},"color":"dark_red"},{"text":"."},{"score":{"name":"#digits","objective":"switch.temp.cooldown"},"color":"dark_red"},{"text":"s"}]
""")

	# /got_power_up
	write_function(f"{path}/got_power_up", """
# French
execute if items entity @s[scores={switch.lang=0}] container.* sugar[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"💨 ","color":"aqua"},{"text":"Boost de vitesse activé !","color":"yellow"},{"text":" (20s)","color":"gray"}]
execute if items entity @s[scores={switch.lang=0}] container.* blaze_powder[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🔥 ","color":"red"},{"text":"Rechargement rapide activé !","color":"yellow"},{"text":" (20s)","color":"gray"}]
execute if items entity @s[scores={switch.lang=0}] container.* rabbit_foot[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🐰 ","color":"green"},{"text":"Boost de saut activé !","color":"yellow"},{"text":" (20s)","color":"gray"}]

# English
execute if items entity @s[scores={switch.lang=1}] container.* sugar[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"💨 ","color":"aqua"},{"text":"Speed Boost activated!","color":"yellow"},{"text":" (20s)","color":"gray"}]
execute if items entity @s[scores={switch.lang=1}] container.* blaze_powder[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🔥 ","color":"red"},{"text":"Fast Reload activated!","color":"yellow"},{"text":" (20s)","color":"gray"}]
execute if items entity @s[scores={switch.lang=1}] container.* rabbit_foot[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🐰 ","color":"green"},{"text":"Jump Boost activated!","color":"yellow"},{"text":" (20s)","color":"gray"}]
""")

	# /process_end
	write_function(f"{path}/process_end", """
# French
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,gamemode=adventure]","color":"yellow"},{"text":" !"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[tag=!detached,gamemode=adventure]","color":"yellow"},{"text":"!"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up! There were no winners ;("}]
""")

	# /start
	write_function(f"{path}/start", """
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de Fireblast dans 5 secondes, soyez le dernier en vie !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Launch of Fireblast in 5 seconds, be the last man standing!"}]
""")

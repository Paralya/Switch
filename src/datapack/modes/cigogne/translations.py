
# Imports
from stewbeet import Mem, write_function


def write_translations():
	""" Write the cigogne translation functions at switch:modes/cigogne/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/cigogne/translations"

	# /start
	write_function(f"{path}/start", f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPOldFR","storage":"{ns}:main","interpret":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"ParalyaPvPOldEN","storage":"{ns}:main","interpret":true}}]
""")

	# /tick
	write_function(f"{path}/tick", f"""
# French
execute as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.sneak=..99,{ns}.lang=0}}] run title @s actionbar [{{"text":"Accroupi pour briller : ","color":"aqua"}},{{"score":{{"name":"@s","objective":"{ns}.temp.sneak"}},"color":"yellow"}},{{"text":"/100","color":"yellow"}}]
execute as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.sneak=100,{ns}.lang=0}}] run title @s actionbar [{{"text":"Relâche SHIFT maintenant !","color":"red"}}]

# English
execute as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.sneak=..99,{ns}.lang=1}}] run title @s actionbar [{{"text":"Sneak to glow: ","color":"aqua"}},{{"score":{{"name":"@s","objective":"{ns}.temp.sneak"}},"color":"yellow"}},{{"text":"/100","color":"yellow"}}]
execute as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.sneak=100,{ns}.lang=1}}] run title @s actionbar [{{"text":"Release SHIFT now!","color":"red"}}]
""")


# Imports
from stewbeet import Mem, write_function


def write_trigger_attach() -> None:
	""" Write the attach and changelog triggers. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /trigger/attach/main
	write_function(f"{path}/trigger/attach/main", f"""
scoreboard players set @s {ns}.trigger.attach 0
execute if score #can_attach {ns}.data matches 1 if score @s {ns}.lang matches 0.. run function {ns}:player/trigger/attach/real_attach
execute if score @s {ns}.lang matches 0.. run function {ns}:player/translations/trigger_attach_
""")

	# /trigger/attach/real_attach
	write_function(f"{path}/trigger/attach/real_attach", f"""
execute unless entity @s[team={ns}.tutorial] run tag @s remove detached
execute unless entity @s[team={ns}.tutorial] run team leave @s
execute unless entity @s[team={ns}.tutorial] run function {ns}:player/practice/disable
execute unless entity @s[team={ns}.tutorial] run function {ns}:player/layout/editor/force_close

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s {ns}.alive 0
execute unless entity @s[team={ns}.tutorial] if score #engine_state {ns}.data matches 2 run function {ns}:engine/voting_time/player_join
execute unless entity @s[team={ns}.tutorial] if score #engine_state {ns}.data matches 3 run scoreboard players set #reconnect {ns}.data 0
execute unless entity @s[team={ns}.tutorial] if score #engine_state {ns}.data matches 3 run function {ns}:engine/signals/joined

# Check if enough players
execute store result score #nb_attached {ns}.data if entity @a[tag=!detached]
function {ns}:player/translations/trigger_attach_real_attach
""")

	# /trigger/changelog/main
	write_function(f"{path}/trigger/changelog/main", f"""
function {ns}:translations/changelog
scoreboard players set @s {ns}.trigger.changelog 0
""")


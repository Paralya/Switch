# Imports
from stewbeet import Mem, write_function


def write_log_message() -> None:
	""" Write the functions that log engine events to the server console. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine"

	# /log_message/apply
	write_function(f"{path}/log_message/apply", f"""
#> {ns}:engine/log_message/apply
#
# @executed			Don't care
#
# @input macro		message: plain text to write to the console
#
# @description		Logs the message to the console through a test block, which logs it when powered
#

$execute in minecraft:overworld run setblock 0 2 0 test_block[mode=log]{{mode:"log",message:"$(message)"}}
execute in minecraft:overworld run setblock 0 3 0 redstone_block
execute in minecraft:overworld run setblock 0 3 0 air
execute in minecraft:overworld run setblock 0 2 0 air
""")

	# /log_message/game_started, /log_message/game_stopped and /log_message/map_selected (read the storage given to them)
	write_function(f"{path}/log_message/game_started", f"""
$function {ns}:engine/log_message/apply {{message:"Lancement d'une partie de `$(current_game_name)` !"}}
""")
	write_function(f"{path}/log_message/game_stopped", f"""
$function {ns}:engine/log_message/apply {{message:"Arret d'une partie de `$(current_game_name)` !"}}
""")
	write_function(f"{path}/log_message/map_selected", f"""
$function {ns}:engine/log_message/apply {{message:"Selected map: `$(map)`!"}}
""")


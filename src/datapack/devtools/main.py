""" Developer tooling shipped with the pack: test mode, artificial lag, command profiling.

Nothing here runs during a normal game. It is grouped so that it stays easy to spot, and easy to
strip if the pack ever needs to ship without it.
"""
# Imports
from stewbeet import Mem, write_function

from .profiling import write_profiling


def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:devtools"
	write_profiling()

	# /test_mode (toggle the global test mode)
	write_function(f"{path}/test_mode", f"""
# Get test mode state
scoreboard players set #is_enabled {ns}.data 0
execute if score #test_mode {ns}.data matches 1 run scoreboard players set #is_enabled {ns}.data 1

# Test Mode OFF -> ON
execute if score #is_enabled {ns}.data matches 0 run scoreboard players set #test_mode {ns}.data 1
execute if score #is_enabled {ns}.data matches 0 run scoreboard players set #can_attach {ns}.data 0

# Test Mode ON -> OFF
execute if score #is_enabled {ns}.data matches 1 run scoreboard players set #test_mode {ns}.data 0
execute if score #is_enabled {ns}.data matches 1 run scoreboard players set #can_attach {ns}.data 1

# Message the player
function {ns}:translations/test_mode
""")

	# /lag/disable
	write_function(f"{path}/lag/disable", f"""
kill @e[tag={ns}.lag_maker]
schedule clear {ns}:devtools/lag/enable
""")

	# /lag/enable
	write_function(f"{path}/lag/enable", f"""
# Kill previous
kill @e[tag={ns}.lag_maker]

# Summon new
execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=3] run summon zombie 0 10 0 {{Tags:["{ns}.lag_maker"],DeathLootTable:"none"}}

# Recall
schedule function {ns}:devtools/lag/enable 1t
""")  # noqa: E501


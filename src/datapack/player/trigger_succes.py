# Imports
from stewbeet import Mem, write_function


def write_trigger_succes() -> None:
	""" Write the succes trigger, listing each advancement a player did or not. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /trigger/succes/display_continue (macro: pop copy[0] then carry $(player) onto the next entry;
	# shared continue-loop tail of display_loop and display_loop_2)
	write_function(f"{path}/trigger/succes/display_continue", f"""
data remove storage {ns}:temp copy[0]
$execute if data storage {ns}:temp copy[0] run data modify storage {ns}:temp copy[0].player set value $(player)
""")

	# /trigger/succes/display_loop
	write_function(f"{path}/trigger/succes/display_loop", f"""
# Tellraw
data modify storage {ns}:temp temp set from storage {ns}:temp copy[0]
function {ns}:player/translations/trigger_succes_display_loop with storage {ns}:temp temp

# Continue loop
function {ns}:player/trigger/succes/display_continue with storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/succes/display_loop with storage {ns}:temp copy[0]
""")

	# /trigger/succes/display_loop_2
	write_function(f"{path}/trigger/succes/display_loop_2", f"""
# Tellraw
data modify storage {ns}:temp temp set from storage {ns}:temp copy[0]
function {ns}:player/translations/trigger_succes_display_loop_2 with storage {ns}:temp temp

# Continue loop
function {ns}:player/trigger/succes/display_continue with storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/succes/display_loop_2 with storage {ns}:temp copy[0]
""")

	# /trigger/succes/entry
	write_function(f"{path}/trigger/succes/entry", f"""
scoreboard players set @s {ns}.trigger.succes 0

setblock 0 13 0 air
setblock 0 13 0 yellow_shulker_box
loot insert 0 13 0 loot {ns}:get_username
data modify storage {ns}:main input set value {{player:"@s", current_game:""}}
data modify storage {ns}:main input.player set from block 0 13 0 Items[0].components."minecraft:profile".name
data modify storage {ns}:main input.current_game set from storage {ns}:main current_game
setblock 0 13 0 air

function {ns}:player/trigger/succes/main with storage {ns}:main input
""")

	# /trigger/succes/main (list each advancement done/not-done, grouped by category color)
	SUCCES_COLORS: tuple[str, ...] = ("blue", "green", "yellow", "red")
	def succes_blocks(loop: str) -> str:
		ns: str = Mem.ctx.project_id
		return "\n".join(
			f"data modify storage {ns}:temp copy set value []\n"
			f'data modify storage {ns}:temp copy append from storage {ns}:advancements all[{{color:"{c}"}}]\n'
			f'$execute if data storage {ns}:temp copy[0] run data modify storage {ns}:temp copy[0].player set value "$(player)"\n'
			f"execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/succes/{loop} with storage {ns}:temp copy[0]"
			for c in SUCCES_COLORS
		)
	def mode_section_blocks() -> str:
		""" Replay the collected entries through both display loops, done ones then missing ones. """
		ns: str = Mem.ctx.project_id
		return "\n".join(
			f"\ndata modify storage {ns}:temp copy set from storage {ns}:temp mode_copy\n"
			f'$execute if data storage {ns}:temp copy[0] run data modify storage {ns}:temp copy[0].player set value "$(player)"\n'
			f"execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/succes/{loop} with storage {ns}:temp copy[0]"
			for loop in ("display_loop", "display_loop_2")
		)
	write_function(f"{path}/trigger/succes/main", f"""
## For each of the advancements, print it in order : [done:{{green,yellow,red}},not done:{{green,yellow,red}}]
function {ns}:player/translations/trigger_succes_main with storage {ns}:main input

# Done advancements
{succes_blocks("display_loop")}

# Not done yet
tellraw @s ""
{succes_blocks("display_loop_2")}

# Last, so it stays in sight: what the running minigame has to offer
scoreboard players set #succes_mode {ns}.data 0
execute if score #engine_state {ns}.data matches 3 unless data storage {ns}:main {{current_game:""}} run scoreboard players set #succes_mode {ns}.data 1
execute if score #succes_mode {ns}.data matches 1 run function {ns}:player/trigger/succes/mode_section with storage {ns}:main input
""")

	# /trigger/succes/mode_collect (macro: resolve one id into the live entry, which carries the percentages)
	write_function(f"{path}/trigger/succes/mode_collect", f"""
$data modify storage {ns}:temp mode_copy append from storage {ns}:advancements all[{{id:$(id)}}]
data remove storage {ns}:temp ids[0]
execute if data storage {ns}:temp ids[0] run function {ns}:player/trigger/succes/mode_collect with storage {ns}:temp ids[0]
""")

	# /trigger/succes/mode_section (macro: the advancements the running minigame grants, done then not done)
	write_function(f"{path}/trigger/succes/mode_section", f"""
data modify storage {ns}:temp ids set value []
$data modify storage {ns}:temp ids set from storage {ns}:advancements by_mode.$(current_game)
execute unless data storage {ns}:temp ids[0] run return 0

data modify storage {ns}:temp mode_copy set value []
function {ns}:player/trigger/succes/mode_collect with storage {ns}:temp ids[0]

tellraw @s ""
function {ns}:player/translations/trigger_succes_mode
{mode_section_blocks()}
""")


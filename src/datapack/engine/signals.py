# Imports
from stewbeet import Mem, write_function


def write_signals() -> None:
	""" Write the signal functions that dispatch each engine event to the current mode. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine"

	# /signals/inventory_changed
	write_function(f"{path}/signals/inventory_changed", f"""
# Revoke inventory_changed advancement
advancement revoke @s only {ns}:inventory_changed

# Launch inventory_changed signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_inventory_changed with storage {ns}:main input
""")

	# /signals/joined
	write_function(f"{path}/signals/joined", f"""
# Launch joined signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_joined with storage {ns}:main input
""")

	# /signals/macro_inventory_changed
	write_function(f"{path}/signals/macro_inventory_changed", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/inventory_changed
""")

	# /signals/macro_joined
	write_function(f"{path}/signals/macro_joined", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/joined
""")

	# /signals/macro_second
	write_function(f"{path}/signals/macro_second", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/second
""")

	# /signals/macro_start
	write_function(f"{path}/signals/macro_start", f"""
# Grant the minigame starting pop-up to everyone
$advancement grant @a[scores={{{ns}.lang=0}}] only {ns}:pop_ups/$(id)_fr
$advancement grant @a[scores={{{ns}.lang=1}}] only {ns}:pop_ups/$(id)_en

# Call the start function
$execute in {ns}:game run function {ns}:modes/$(id)/calls/start
""")

	# /signals/macro_stop
	write_function(f"{path}/signals/macro_stop", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/stop
""")

	# /signals/macro_tick
	write_function(f"{path}/signals/macro_tick", f"""
$execute in {ns}:game run function {ns}:modes/$(id)/calls/tick
""")

	# /signals/second
	write_function(f"{path}/signals/second", f"""
# Hold the countdown while the intro cinematic still holds the players: the wall clock that drives
# this signal keeps counting under lag while the cinematic (delay 130t + travel 50t) only advances
# per tick, so without this gate a mode's negative "seconds" countdown could arm its end-detection
# while every player is still riding the cinematic in spectator (game ends on start). Gating on the
# live entities (capped to the intro window in GAME ticks) releases the very second players land,
# and never delays the maps that have no intro cinematic (kart_racer_relai, build_battle)
execute if score #game_ticks {ns}.data matches ..199 if score #entities cinemalya.data matches 1.. run return 1

# Launch second signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_second with storage {ns}:main input
""")

	# /signals/start
	write_function(f"{path}/signals/start", f"""
# Reset the game tick counter (drives the intro grace of the per-second signal, see signals/second)
scoreboard players set #game_ticks {ns}.data 0

# Log message
function {ns}:engine/log_message/game_started with storage {ns}:main

# Clear voting message
schedule clear {ns}:engine/voting_time/schedule_message

# Repair dependencies libraries
function #{ns}:dependencies

# Launch start signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_start with storage {ns}:main input

# Start map intro explicitly in the game dimension: start_state can be reached from a server context (force start, coup d'état),
# and the cinematic drops players in the execution dimension
execute in {ns}:game run function {ns}:maps/intro_spread

# Increment total games played
execute if score #test_mode {ns}.data matches 1.. run return 1
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:stats/increment_minigame_played with storage {ns}:main input
""")

	# /signals/stop
	write_function(f"{path}/signals/stop", f"""
# Log message
function {ns}:engine/log_message/game_stopped with storage {ns}:main

# Launch stop signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_stop with storage {ns}:main input
""")

	# /signals/tick
	write_function(f"{path}/signals/tick", f"""
# Count real game ticks since the game started (gates the per-second signal, see signals/second)
scoreboard players add #game_ticks {ns}.data 1

# Launch tick signal
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:engine/signals/macro_tick with storage {ns}:main input
""")


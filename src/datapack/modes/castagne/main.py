
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "castagne"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:utils/classic_death"})
	write_translations()

	# /calls/entity_hurt_player (non-standard call)
	write_function(f"{path}/calls/entity_hurt_player", f"""
advancement revoke @s only {ns}:castagne/entity_hurt_player
execute if data storage {ns}:main {{current_game:"{mode}"}} run function {path}/entity_hurt_player
""")


	# /entity_hurt_player
	write_function(f"{path}/entity_hurt_player", f"""
data modify storage {ns}:temp input set value {{my_id:0,attacker_id:0}}
execute on attacker store result storage {ns}:temp input.attacker_id int 1 run scoreboard players get @s {ns}.id
execute store result storage {ns}:temp input.my_id int 1 run scoreboard players get @s {ns}.id
function {path}/hurt_macro with storage {ns}:temp input
""")

	# /give_items
	write_function(f"{path}/give_items", f"""
function {ns}:modes/_common/pvp_arena/kit
item replace entity @s hotbar.5 with fishing_rod

scoreboard players add #initial_count {ns}.data 1
data modify storage {ns}:temp temp set value {{id:0,hurt:[]}}
execute store result storage {ns}:temp temp.id int 1 run scoreboard players get @s {ns}.id
data modify storage {ns}:temp castagne append from storage {ns}:temp temp
data remove storage {ns}:temp temp
""")

	# /hurt_macro
	write_function(f"{path}/hurt_macro", f"""
$execute unless data storage {ns}:temp castagne[{{id:$(attacker_id)}}].hurt[{{id:$(my_id)}}] run data modify storage {ns}:temp castagne[{{id:$(attacker_id)}}].hurt append value {{id:$(my_id)}}
$execute store result score #count {ns}.data run data get storage {ns}:temp castagne[{{id:$(attacker_id)}}].hurt
execute unless score #test_mode {ns}.data matches 1 if score #count {ns}.data >= #initial_count {ns}.data on attacker run advancement grant @s only {ns}:visible/29
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
function {ns}:modes/_common/process_end/winner_by_health {{death:"{ns}:utils/classic_death"}}

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #castagne_seconds {ns}.data 1
scoreboard players remove #remaining_time {ns}.data 1
function {path}/xp_bar

# Actionbar
function {ns}:modes/_common/compute_mins_secs
function {ns}:translations/common/actionbar_time_pvp19
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
function {ns}:modes/_common/pvp_arena/start_common
function {ns}:utils/choose_map_for {{id:"castagne", maps:["kart_racer_relai","nuketown_no_barrier","sky_island_tower","floating_island","paralya_lobby","jn_nature_box","adraik_big_ball"]}}

execute in {ns}:game run gamerule minecraft:natural_health_regeneration false

function {translations}/start

scoreboard players set #remaining_time {ns}.data 910
scoreboard players set #castagne_seconds {ns}.data -10
scoreboard players set #castagne_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard objectives setdisplay list {ns}.health

scoreboard objectives add {ns}.temp.kill playerKillCount
scoreboard objectives add {ns}.temp.cooldown_kill dummy

data modify storage {ns}:temp castagne set value []
scoreboard players set #initial_count {ns}.data -1
execute as @a[tag=!detached] run function {path}/give_items
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.kill
scoreboard objectives remove {ns}.temp.cooldown_kill
data remove storage {ns}:temp castagne
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #castagne_ticks {ns}.data 1

function {ns}:modes/_common/pvp_arena/combat_tick

## End game
scoreboard players set #remaining_players {ns}.data 0
execute store result score #remaining_players {ns}.data if entity @a[tag=!detached,gamemode=survival]
execute if score #castagne_seconds {ns}.data matches 1.. if score #remaining_players {ns}.data matches ..1 run function {path}/process_end
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900, "#castagne_seconds")

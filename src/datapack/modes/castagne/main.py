
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
	write_modes_calls(mode, targets={"joined": "switch:utils/classic_death"})
	write_translations()

	# /calls/entity_hurt_player (non-standard call)
	write_function(f"{path}/calls/entity_hurt_player", f"""
advancement revoke @s only switch:castagne/entity_hurt_player
execute if data storage switch:main {{current_game:"{mode}"}} run function {path}/entity_hurt_player
""")


	# /entity_hurt_player
	write_function(f"{path}/entity_hurt_player", f"""
data modify storage switch:temp input set value {{my_id:0,attacker_id:0}}
execute on attacker store result storage switch:temp input.attacker_id int 1 run scoreboard players get @s switch.id
execute store result storage switch:temp input.my_id int 1 run scoreboard players get @s switch.id
function {path}/hurt_macro with storage switch:temp input
""")

	# /give_items
	write_function(f"{path}/give_items", """
function switch:modes/_common/pvp_arena/kit
item replace entity @s hotbar.5 with fishing_rod

scoreboard players add #initial_count switch.data 1
data modify storage switch:temp temp set value {id:0,hurt:[]}
execute store result storage switch:temp temp.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp castagne append from storage switch:temp temp
data remove storage switch:temp temp
""")

	# /hurt_macro
	write_function(f"{path}/hurt_macro", """
$execute unless data storage switch:temp castagne[{id:$(attacker_id)}].hurt[{id:$(my_id)}] run data modify storage switch:temp castagne[{id:$(attacker_id)}].hurt append value {id:$(my_id)}
$execute store result score #count switch.data run data get storage switch:temp castagne[{id:$(attacker_id)}].hurt
execute unless score #test_mode switch.data matches 1 if score #count switch.data >= #initial_count switch.data on attacker run advancement grant @s only switch:visible/29
""")

	# /process_end
	write_function(f"{path}/process_end", """
function switch:modes/_common/process_end/winner_by_health {death:"switch:utils/classic_death"}

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #castagne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function {path}/xp_bar

# Actionbar
function switch:modes/_common/compute_mins_secs
function switch:translations/common/actionbar_time_pvp19
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
function switch:modes/_common/pvp_arena/start_common
function switch:utils/choose_map_for {{id:"castagne", maps:["kart_racer_relai","nuketown_no_barrier","sky_island_tower","floating_island","paralya_lobby","jn_nature_box","adraik_big_ball"]}}

execute in switch:game run gamerule minecraft:natural_health_regeneration false

function {translations}/start

scoreboard players set #remaining_time switch.data 910
scoreboard players set #castagne_seconds switch.data -10
scoreboard players set #castagne_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

scoreboard objectives add switch.temp.kill playerKillCount
scoreboard objectives add switch.temp.cooldown_kill dummy

data modify storage switch:temp castagne set value []
scoreboard players set #initial_count switch.data -1
execute as @a[tag=!detached] run function {path}/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.kill
scoreboard objectives remove switch.temp.cooldown_kill
data remove storage switch:temp castagne
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #castagne_ticks switch.data 1

function switch:modes/_common/pvp_arena/combat_tick

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #castagne_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900, "#castagne_seconds")

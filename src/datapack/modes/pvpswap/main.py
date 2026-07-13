
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit
from .._common.main import pvp_arena_kit
from ..common import write_modes_calls


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "pvpswap"
	path: str = f"{ns}:modes/{mode}"

	# Write standard /calls/ functions
	# Note: pvpswap has no translation files of its own; the
	# `switch:translations/modes_pvpswap_*` references below are dangling in the
	# original datapack and are preserved verbatim (no /translations/ relocation).
	write_modes_calls(mode, targets={"joined": f"{ns}:utils/classic_death"})

	# Non-standard call: entity_hurt_player
	write_function(f"{path}/calls/entity_hurt_player", f"""
advancement revoke @s only {ns}:pvpswap/entity_hurt_player
execute if data storage {ns}:main {{current_game:"pvpswap"}} run function {ns}:modes/pvpswap/entity_hurt_player
""")


	# /entity_hurt_player
	write_function(f"{path}/entity_hurt_player", f"""
data modify storage {ns}:temp input set value {{my_id:0,attacker_id:0}}
execute on attacker store result storage {ns}:temp input.attacker_id int 1 run scoreboard players get @s {ns}.id
execute store result storage {ns}:temp input.my_id int 1 run scoreboard players get @s {ns}.id
function {ns}:modes/pvpswap/hurt_macro with storage {ns}:temp input
""")

	# /give_items (the shared pvp arena loadout)
	Kit("pvpswap", items=pvp_arena_kit().items, post=f"""
scoreboard players add #initial_count {ns}.data 1
data modify storage {ns}:temp temp set value {{id:0,hurt:[]}}
execute store result storage {ns}:temp temp.id int 1 run scoreboard players get @s {ns}.id
data modify storage {ns}:temp pvpswap append from storage {ns}:temp temp
data remove storage {ns}:temp temp
""").write(f"{path}/give_items")

	# /hurt_macro (macro function with $ lines)
	write_function(f"{path}/hurt_macro", f"""
$execute unless data storage {ns}:temp pvpswap[{{id:$(attacker_id)}}].hurt[{{id:$(my_id)}}] run data modify storage {ns}:temp pvpswap[{{id:$(attacker_id)}}].hurt append value {{id:$(my_id)}}
$execute store result score #count {ns}.data run data get storage {ns}:temp pvpswap[{{id:$(attacker_id)}}].hurt
execute unless score #test_mode {ns}.data matches 1 if score #count {ns}.data >= #initial_count {ns}.data on attacker run advancement grant @s only {ns}:visible/29
""")

	# /process_end (dangling translation ref preserved verbatim)
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 store result score #health {ns}.data run data get entity @r[gamemode=survival] Health
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function {ns}:engine/add_win
function {ns}:translations/modes_pvpswap_process_end
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:utils/classic_death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second (dangling translation ref preserved verbatim)
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #pvpswap_seconds {ns}.data 1
scoreboard players remove #remaining_time {ns}.data 1

function {ns}:translations/modes_pvpswap_second
""")

	# /start (dangling translation ref preserved verbatim)
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
function {ns}:modes/_common/pvp_arena/start_common
function {ns}:utils/choose_map_for {{id:"pvpswap", maps:["kart_racer_relai","nuketown_no_barrier","sky_island_tower","floating_island","paralya_lobby","jn_nature_box"]}}

execute in {ns}:game run gamerule minecraft:natural_health_regeneration false

function {ns}:translations/modes_pvpswap_start

scoreboard players set #remaining_time {ns}.data 910
scoreboard players set #pvpswap_seconds {ns}.data -10
scoreboard players set #pvpswap_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard objectives setdisplay list {ns}.health

scoreboard objectives add {ns}.temp.kill playerKillCount
scoreboard objectives add {ns}.temp.cooldown_kill dummy

data modify storage {ns}:temp pvpswap set value []
scoreboard players set #initial_count {ns}.data -1
execute as @a[tag=!detached] run function {ns}:modes/pvpswap/give_items
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.kill
scoreboard objectives remove {ns}.temp.cooldown_kill
data remove storage {ns}:temp pvpswap
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #pvpswap_ticks {ns}.data 1

function {ns}:modes/_common/pvp_arena/combat_tick

## End game
scoreboard players set #remaining_players {ns}.data 0
execute store result score #remaining_players {ns}.data if entity @a[tag=!detached,gamemode=survival]
execute if score #remaining_players {ns}.data matches ..1 run function {ns}:modes/pvpswap/process_end
execute if score #remaining_time {ns}.data matches ..0 run function {ns}:modes/pvpswap/process_end
""")

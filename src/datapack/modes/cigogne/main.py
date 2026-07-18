
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit, KitItem
from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "cigogne"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:utils/classic_death"})
	write_translations()


	# /absorption
	write_function(f"{path}/absorption", """
effect clear @s absorption
effect give @s absorption 120 0 true
""")

	# /give_items
	Kit("cigogne", pre="attribute @s attack_speed base set 1024", items=(
		KitItem(role="heal", item="golden_apple", count=4, slot="hotbar.0"),
		KitItem(role="melee", item="iron_sword[enchantments={fire_aspect:1}]", slot="hotbar.2"),
		KitItem(role="ranged", item="bow[enchantments={flame:1}]", slot="hotbar.4"),
		KitItem(role="ammo", item="arrow", count=32, slot="hotbar.8"),
	)).write(f"{path}/give_items")

	# /killed_player
	write_function(f"{path}/killed_player", f"""
advancement revoke @s only {ns}:cigogne/killed_player
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"cigogne"}} run give @s golden_apple 3
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
function {ns}:modes/_common/process_end/winner_by_health {{death:"{ns}:utils/classic_death"}}

# Advancement
execute if score #process_end {ns}.data matches 1 run scoreboard players set #max {ns}.data 0
execute if score #process_end {ns}.data matches 1 run scoreboard players operation #max {ns}.data > @a[tag=!detached,scores={{{ns}.temp.kill=1..}}] {ns}.temp.kill
execute if score #process_end {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.temp.kill=1..}}] if score #max {ns}.data = @s {ns}.temp.kill run advancement grant @s only {ns}:visible/23

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #cigogne_seconds {ns}.data 1
scoreboard players remove #remaining_time {ns}.data 1
function {path}/xp_bar

# Kill reward
give @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.playerKill=1..}}] golden_apple 4
scoreboard players reset @a[scores={{{ns}.temp.playerKill=1..}}] {ns}.temp.playerKill

# Glowing
execute if score #cigogne_seconds {ns}.data matches 180.. run effect give @a[tag=!detached,gamemode=!spectator] glowing infinite 255 true
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] weakness 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] speed infinite 1 true
effect give @a[tag=!detached] jump_boost infinite 2 true
effect give @a[tag=!detached] invisibility infinite 255 true
function {ns}:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"cigogne", maps:["cigogne"]}}

execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true

function {translations}/start

scoreboard players set #remaining_time {ns}.data 910
scoreboard players set #cigogne_seconds {ns}.data -1
scoreboard players set #cigogne_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard objectives add {ns}.temp.kill playerKillCount
scoreboard objectives add {ns}.temp.playerKill playerKillCount
scoreboard objectives add {ns}.temp.sneak dummy
scoreboard objectives setdisplay list {ns}.health

execute as @a[tag=!detached] run function {path}/give_items
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.kill
scoreboard objectives remove {ns}.temp.playerKill
scoreboard objectives remove {ns}.temp.sneak
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #cigogne_ticks {ns}.data 1

## Death system
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

# Particules sur tous les spectres qui ne sneake pas pour tous les joueurs
execute at @a[tag=!detached,gamemode=!spectator,predicate=!{ns}:is_sneaking,predicate=!{ns}:in_air] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal

# On enlève les particules d'absorption
execute as @a[tag=!detached,nbt={{active_effects:[{{id:"minecraft:absorption"}}]}}] unless data entity @s active_effects[{{id:"minecraft:absorption"}}].show_particles run function {path}/absorption

# Glowing time
execute as @a[tag=!detached,gamemode=!spectator,predicate={ns}:is_sneaking] run scoreboard players add @s {ns}.temp.sneak 1
scoreboard players remove @a[tag=!detached,gamemode=!spectator,predicate=!{ns}:is_sneaking] {ns}.temp.sneak 2
effect give @a[tag=!detached,scores={{{ns}.temp.sneak=100..}}] glowing 1 0 true
scoreboard players set @a[tag=!detached,scores={{{ns}.temp.sneak=100..}}] {ns}.temp.sneak 100
scoreboard players set @a[tag=!detached,scores={{{ns}.temp.sneak=..0}}] {ns}.temp.sneak 0
function {translations}/tick


## End game
scoreboard players set #remaining_players {ns}.data 0
execute store result score #remaining_players {ns}.data if entity @a[tag=!detached,gamemode=survival]
execute if score #cigogne_seconds {ns}.data matches 1.. if score #remaining_players {ns}.data matches ..1 run function {path}/process_end
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900, "#cigogne_seconds")

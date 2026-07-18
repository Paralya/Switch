
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit, KitItem, Variants
from ..common import skinned_weapons, write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	# Namespace and base path of the mode
	ns: str = Mem.ctx.project_id  # equal to "switch"
	mode: str = "pitch_creep"
	path: str = f"{ns}:modes/{mode}"  # /start, /tick, etc.
	translations: str = f"{path}/translations"  # /start, /death, etc.

	# Write /calls/ functions (joined, second, start, stop, tick) and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
function {ns}:modes/_common/no_pvp_start

execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true
execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true

## Placement de la map et des joueurs + give d'items
scoreboard players set #dont_regenerate {ns}.data 1
function {ns}:utils/choose_map_for {{id:"{mode}", maps:["pitch_creep_1","octogone_nether_ice"]}}

function {translations}/start

scoreboard players set #remaining_time {ns}.data 95
scoreboard players set #pitch_creep_seconds {ns}.data -10
scoreboard players set #pitch_creep_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard objectives add {ns}.temp.shot minecraft.used:minecraft.bow
scoreboard players set @a[tag=!detached] {ns}.temp.shot 0

# Teleport on maps
scoreboard players set #count {ns}.data 0
execute if data storage {ns}:main {{map:"pitch_creep_1"}} as @a[tag=!detached,sort=random] run function {path}/maps/pitch_creep_1
execute if data storage {ns}:main {{map:"octogone_nether_ice"}} as @a[tag=!detached,sort=random] run function {path}/maps/octogone_nether_ice
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.shot
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #pitch_creep_ticks {ns}.data 1

kill @e[type=item,nbt={{Item:{{id:"minecraft:gunpowder"}}}}]
kill @e[type=experience_orb]

function {ns}:utils/on_death_run_function {{function:"{path}/death"}}
execute unless score #process_end {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run kill @a[tag=!detached,distance=50..,scores={{{ns}.alive=1..}}]

execute if score #pitch_creep_seconds {ns}.data matches 1.. unless entity @a[scores={{{ns}.alive=1..}}] run function {path}/process_end
execute if score #remaining_time {ns}.data matches 0 run function {path}/process_end
""")

	# /second
	creeper_nbt: str = f'{{Health:2048.0f,Tags:["{ns}.new"],attributes:[{{id:"max_health",base:2048.0}},{{id:"follow_range",base:128}}]}}'
	write_function(f"{path}/second", f"""
scoreboard players add #pitch_creep_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

execute if score #pitch_creep_seconds {ns}.data matches 0.. run function {path}/xp_bar
execute if score #pitch_creep_seconds {ns}.data matches 0 as @a[tag=!detached] at @s run function {path}/give_items

# Spawning creepers
execute if score #pitch_creep_seconds {ns}.data matches 0.. if data storage {ns}:main {{map:"pitch_creep_1"}} positioned 3520 126 3520 run summon creeper ~-0.2 ~ ~ {creeper_nbt}
execute if score #pitch_creep_seconds {ns}.data matches 0.. if data storage {ns}:main {{map:"pitch_creep_1"}} positioned 3520 126 3520 run summon creeper ~0.2 ~ ~ {creeper_nbt}
execute if score #pitch_creep_seconds {ns}.data matches 0.. if data storage {ns}:main {{map:"octogone_nether_ice"}} positioned 160040 135 160040 run summon creeper ~-0.2 ~ ~ {creeper_nbt}
execute if score #pitch_creep_seconds {ns}.data matches 0.. if data storage {ns}:main {{map:"octogone_nether_ice"}} positioned 160040 135 160040 run summon creeper ~0.2 ~ ~ {creeper_nbt}
execute if score #pitch_creep_seconds {ns}.data matches 0.. if data storage {ns}:main {{map:"octogone_nether_ice"}} positioned 160040 135 160040 run summon creeper ~ ~ ~-0.2 {creeper_nbt}
execute if score #pitch_creep_seconds {ns}.data matches 0.. if data storage {ns}:main {{map:"octogone_nether_ice"}} positioned 160040 135 160040 run summon creeper ~ ~ ~0.2 {creeper_nbt}
execute if score #pitch_creep_seconds {ns}.data matches 0.. run tag @e[type=creeper,tag={ns}.new] remove {ns}.new
execute if score #pitch_creep_seconds {ns}.data matches ..-1 at @n[type=marker,tag={ns}.selected_map] run function {ns}:utils/safe_kill_macro {{selector:"@e[type=creeper,distance=..100]"}}
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
scoreboard players set @s {ns}.alive 0
function {ns}:utils/classic_death
""")

	# /give_items (the same skinned sword and bow variants as pitchout)
	swords, bows = skinned_weapons()
	Kit("pitch_creep", layout=False, items=(
		KitItem(role="melee", slot="hotbar.0", variants=Variants(score=f"#random {ns}.data", roll=4, items=swords)),
		KitItem(role="ranged", slot="hotbar.1", variants=Variants(score=f"#random {ns}.data", roll=3, items=bows)),
		KitItem(role="ammo", item="arrow", count=64, slot="hotbar.2"),
	)).write(f"{path}/give_items")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 90, "#pitch_creep_seconds")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.alive=1..}}] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 run advancement grant @a[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.shot=0}}] only {ns}:visible/59
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached,sort=random]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,sort=random] run function {path}/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")


	# /maps/pitch_creep_1
	write_function(f"{path}/maps/pitch_creep_1", f"""
execute if score #count {ns}.data matches 0 in {ns}:game run tp @s 3520 121.69 3511 0 0
execute if score #count {ns}.data matches 1 in {ns}:game run tp @s 3520 121.69 3529 180 0
execute if score #count {ns}.data matches 2 in {ns}:game run tp @s 3529 121.69 3520 90 0
execute if score #count {ns}.data matches 3 in {ns}:game run tp @s 3511 121.69 3520 -90 0

scoreboard players add #count {ns}.data 1
scoreboard players operation #count {ns}.data %= #4 {ns}.data
""")

	# /maps/octogone_nether_ice
	write_function(f"{path}/maps/octogone_nether_ice", f"""
execute if score #count {ns}.data matches 0 in {ns}:game run tp @s 160026 134 160040 -90 0
execute if score #count {ns}.data matches 1 in {ns}:game run tp @s 160054 134 160040 90 0
execute if score #count {ns}.data matches 2 in {ns}:game run tp @s 160031 134 160031 -45 0
execute if score #count {ns}.data matches 3 in {ns}:game run tp @s 160049 134 160049 135 0
execute if score #count {ns}.data matches 4 in {ns}:game run tp @s 160040 134 160026 0 0
execute if score #count {ns}.data matches 5 in {ns}:game run tp @s 160040 134 160054 180 0
execute if score #count {ns}.data matches 6 in {ns}:game run tp @s 160049 134 160031 45 0
execute if score #count {ns}.data matches 7 in {ns}:game run tp @s 160031 134 160049 225 0

scoreboard players add #count {ns}.data 1
scoreboard players operation #count {ns}.data %= #8 {ns}.data
""")


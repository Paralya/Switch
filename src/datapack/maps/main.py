
# Imports
from stewbeet import Mem, write_function

from .geometry import RACE_CHECKPOINTS, TP_CYCLES
from .map_specifics import write_map_specifics
from .translations import write_translations


# Race checkpoint layouts: name -> (laps, checkpoints, [(x,y,z,cp,dx,dy,dz)...], [(x,y,z,effect_tag)...])
def write_if_race(name: str, laps: int, checkpoints: int, cps: list[tuple[str, ...]], fx: list[tuple[str, ...]]) -> None:
	""" Summon a race map's checkpoint + effect-block markers and forceload their chunks. """
	ns: str = Mem.ctx.project_id
	lines: list[str] = [f"scoreboard players set #total_laps {ns}.data {laps}", f"scoreboard players set #total_checkpoints {ns}.data {checkpoints}", ""]
	for x, y, z, cp, dx, dy, dz in cps:
		lines.append(f'summon marker {x} {y} {z} {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:{cp}, dx:{dx}, dy:{dy}, dz:{dz}}}}}')
	lines.append("")
	lines += [f"forceload add {c[0]} {c[2]}" for c in cps]
	if fx:
		lines.append("")
		lines += [f'summon marker {x} {y} {z} {{Tags:["{ns}.effect_block","{ns}.{tag}"]}}' for x, y, z, tag in fx]
		if len(fx) > 1:
			lines.append("")
		lines += [f"forceload add {c[0]} {c[2]}" for c in fx]
	write_function(f"{ns}:maps/survival/{name}/if_race", "\n".join(lines) + "\n")


def write_tp_cycle(key: str, var: str, coords: list[str]) -> None:
	""" Round-robin spawn cycle: bump a score and teleport @s to the matching coordinate. """
	ns: str = Mem.ctx.project_id
	lines: list[str] = [f"scoreboard players add #{var} {ns}.data 1", ""]
	lines += [f"execute if score #{var} {ns}.data matches {i} run tp @s {c}" for i, c in enumerate(coords, 1)]
	lines.append("")
	lines.append(f"execute if score #{var} {ns}.data matches {len(coords)}.. run scoreboard players set #{var} {ns}.data 0")
	write_function(f"{ns}:maps/survival/{key}", "\n".join(lines) + "\n")


def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps"
	write_translations()

	# Data-driven race checkpoints + arena spawn cycles
	for name, (laps, checkpoints, cps, fx) in RACE_CHECKPOINTS.items():
		write_if_race(name, laps, checkpoints, cps, fx)
	for key, (var, coords) in TP_CYCLES.items():
		write_tp_cycle(key, var, coords)

	# /load
	write_function(f"{path}/load", f"""
## Choix d'une map random de la liste maps_to_choose
## Avec 5 essaies de choisir une map différente de la précédente
data modify storage {ns}:main previous_map set from storage {ns}:main map
scoreboard players set #try {ns}.data 5
scoreboard players set #modulo_rand {ns}.data 0
execute store result score #modulo_rand {ns}.data run data get storage {ns}:temp maps_to_choose
function {ns}:maps/find_map

# Copy map (safety: if find_map could not produce a candidate, fall back to the raw list
# instead of silently keeping the previous game's map)
execute unless data storage {ns}:main copy[0] run data modify storage {ns}:main copy set from storage {ns}:temp maps_to_choose
data modify storage {ns}:main map set from storage {ns}:main copy[0]
data modify storage {ns}:main previous_map set from storage {ns}:main map

# Load map
function {ns}:maps/load_gamemode

# Log message of which map is loaded
function {ns}:engine/log_message/map_selected with storage {ns}:main

# Add map to history
data modify storage {ns}:main history.maps prepend from storage {ns}:main map

# As a new map is loaded, it has not been already regenerated
scoreboard players reset #already_regenerated {ns}.data
""")

	# /find_map
	write_function(f"{path}/find_map", f"""
scoreboard players remove #try {ns}.data 1

function {ns}:utils/get_random/main

data modify storage {ns}:main copy set from storage {ns}:temp maps_to_choose
execute unless score #random {ns}.data matches 0 run function {ns}:maps/choose_loop

scoreboard players set #success {ns}.data 0
data modify storage {ns}:main temp set from storage {ns}:main copy[0]
execute store success score #success {ns}.data run data modify storage {ns}:main temp set from storage {ns}:main previous_map

execute if score #try {ns}.data matches 1.. if score #success {ns}.data matches 0 run function {ns}:maps/find_map
""")

	# /load_gamemode
	write_function(f"{path}/load_gamemode", f"""
# Kill map marker
kill @e[type=marker,tag={ns}.selected_map]

# Load the selected map (gamemode survival, may be adventure)
function {ns}:maps/load_survival
""")

	# /choose_loop
	write_function(f"{path}/choose_loop", f"""
data remove storage {ns}:main copy[0]
scoreboard players remove #random {ns}.data 1
execute unless score #random {ns}.data matches 0 run function {ns}:maps/choose_loop
""")

	# /regenerate_doors_loop
	write_function(f"{path}/regenerate_doors_loop", f"""
# Setblock door
$setblock $(x) $(y) $(z) $(door)

# While there are doors,
data remove storage {ns}:temp doors[0]
execute if data storage {ns}:temp doors[0] run function {ns}:maps/regenerate_doors_loop with storage {ns}:temp doors[0]
""")

	# /regenerate_doors_macro
	write_function(f"{path}/regenerate_doors_macro", f"""
# Get doors
$data modify storage {ns}:temp doors set from storage {ns}:doors $(name)

# While there are doors,
execute if data storage {ns}:temp doors[0] run function {ns}:maps/regenerate_doors_loop with storage {ns}:temp doors[0]
""")

	# /storage_map_list/remove_from_storage
	write_function(f"{path}/storage_map_list/remove_from_storage", f"""
data modify storage {ns}:main new set value []
execute if data storage {ns}:main copy[0] run function {ns}:maps/storage_map_list/remove_from_storage_loop
function {ns}:maps/translations/storage_map_list_remove_from_storage
""")

	# /storage_map_list/remove_from_storage_loop
	write_function(f"{path}/storage_map_list/remove_from_storage_loop", f"""
data modify storage {ns}:main temp set from storage {ns}:main copy[0]
scoreboard players set #success {ns}.data 1
execute store success score #success {ns}.data run data modify storage {ns}:main temp set from storage {ns}:main map
execute if score #success {ns}.data matches 1 run data modify storage {ns}:main new append from storage {ns}:main copy[0]

data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:maps/storage_map_list/remove_from_storage_loop
""")

	write_map_specifics()

	# /choose_map_for
	write_function(f"{ns}:maps/choose_map_for", f"""
## Vérification de la liste des maps
# Si la liste des maps à charger est vide, absente ou corrompue, la ré-initialiser
# (le "[0]" garantit une liste avec au moins un élément, sinon maps/load garderait la map du jeu précédent)
$execute unless data storage {ns}:maps choose_from.$(id)[0] run data modify storage {ns}:maps choose_from.$(id) set value $(maps)

## Chargement de la map
# Passage en paramètre de la liste des maps à charger
$data modify storage {ns}:temp maps_to_choose set from storage {ns}:maps choose_from.$(id)

# Fonction de chargement de la map
function {ns}:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
$data modify storage {ns}:main copy set from storage {ns}:maps choose_from.$(id)

# Suppression de la map chargée de la liste des maps à charger
function {ns}:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
$data modify storage {ns}:maps choose_from.$(id) set from storage {ns}:main new
""")


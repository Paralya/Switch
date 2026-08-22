
# Imports
from stewbeet import Mem, write_function

from .geometry import RACE_CHECKPOINTS, TP_CYCLES
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
data modify storage {ns}:main MessageToLog set value [{{"text":"Selected map: `"}},{{"nbt":"map","storage":"{ns}:main","interpret":true}},{{"text":"`!"}}]
function {ns}:engine/log_message/apply

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

# Maps that regenerate (gamemode survival, may be adventure):
function {ns}:maps/load_survival

# Maps that doesn't (always gamemode adventure):
function {ns}:maps/load_adventure
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

	# /survival/boat_race_2/if_race (irregular layout -> verbatim)
	write_function(f"{path}/survival/boat_race_2/if_race", f"""
scoreboard players set #total_laps {ns}.data 1
scoreboard players set #total_checkpoints {ns}.data 2

# Starting line
summon marker 51072 159 51093 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:14, dy:4, dz:4}}}}

# Checkpoints
summon marker 51066 135 51061 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:1, dx:5, dy:4, dz:2}}}}
summon marker 51046 121 51053 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:2, dx:5, dy:4, dz:2}}}}

# Finish line
summon marker 51037 113 51020 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:4, dy:4, dz:4}}}}

forceload add 51072 51093
forceload add 51066 51061
forceload add 51046 51053
forceload add 51037 51020
""")

	# /survival/trackmania_stadium_1/if_race (irregular layout -> verbatim)
	write_function(f"{path}/survival/trackmania_stadium_1/if_race", f"""
scoreboard players set #total_laps {ns}.data 2
scoreboard players set #total_checkpoints {ns}.data 6

summon marker 25106 101 24998 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:6, dy:5, dz:2}}}}
summon marker 25025 106 24942 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:1, dx:2, dy:5, dz:6}}}}
summon marker 24970 102 24968 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:2, dx:6, dy:5, dz:2}}}}
summon marker 24998 112 25044 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:3, dx:6, dy:5, dz:2}}}}
summon marker 25026 126 24980 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:4, dx:2, dy:5, dz:6}}}}
summon marker 25057 115 24929 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:5, dx:6, dy:5, dz:2}}}}
summon marker 25045 115 25008 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:6, dx:6, dy:5, dz:2}}}}

forceload add 25106 24998
forceload add 25025 24942
forceload add 24970 24968
forceload add 24998 25044
forceload add 25026 24980
forceload add 25057 24929
forceload add 25052 25038

summon marker 25102 101 25031 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reset"]}}
summon marker 24972 102 25043 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.cruise_control"]}}
summon marker 24968 102 25042 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.cruise_control"]}}
summon marker 25066 115 25027 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 25071 115 25027 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 25071 115 25031 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 25066 115 25031 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 25047 115 25011 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.no_grip"]}}
summon marker 25043 115 25011 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.no_grip"]}}

forceload add 25102 25031
forceload add 24972 25043
forceload add 24968 25042
forceload add 25066 25027
forceload add 25071 25027
forceload add 25071 25031
forceload add 25066 25031
forceload add 25047 25011
forceload add 25043 25011
""")

	# /survival/trackmania_stadium_2/if_race (irregular layout -> verbatim)
	write_function(f"{path}/survival/trackmania_stadium_2/if_race", f"""
scoreboard players set #total_laps {ns}.data 1
scoreboard players set #total_checkpoints {ns}.data 12
scoreboard players set #remaining_time {ns}.data 600

summon marker 37106 101 36998 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:6, dy:5, dz:2}}}}
summon marker 37106 114 36932 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:1, dx:6, dy:5, dz:2}}}}
summon marker 37076 114 36945 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:2, dx:2, dy:5, dz:3}}}}
summon marker 37059 114 36970 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:3, dx:6, dy:5, dz:2}}}}
summon marker 37059 114 37024 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:4, dx:2, dy:5, dz:6}}}}
summon marker 37022 137 37030 {{Tags:["{ns}.checkpoint"]						,data:{{cp:5, dx:2, dy:5, dz:5}}}}
summon marker 36960 122 37030 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:6, dx:1, dy:5, dz:3}}}}
summon marker 36960 139 37046 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:7, dx:3, dy:5, dz:2}}}}
summon marker 36998 139 37053 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:8, dx:2, dy:5, dz:3}}}}
summon marker 36896 151 37015 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:9, dx:2, dy:5, dz:2}}}}
summon marker 36902 151 36983 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:10, dx:3, dy:5, dz:2}}}}
summon marker 37052 129 36963 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:11, dx:2, dy:5, dz:3}}}}
summon marker 37077 100 37056 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:12, dx:2, dy:5, dz:3}}}}
summon marker 37034 111 36956 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:3, dy:5, dz:1}}}}

forceload add 37106 36998
forceload add 37106 36932
forceload add 37076 36945
forceload add 37059 36970
forceload add 37059 37024
forceload add 37022 37030
forceload add 36960 37030
forceload add 36960 37046
forceload add 36998 37053
forceload add 36896 37015
forceload add 36902 36983
forceload add 37052 36963
forceload add 37077 37056
forceload add 37034 36956

summon marker 37104 101 36995 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 37108 101 36995 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 37104 114 36932 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reset"]}}
summon marker 37108 114 36932 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reset"]}}
summon marker 37059 114 36939 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.cruise_control"]}}
summon marker 37059 114 36942 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.no_steering"]}}
summon marker 37061 114 36974 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.engine_off"]}}
summon marker 37057 114 36974 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.engine_off"]}}
summon marker 37085 127 37024 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 37001 131 37030 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reset"]}}
summon marker 36957 122 37030 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.cruise_control"]}}
summon marker 36998 139 37053 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 36907 151 36963 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.engine_off"]}}
summon marker 37086 101 36963 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 37074 101 37056 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.no_grip"]}}
summon marker 37034 101 37057 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}

forceload add 37104 36995
forceload add 37108 36995
forceload add 37104 36932
forceload add 37108 36932
forceload add 37059 36939
forceload add 37059 36942
forceload add 37061 36974
forceload add 37057 36974
forceload add 37085 37030
forceload add 37001 37030
forceload add 36957 37030
forceload add 36998 37053
forceload add 36907 36963
forceload add 37086 36963
forceload add 37074 37056
forceload add 37034 37057
""")

	# /survival/shoot_da_sheep/tp_shoot_da_sheep (verbatim)
	write_function(f"{path}/survival/shoot_da_sheep/tp_shoot_da_sheep", f"""
execute if score #count {ns}.data matches 0 in {ns}:game run tp @s 123037 114 123020 90 0
execute if score #count {ns}.data matches 1 in {ns}:game run tp @s 123003 114 123020 -90 0
execute if score #count {ns}.data matches 2 in {ns}:game run tp @s 123020 114 123037 180 0
execute if score #count {ns}.data matches 3 in {ns}:game run tp @s 123020 114 123003 0 0

scoreboard players add #count {ns}.data 1
scoreboard players operation #count {ns}.data %= #4 {ns}.data
""")

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


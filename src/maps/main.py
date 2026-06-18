
# Imports
import stouputils as stp
from stewbeet import write_function

from .translations import write_translations


# Race checkpoint layouts: name -> (laps, checkpoints, [(x,y,z,cp,dx,dy,dz)...], [(x,y,z,effect_tag)...])
_RACE_CHECKPOINTS: dict[str, tuple] = {
	'airship_fortress': (3, 3, [('20725', '121', '20319', '0', '1', '5', '5'), ('20631', '122', '20336', '1', '5', '5', '1'), ('20639', '108', '20375', '2', '2', '5', '1'), ('20750', '131', '20382', '3', '4', '5', '1')], [('20639', '108', '20336', 'switch.tm_blocks.engine_off')]),
	'baby_park': (7, 3, [('21000', '131', '21011', '0', '2', '5', '8'), ('20958', '131', '21000', '1', '8', '5', '2'), ('21001', '131', '20989', '2', '2', '5', '8'), ('21043', '131', '21000', '3', '8', '5', '2')], []),
	'boat_race_1': (1, 8, [('5201', '160', '5139', '0', '3', '5', '8'), ('5095', '151', '5100', '1', '3', '5', '8'), ('5122', '118', '5167', '2', '3', '5', '8'), ('5214', '112', '5078', '3', '3', '5', '8'), ('5115', '139', '5074', '4', '3', '5', '8'), ('5111', '127', '5107', '5', '3', '5', '8'), ('5195', '127', '5089', '6', '3', '5', '8'), ('5246', '126', '5162', '7', '3', '5', '8'), ('5231', '155', '5156', '8', '3', '5', '8')], []),
	'bowser_castle': (3, 4, [('22068', '130', '22165', '0', '5', '5', '2'), ('22110', '130', '22098', '1', '6', '5', '2'), ('22133', '135', '22116', '2', '2', '5', '2'), ('22137', '130', '22168', '3', '2', '5', '2'), ('22140', '136', '22193', '4', '2', '5', '2')], []),
	'city_race': (3, 3, [('19938', '100', '19658', '0', '1', '5', '7'), ('19937', '113', '19669', '0', '1', '5', '4'), ('19997', '113', '19625', '1', '8', '5', '1'), ('19915', '113', '19596', '2', '8', '5', '1'), ('19986', '113', '19526', '2', '1', '5', '8'), ('19885', '113', '19559', '3', '8', '5', '1')], []),
	'clock_circuit': (3, 3, [('19562', '143', '20390', '0', '1', '5', '6'), ('19544', '133', '20350', '1', '5', '5', '1'), ('19520', '132', '20324', '2', '1', '5', '6'), ('19580', '127', '20318', '3', '1', '5', '6')], []),
	'dishorreur': (3, 2, [('32992', '101', '33000', '0', '1', '5', '4'), ('32972', '101', '33031', '1', '1', '5', '6'), ('33027', '101', '33019', '2', '3', '5', '1')], []),
	'dk_mountain': (3, 2, [('19947', '107', '20556', '0', '1', '5', '7'), ('19716', '156', '20536', '1', '7', '5', '1'), ('19815', '124', '20526', '2', '1', '5', '7')], [('19881', '111', '20554', 'switch.tm_blocks.reactor_boost'), ('19880', '111', '20558', 'switch.tm_blocks.reactor_boost')]),
	'epsilon_lthc_circuit': (3, 4, [('18010', '101', '18000', '0', '1', '5', '5'), ('18011', '101', '18087', '1', '1', '5', '4'), ('17912', '101', '17999', '2', '4', '5', '1'), ('18036', '92', '17985', '3', '4', '5', '1'), ('17975', '108', '18042', '4', '4', '5', '1')], []),
	'fast_circuit': (5, 1, [('20212', '91', '19584', '0', '6', '5', '1'), ('20175', '91', '19584', '1', '6', '5', '1')], []),
	'hills_land': (3, 3, [('20443', '100', '20073', '0', '1', '5', '8'), ('20421', '100', '20130', '1', '1', '5', '4'), ('20480', '100', '20134', '2', '1', '5', '4'), ('20504', '116', '20098', '3', '4', '5', '1')], []),
	'mario_circuit': (3, 2, [('20406', '100', '19587', '0', '8', '5', '2'), ('20476', '100', '19538', '1', '2', '5', '5'), ('20481', '100', '19606', '2', '2', '5', '3')], []),
	'plains_routine': (3, 3, [('20221', '103', '19798', '0', '1', '5', '8'), ('20173', '106', '19899', '1', '1', '5', '5'), ('20142', '104', '19794', '2', '5', '5', '1'), ('20161', '100', '19786', '2', '1', '3', '1'), ('20293', '107', '19797', '3', '5', '5', '1')], [('20152', '100', '19807', 'switch.tm_blocks.reactor_boost')]),
	'rainbow_road': (3, 5, [('23982', '104', '23955', '0', '1', '3', '2'), ('24057', '79', '23960', '1', '2', '3', '1'), ('24029', '86', '23977', '2', '5', '5', '1'), ('24051', '87', '23999', '3', '1', '3', '2'), ('23987', '98', '24028', '4', '2', '3', '1'), ('24035', '82', '24015', '5', '1', '3', '2')], []),
	'sakura_land': (3, 3, [('19920', '114', '20042', '0', '1', '5', '8'), ('19989', '108', '20137', '1', '1', '5', '8'), ('19915', '108', '20157', '2', '1', '5', '8'), ('19885', '114', '20085', '3', '8', '5', '1')], [('19943', '108', '20152', 'switch.tm_blocks.cruise_control'), ('19941', '108', '20151', 'switch.tm_blocks.cruise_control'), ('19880', '114', '20124', 'switch.tm_blocks.no_steering'), ('19884', '114', '20124', 'switch.tm_blocks.no_steering'), ('19888', '114', '20124', 'switch.tm_blocks.no_steering')]),
	'snow_travel': (3, 3, [('23065', '136', '23044', '0', '1', '5', '7'), ('23152', '136', '23068', '1', '3', '5', '1'), ('23125', '138', '23080', '1', '1', '5', '3'), ('23106', '133', '23130', '2', '4', '5', '4'), ('23040', '134', '23112', '3', '3', '5', '1')], [('23067', '136', '23042', 'switch.tm_blocks.reactor_boost'), ('23067', '136', '23046', 'switch.tm_blocks.reactor_boost'), ('23143', '133', '23103', 'switch.tm_blocks.reactor_boost'), ('23107', '132', '23058', 'switch.tm_blocks.reactor_boost')]),
}

# Arena spawn cycles: "map/file" -> (score_var, ["x y z yaw pitch"...])
_TP_CYCLES: dict[str, tuple] = {
	'sheepwars_bonbons/tp_blue_player': ('s_bonbons_blue', ['143037 130 143089 -90 0', '143022 139 143088 -90 0', '143032 131 143066 -90 0', '143021 142 143070 -90 0', '143022 142 143063 -90 0', '143026 141 143048 -90 0', '143034 136 143038 -90 0', '143027 139 143040 -90 0', '143026 141 143024 -90 0', '143028 149 143022 -90 0', '143037 135 143018 -90 0']),
	'sheepwars_bonbons/tp_red_player': ('s_bonbons_red', ['143054 131 143023 90 0', '143067 139 143024 90 0', '143057 131 143046 90 0', '143068 142 143041 90 0', '143067 142 143050 90 0', '143063 141 143064 90 0', '143054 136 143075 90 0', '143063 139 143077 90 0', '143063 142 143089 90 0', '143062 154 143091 90 0', '143052 135 143094 90 0']),
	'sheepwars_colored_sheeps/tp_blue_player': ('s_colored_sheeps_blue', ['154072 148 154042 90 0', '154066 148 154061 90 0', '154075 144 154078 90 0', '154072 140 154049 90 0', '154072 140 154057 90 0', '154069 128 154046 90 0', '154069 128 154061 90 0', '154072 147 154051 90 0']),
	'sheepwars_colored_sheeps/tp_red_player': ('s_colored_sheeps_red', ['154035 148 154064 -90 0', '154041 148 154045 -90 0', '154032 144 154028 -90 0', '154035 140 154057 -90 0', '154035 140 154049 -90 0', '154038 128 154060 -90 0', '154038 128 154045 -90 0', '154035 147 154055 -90 0']),
	'sheepwars_dirigeables/tp_blue_player': ('s_dirig_blue', ['100041 149 100067 180 0', '100053 156 100067 180 0', '100065 149 100067 180 0', '100091 160 100053 90 0', '100053 144 100065 180 0', '100041 156 100067 180 0', '100065 156 100067 180 0', '100053 149 100067 180 0', '100091 160 100060 180 0', '100038 143 100065 180 0', '100065 143 100065 180 0', '100030 149 100067 180 0', '100091 160 100048 180 0']),
	'sheepwars_dirigeables/tp_red_player': ('s_dirig_red', ['100065 149 100036 0 0', '100053 156 100036 0 0', '100041 149 100036 0 0', '100015 160 100050 -90 0', '100053 144 100038 0 0', '100065 156 100036 0 0', '100041 156 100036 0 0', '100053 149 100036 0 0', '100015 160 100043 0 0', '100068 143 100038 0 0', '100041 143 100038 0 0', '100076 149 100036 0 0', '100015 160 100055 0 0']),
	'sheepwars_ilots/tp_blue_player': ('s_ilots_blue', ['145062 142 145027 90 0', '145062 134 145036 90 0', '145061 138 145044 90 0', '145059 138 145053 90 0', '145063 138 145065 90 0', '145060 133 145053 90 0', '145063 139 145085 90 0', '145061 150 145092 90 0', '145058 133 145091 90 0']),
	'sheepwars_ilots/tp_red_player': ('s_ilots_red', ['145029 142 145092 -90 0', '145029 134 145083 -90 0', '145030 138 145075 -90 0', '145032 138 145065 -90 0', '145031 133 145066 -90 0', '145028 138 145053 -90 0', '145028 139 145034 -90 0', '145030 150 145027 -90 0', '145033 133 145028 -90 0']),
	'sheepwars_plateforme/tp_blue_player': ('s_plateforme_blue', ['144056 122 144025 90 0', '144068 131 144025 90 0', '144058 127 144036 90 0', '144068 142 144041 90 0', '144061 127 144050 90 0', '144064 128 144056 90 0', '144070 133 144050 90 0', '144068 138 144056 90 0']),
	'sheepwars_plateforme/tp_red_player': ('s_plateforme_red', ['144029 122 144055 -90 0', '144017 131 144055 -90 0', '144032 127 144057 -90 0', '144027 127 144043 -90 0', '144017 142 144039 -90 0', '144021 128 144024 -90 0', '144015 133 144030 -90 0', '144017 138 144024 -90 0']),
	'survival_boat/tp_blue_player': ('s_survival_boat_blue', ['79067 125 79066 180 0', '79051 127 79068 180 0', '79082 127 79067 180 0', '79059 126 79064 180 0', '79071 126 79064 180 0', '79067 126 79070 180 0', '79076 126 79063 180 0', '79053 128 79063 180 0']),
	'survival_boat/tp_red_player': ('s_survival_boat_red', ['79059 125 79036 0 0', '79075 127 79034 0 0', '79044 127 79035 0 0', '79067 126 79038 0 0', '79055 126 79038 0 0', '79059 127 79032 0 0', '79050 126 79039 0 0', '79073 128 79039 0 0']),
}


def _write_if_race(name: str, laps: int, checkpoints: int, cps: list, fx: list) -> None:
	""" Summon a race map's checkpoint + effect-block markers and forceload their chunks. """
	lines: list[str] = [f"scoreboard players set #total_laps switch.data {laps}", f"scoreboard players set #total_checkpoints switch.data {checkpoints}", ""]
	for x, y, z, cp, dx, dy, dz in cps:
		lines.append(f'summon marker {x} {y} {z} {{Tags:["switch.checkpoint","switch.can_hard_reset"],data:{{cp:{cp}, dx:{dx}, dy:{dy}, dz:{dz}}}}}')
	lines.append("")
	lines += [f"forceload add {x} {z}" for x, y, z, *_ in cps]
	if fx:
		lines.append("")
		lines += [f'summon marker {x} {y} {z} {{Tags:["switch.effect_block","{tag}"]}}' for x, y, z, tag in fx]
		if len(fx) > 1:
			lines.append("")
		lines += [f"forceload add {x} {z}" for x, y, z, _tag in fx]
	write_function(f"switch:maps/survival/{name}/if_race", "\n".join(lines) + "\n")


def _write_tp_cycle(key: str, var: str, coords: list) -> None:
	""" Round-robin spawn cycle: bump a score and teleport @s to the matching coordinate. """
	lines: list[str] = [f"scoreboard players add #{var} switch.data 1", ""]
	lines += [f"execute if score #{var} switch.data matches {i} run tp @s {c}" for i, c in enumerate(coords, 1)]
	lines.append("")
	lines.append(f"execute if score #{var} switch.data matches {len(coords)}.. run scoreboard players set #{var} switch.data 0")
	write_function(f"switch:maps/survival/{key}", "\n".join(lines) + "\n")


@stp.measure_time(message="Generated maps files")
def main() -> None:
	path: str = "switch:maps"
	write_translations()

	# Data-driven race checkpoints + arena spawn cycles
	for name, (laps, checkpoints, cps, fx) in _RACE_CHECKPOINTS.items():
		_write_if_race(name, laps, checkpoints, cps, fx)
	for key, (var, coords) in _TP_CYCLES.items():
		_write_tp_cycle(key, var, coords)

	# /load
	write_function(f"{path}/load", """
## Choix d'une map random de la liste maps_to_choose
## Avec 5 essaies de choisir une map différente de la précédente
data modify storage switch:main previous_map set from storage switch:main map
scoreboard players set #try switch.data 5
scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:temp maps_to_choose
function switch:maps/find_map

# Copy map
data modify storage switch:main map set from storage switch:main copy[0]
data modify storage switch:main previous_map set from storage switch:main map

# Load map
function switch:maps/load_gamemode

# Log message of which map is loaded
data modify storage switch:main MessageToLog set value [{"text":"Selected map: `"},{"nbt":"map","storage":"switch:main","interpret":true},{"text":"`!"}]
function switch:engine/log_message/apply

# Add map to history
data modify storage switch:main history.maps prepend from storage switch:main map

# As a new map is loaded, it has not been already regenerated
scoreboard players reset #already_regenerated switch.data
""")

	# /find_map
	write_function(f"{path}/find_map", """
scoreboard players remove #try switch.data 1

function switch:utils/get_random/main

data modify storage switch:main copy set from storage switch:temp maps_to_choose
execute unless score #random switch.data matches 0 run function switch:maps/choose_loop

scoreboard players set #success switch.data 0
data modify storage switch:main temp set from storage switch:main copy[0]
execute store success score #success switch.data run data modify storage switch:main temp set from storage switch:main previous_map

execute if score #try switch.data matches 1.. if score #success switch.data matches 0 run function switch:maps/find_map
""")

	# /load_gamemode
	write_function(f"{path}/load_gamemode", """
# Kill map marker
kill @e[type=marker,tag=switch.selected_map]

# Maps that regenerate (gamemode survival, may be adventure):
function switch:maps/load_survival

# Maps that doesn't (always gamemode adventure):
function switch:maps/load_adventure
""")

	# /choose_loop
	write_function(f"{path}/choose_loop", """
data remove storage switch:main copy[0]
scoreboard players remove #random switch.data 1
execute unless score #random switch.data matches 0 run function switch:maps/choose_loop
""")

	# /regenerate_doors_loop
	write_function(f"{path}/regenerate_doors_loop", """
# Setblock door
$setblock $(x) $(y) $(z) $(door)

# While there are doors,
data remove storage switch:temp doors[0]
execute if data storage switch:temp doors[0] run function switch:maps/regenerate_doors_loop with storage switch:temp doors[0]
""")

	# /regenerate_doors_macro
	write_function(f"{path}/regenerate_doors_macro", """
# Get doors
$data modify storage switch:temp doors set from storage switch:doors $(name)

# While there are doors,
execute if data storage switch:temp doors[0] run function switch:maps/regenerate_doors_loop with storage switch:temp doors[0]
""")

	# /storage_map_list/remove_from_storage
	write_function(f"{path}/storage_map_list/remove_from_storage", """
data modify storage switch:main new set value []
execute if data storage switch:main copy[0] run function switch:maps/storage_map_list/remove_from_storage_loop
function switch:maps/translations/storage_map_list_remove_from_storage
""")

	# /storage_map_list/remove_from_storage_loop
	write_function(f"{path}/storage_map_list/remove_from_storage_loop", """
data modify storage switch:main temp set from storage switch:main copy[0]
scoreboard players set #success switch.data 1
execute store success score #success switch.data run data modify storage switch:main temp set from storage switch:main map
execute if score #success switch.data matches 1 run data modify storage switch:main new append from storage switch:main copy[0]

data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:maps/storage_map_list/remove_from_storage_loop
""")

	# /survival/boat_race_2/if_race (irregular layout -> verbatim)
	write_function(f"{path}/survival/boat_race_2/if_race", """
scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 2

# Starting line
summon marker 51072 159 51093 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:14, dy:4, dz:4}}

# Checkpoints
summon marker 51066 135 51061 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:5, dy:4, dz:2}}
summon marker 51046 121 51053 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:5, dy:4, dz:2}}

# Finish line
summon marker 51037 113 51020 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:4, dy:4, dz:4}}

forceload add 51072 51093
forceload add 51066 51061
forceload add 51046 51053
forceload add 51037 51020
""")

	# /survival/trackmania_stadium_1/if_race (irregular layout -> verbatim)
	write_function(f"{path}/survival/trackmania_stadium_1/if_race", """
scoreboard players set #total_laps switch.data 2
scoreboard players set #total_checkpoints switch.data 6

summon marker 25106 101 24998 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:2}}
summon marker 25025 106 24942 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:2, dy:5, dz:6}}
summon marker 24970 102 24968 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:6, dy:5, dz:2}}
summon marker 24998 112 25044 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:6, dy:5, dz:2}}
summon marker 25026 126 24980 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:6}}
summon marker 25057 115 24929 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:5, dx:6, dy:5, dz:2}}
summon marker 25045 115 25008 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:6, dy:5, dz:2}}

forceload add 25106 24998
forceload add 25025 24942
forceload add 24970 24968
forceload add 24998 25044
forceload add 25026 24980
forceload add 25057 24929
forceload add 25052 25038

summon marker 25102 101 25031 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker 24972 102 25043 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 24968 102 25042 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 25066 115 25027 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 25071 115 25027 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 25071 115 25031 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 25066 115 25031 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 25047 115 25011 {Tags:["switch.effect_block","switch.tm_blocks.no_grip"]}
summon marker 25043 115 25011 {Tags:["switch.effect_block","switch.tm_blocks.no_grip"]}

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
	write_function(f"{path}/survival/trackmania_stadium_2/if_race", """
scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 12
scoreboard players set #remaining_time switch.data 600

summon marker 37106 101 36998 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:2}}
summon marker 37106 114 36932 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:6, dy:5, dz:2}}
summon marker 37076 114 36945 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:3}}
summon marker 37059 114 36970 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:6, dy:5, dz:2}}
summon marker 37059 114 37024 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:6}}
summon marker 37022 137 37030 {Tags:["switch.checkpoint"]						,data:{cp:5, dx:2, dy:5, dz:5}}
summon marker 36960 122 37030 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:1, dy:5, dz:3}}
summon marker 36960 139 37046 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:7, dx:3, dy:5, dz:2}}
summon marker 36998 139 37053 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:8, dx:2, dy:5, dz:3}}
summon marker 36896 151 37015 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:9, dx:2, dy:5, dz:2}}
summon marker 36902 151 36983 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:10, dx:3, dy:5, dz:2}}
summon marker 37052 129 36963 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:11, dx:2, dy:5, dz:3}}
summon marker 37077 100 37056 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:12, dx:2, dy:5, dz:3}}
summon marker 37034 111 36956 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:3, dy:5, dz:1}}

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

summon marker 37104 101 36995 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 37108 101 36995 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 37104 114 36932 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker 37108 114 36932 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker 37059 114 36939 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 37059 114 36942 {Tags:["switch.effect_block","switch.tm_blocks.no_steering"]}
summon marker 37061 114 36974 {Tags:["switch.effect_block","switch.tm_blocks.engine_off"]}
summon marker 37057 114 36974 {Tags:["switch.effect_block","switch.tm_blocks.engine_off"]}
summon marker 37085 127 37024 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 37001 131 37030 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker 36957 122 37030 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 36998 139 37053 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 36907 151 36963 {Tags:["switch.effect_block","switch.tm_blocks.engine_off"]}
summon marker 37086 101 36963 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 37074 101 37056 {Tags:["switch.effect_block","switch.tm_blocks.no_grip"]}
summon marker 37034 101 37057 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}

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
	write_function(f"{path}/survival/shoot_da_sheep/tp_shoot_da_sheep", """
execute if score #count switch.data matches 0 in switch:game run tp @s 123037 114 123020 90 0
execute if score #count switch.data matches 1 in switch:game run tp @s 123003 114 123020 -90 0
execute if score #count switch.data matches 2 in switch:game run tp @s 123020 114 123037 180 0
execute if score #count switch.data matches 3 in switch:game run tp @s 123020 114 123003 0 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #4 switch.data
""")

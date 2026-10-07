# Imports
from stewbeet import Mem, write_function


def write_map_specifics() -> None:
	""" Write the race and teleport functions of the maps whose layout is too irregular for the RACE_CHECKPOINTS and TP_CYCLES tables. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:maps"

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


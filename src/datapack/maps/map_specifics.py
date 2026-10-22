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
summon marker -7928 159 -5907 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:14, dy:4, dz:4}}}}

# Checkpoints
summon marker -7934 135 -5939 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:1, dx:5, dy:4, dz:2}}}}
summon marker -7954 121 -5947 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:2, dx:5, dy:4, dz:2}}}}

# Finish line
summon marker -7963 113 -5980 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:4, dy:4, dz:4}}}}

forceload add -7928 -5907
forceload add -7934 -5939
forceload add -7954 -5947
forceload add -7963 -5980
""")

	# /survival/trackmania_stadium_1/if_race (irregular layout -> verbatim)
	write_function(f"{path}/survival/trackmania_stadium_1/if_race", f"""
scoreboard players set #total_laps {ns}.data 2
scoreboard players set #total_checkpoints {ns}.data 6

summon marker -3894 101 -6002 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:6, dy:5, dz:2}}}}
summon marker -3975 106 -6058 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:1, dx:2, dy:5, dz:6}}}}
summon marker -4030 102 -6032 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:2, dx:6, dy:5, dz:2}}}}
summon marker -4002 112 -5956 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:3, dx:6, dy:5, dz:2}}}}
summon marker -3974 126 -6020 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:4, dx:2, dy:5, dz:6}}}}
summon marker -3943 115 -6071 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:5, dx:6, dy:5, dz:2}}}}
summon marker -3955 115 -5992 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:6, dx:6, dy:5, dz:2}}}}

forceload add -3894 -6002
forceload add -3975 -6058
forceload add -4030 -6032
forceload add -4002 -5956
forceload add -3974 -6020
forceload add -3943 -6071
forceload add -3948 -5962

summon marker -3898 101 -5969 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reset"]}}
summon marker -4028 102 -5957 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.cruise_control"]}}
summon marker -4032 102 -5958 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.cruise_control"]}}
summon marker -3934 115 -5973 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker -3929 115 -5973 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker -3929 115 -5969 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker -3934 115 -5969 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker -3953 115 -5989 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.no_grip"]}}
summon marker -3957 115 -5989 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.no_grip"]}}

forceload add -3898 -5969
forceload add -4028 -5957
forceload add -4032 -5958
forceload add -3934 -5973
forceload add -3929 -5973
forceload add -3929 -5969
forceload add -3934 -5969
forceload add -3953 -5989
forceload add -3957 -5989
""")

	# /survival/trackmania_stadium_2/if_race (irregular layout -> verbatim)
	write_function(f"{path}/survival/trackmania_stadium_2/if_race", f"""
scoreboard players set #total_laps {ns}.data 1
scoreboard players set #total_checkpoints {ns}.data 12
scoreboard players set #remaining_time {ns}.data 600

summon marker 4106 101 5998 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:6, dy:5, dz:2}}}}
summon marker 4106 114 5932 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:1, dx:6, dy:5, dz:2}}}}
summon marker 4076 114 5945 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:2, dx:2, dy:5, dz:3}}}}
summon marker 4059 114 5970 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:3, dx:6, dy:5, dz:2}}}}
summon marker 4059 114 6024 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:4, dx:2, dy:5, dz:6}}}}
summon marker 4022 137 6030 {{Tags:["{ns}.checkpoint"]						,data:{{cp:5, dx:2, dy:5, dz:5}}}}
summon marker 3960 122 6030 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:6, dx:1, dy:5, dz:3}}}}
summon marker 3960 139 6046 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:7, dx:3, dy:5, dz:2}}}}
summon marker 3998 139 6053 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:8, dx:2, dy:5, dz:3}}}}
summon marker 3896 151 6015 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:9, dx:2, dy:5, dz:2}}}}
summon marker 3902 151 5983 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:10, dx:3, dy:5, dz:2}}}}
summon marker 4052 129 5963 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:11, dx:2, dy:5, dz:3}}}}
summon marker 4077 100 6056 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:12, dx:2, dy:5, dz:3}}}}
summon marker 4034 111 5956 {{Tags:["{ns}.checkpoint","{ns}.can_hard_reset"],data:{{cp:0, dx:3, dy:5, dz:1}}}}

forceload add 4106 5998
forceload add 4106 5932
forceload add 4076 5945
forceload add 4059 5970
forceload add 4059 6024
forceload add 4022 6030
forceload add 3960 6030
forceload add 3960 6046
forceload add 3998 6053
forceload add 3896 6015
forceload add 3902 5983
forceload add 4052 5963
forceload add 4077 6056
forceload add 4034 5956

summon marker 4104 101 5995 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 4108 101 5995 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 4104 114 5932 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reset"]}}
summon marker 4108 114 5932 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reset"]}}
summon marker 4059 114 5939 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.cruise_control"]}}
summon marker 4059 114 5942 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.no_steering"]}}
summon marker 4061 114 5974 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.engine_off"]}}
summon marker 4057 114 5974 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.engine_off"]}}
summon marker 4085 127 6024 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 4001 131 6030 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reset"]}}
summon marker 3957 122 6030 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.cruise_control"]}}
summon marker 3998 139 6053 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 3907 151 5963 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.engine_off"]}}
summon marker 4086 101 5963 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}
summon marker 4074 101 6056 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.no_grip"]}}
summon marker 4034 101 6057 {{Tags:["{ns}.effect_block","{ns}.tm_blocks.reactor_boost"]}}

forceload add 4104 5995
forceload add 4108 5995
forceload add 4104 5932
forceload add 4108 5932
forceload add 4059 5939
forceload add 4059 5942
forceload add 4061 5974
forceload add 4057 5974
forceload add 4085 6030
forceload add 4001 6030
forceload add 3957 6030
forceload add 3998 6053
forceload add 3907 5963
forceload add 4086 5963
forceload add 4074 6056
forceload add 4034 6057
""")

	# /survival/shoot_da_sheep/tp_shoot_da_sheep (verbatim)
	write_function(f"{path}/survival/shoot_da_sheep/tp_shoot_da_sheep", f"""
execute if score #count {ns}.data matches 0 in {ns}:game run tp @s 10037 114 6020 90 0
execute if score #count {ns}.data matches 1 in {ns}:game run tp @s 10003 114 6020 -90 0
execute if score #count {ns}.data matches 2 in {ns}:game run tp @s 10020 114 6037 180 0
execute if score #count {ns}.data matches 3 in {ns}:game run tp @s 10020 114 6003 0 0

scoreboard players add #count {ns}.data 1
scoreboard players operation #count {ns}.data %= #4 {ns}.data
""")

